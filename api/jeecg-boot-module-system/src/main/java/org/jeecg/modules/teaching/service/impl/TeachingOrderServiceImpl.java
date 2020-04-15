package org.jeecg.modules.teaching.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.util.MD5Util;
import org.jeecg.common.util.RedisUtil;
import org.jeecg.common.util.UUIDGenerator;
import org.jeecg.modules.teaching.entity.TeachingActivity;
import org.jeecg.modules.teaching.entity.TeachingOrder;
import org.jeecg.modules.teaching.entity.TeachingStudent;
import org.jeecg.modules.teaching.mapper.TeachingOrderMapper;
import org.jeecg.modules.teaching.service.ITeachingActivityService;
import org.jeecg.modules.teaching.service.ITeachingOrderService;
import org.jeecg.modules.teaching.service.ITeachingStudentService;
import org.jeecg.modules.wechat.entity.WechatUser;
import org.jeecg.modules.wechat.mapper.WechatUserMapper;
import org.jeecg.modules.wechat.service.IWechatUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import weixin.popular.bean.paymch.MchPayNotify;
import weixin.popular.util.XMLConverUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @Description: 订单表
 * @Author: jeecg-boot
 * @Date:   2020-03-08
 * @Version: V1.0
 */
@Slf4j
@Service
public class TeachingOrderServiceImpl extends ServiceImpl<TeachingOrderMapper, TeachingOrder> implements ITeachingOrderService {

    @Autowired
    ITeachingStudentService studentService;

    @Autowired
    IWechatUserService wechatUserService;

    @Autowired
    RedisUtil redisUtil;

    @Autowired
    ITeachingActivityService teachingActivityService;

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @Override
    public TeachingOrder getByNo(String orderNo) {
        return this.baseMapper.selectOne(new QueryWrapper<TeachingOrder>().lambda().eq(TeachingOrder::getOrderNo, orderNo).last(" limit 1"));
    }

    @Override
    public Result createOrder(HttpServletRequest request, String actionId, String phone, Integer grade) {
        Result result = new Result();
        HttpSession session = request.getSession();
        session.setAttribute("openId", "oJgzvv7Q58w_l7KSLSFz8xIlv_cM");
        String openId = session.getAttribute("openId")==null?null:(String)session.getAttribute("openId");
        String studentId = session.getAttribute("studentId")==null?null:(String) session.getAttribute("studentId");

        if (openId == null){
            result.setSuccess(false);
            result.setMessage("未取得微信授权");
            return result;
        }

        //查询活动信息
        TeachingActivity activity = teachingActivityService.getById(actionId);
        if (activity == null){
            result.setSuccess(false);
            result.setMessage("活动不存在");
            return result;
        }

        //TODO 判断开始结束时间
        //TODO 判断报名人数

        //注册或登录学生
        if (studentId == null){
            WechatUser wechatUser = wechatUserService.getByOpenId(openId);
            if (wechatUser !=null && wechatUser.getUserId() != null) {
                studentId = wechatUser.getUserId();
            }else{
                //创建一个学生
                TeachingStudent  student = new TeachingStudent();
                student.setPhone(phone);
                student.setGrade(grade);
                student.setPassword(MD5Util.MD5Encode(phone, "utf-8"));
                if (studentService.save(student)){
                    studentId = student.getId();
                    session.setAttribute("studentId", studentId);
                    //微信用户关联
                    wechatUser = new WechatUser();
                    wechatUser.setUserId(studentId);
                    wechatUserService.getBaseMapper().update(wechatUser, new UpdateWrapper<WechatUser>().lambda().eq(WechatUser::getOpenId, openId).isNull(WechatUser::getUserId));
                    log.info("创建学生：{}", student);
                }else{
                    log.info("创建学生失败：{}", student);
                    result.setSuccess(false);
                    result.setMessage("学生注册失败");
                    return result;
                }
            }
        }

        //是否有未支付的订单
//        TeachingOrder order = this.getOne(new QueryWrapper<TeachingOrder>().lambda()
//                .eq(TeachingOrder::getActionId, actionId)
//                .eq(TeachingOrder::getUserId, studentId)
//                .eq(TeachingOrder::getStatus, 0)
//                .last("AND date_add(create_time,interval '30:00' minute_second) > now()")
//                .last("limit 1"));

        //查询老订单
        TeachingOrder order = this.getOne(new QueryWrapper<TeachingOrder>().lambda()
                .eq(TeachingOrder::getActionId, actionId)
                .eq(TeachingOrder::getUserId, studentId)
                .last("limit 1"));

        if (order != null && order.getStatus() == 1){
            result.setSuccess(false);
            result.setMessage("请勿重复购买");
            return result;
        }
        //创建订单
        if (order == null){
            order = new TeachingOrder();
            order.setActionId(actionId);
            order.setOrderNo(UUIDGenerator.generate());
            order.setMethod(1);
            order.setPrice(activity.getPrice());
            order.setStatus(0);
            order.setUserId(studentId);
            this.baseMapper.insert(order);
        }
        result.setResult(order);
        return result;
    }

    @Override
    public void processWechatPayJob() {
        long size = redisTemplate.opsForList().size("wechatPayNotify");
        if (size == 0){
            return;
        }
        for (int i=0; i<size; i++){
            String xmlData = (String) redisTemplate.opsForList().leftPop("wechatPayNotify");
            try{
                //转换数据对象
                TeachingOrder order = new TeachingOrder();
                MchPayNotify payNotify = XMLConverUtil.convertToObject(MchPayNotify.class, xmlData);
                if ("SUCCESS".equals(payNotify.getReturn_code())){
                    Integer payMethod;
                    switch (payNotify.getTrade_type()){
                        case "JSAPI": payMethod = 1; break;
                        case "NATIVE": payMethod = 2; break;
                        case "APP": payMethod = 3; break;
                        default: payMethod = 0;
                    }
                    order.setMethod(payMethod);
                    order.setPayPrice(payNotify.getTotal_fee());
                    order.setStatus(1);
                }else{
                    order.setStatus(-1);
                    order.setComment(payNotify.getReturn_msg());
                }
                this.update(order, new UpdateWrapper<TeachingOrder>().lambda().eq(TeachingOrder::getOrderNo, payNotify.getOut_trade_no()));
                log.info("订单{}处理成功", payNotify.getOut_trade_no());
            }catch (Exception e){
                log.error("订单处理失败:{}", e.getMessage());
                //处理失败重新放入redis
                redisTemplate.opsForList().rightPush("wechatPayNotify", xmlData);
            }
        }
    }
}
