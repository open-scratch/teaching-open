package org.jeecg.modules.wechat.job;

import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.util.RedisUtil;
import org.jeecg.modules.teaching.service.ITeachingOrderService;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import weixin.popular.bean.paymch.MchPayNotify;
import weixin.popular.util.XMLConverUtil;

@Slf4j
public class ProcessWechatPayJob implements Job {
    @Autowired
    RedisUtil redisUtil;

    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @Autowired
    private ITeachingOrderService teachingOrderService;

    /**
     * 处理微信订单任务
     * @param jobExecutionContext
     * @throws JobExecutionException
     */
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        teachingOrderService.processWechatPayJob();
    }
}
