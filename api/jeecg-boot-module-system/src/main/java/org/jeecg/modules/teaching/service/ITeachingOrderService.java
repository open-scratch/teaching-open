package org.jeecg.modules.teaching.service;

import org.jeecg.common.api.vo.Result;
import org.jeecg.modules.teaching.entity.TeachingOrder;
import com.baomidou.mybatisplus.extension.service.IService;

import javax.servlet.http.HttpServletRequest;

/**
 * @Description: 订单表
 * @Author: jeecg-boot
 * @Date:   2020-03-08
 * @Version: V1.0
 */
public interface ITeachingOrderService extends IService<TeachingOrder> {

    TeachingOrder getByNo(String orderNo);

    Result createOrder(HttpServletRequest request, String actionId, String phone, Integer grade);

    void processWechatPayJob();

}
