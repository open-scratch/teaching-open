package org.jeecg.modules.teaching.controller;

import io.swagger.annotations.Api;
import org.jeecg.common.api.vo.Result;
import org.jeecg.modules.teaching.entity.TeachingStudent;
import org.jeecg.modules.teaching.service.ITeachingStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@Api(tags="学生信息")
@RestController
@RequestMapping("/student")
public class StudentController {
    @Autowired
    ITeachingStudentService studentService;

    @GetMapping("info")
    public Result<TeachingStudent> getStudentInfo(HttpSession session){
        String studentId = session.getAttribute("studentId")==null?null:(String)session.getAttribute("studentId");
        TeachingStudent student = studentService.getById(studentId);
        Result result = new Result<TeachingStudent>();
        result.setResult(student);
        return result;
    }

    @GetMapping("testLogin")
    public Result testLogin(@RequestParam(required = false) String openId, @RequestParam String studentId, HttpSession session){
        session.setAttribute("openId", openId);
        session.setAttribute("studentId", studentId);
        return new Result();
    }

}
