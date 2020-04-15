package org.jeecg.modules.wechat.job;

import lombok.extern.slf4j.Slf4j;
import org.jeecg.modules.wechat.service.WechatAccessTokenService;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;

@Slf4j
public class GetAccessTokenJob implements Job {

    @Autowired
    WechatAccessTokenService wechatAccessTokenService;

    /**
     * 定时获取access_token
     * @param jobExecutionContext
     * @throws JobExecutionException
     */
    @Override
    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        String token = wechatAccessTokenService.getAccessToken();
    }
}
