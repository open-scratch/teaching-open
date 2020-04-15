package org.jeecg.modules.teaching.controller;

import io.swagger.annotations.Api;
import org.jeecg.common.api.vo.Result;
import org.jeecg.modules.teaching.service.ITeachingOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@Api(tags="学生订单")
@RestController
@RequestMapping("/student/order")
public class StudentOrderController {

    @Autowired
    private ITeachingOrderService teachingOrderService;

    @RequestMapping("/createOrder")
    public Result<?> createOrder(HttpServletRequest req, @RequestParam String actionId, @RequestParam String phone,
                                 @RequestParam(required = false) Integer grade){
        return teachingOrderService.createOrder(req, actionId, phone, grade);
    }
}
