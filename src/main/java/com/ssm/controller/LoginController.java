package com.ssm.controller;

import com.ssm.entity.WorkersSalary;
import com.ssm.service.WorkersSalaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * Created by Lenovo on 2020-12-3.
 */
@Controller
public class LoginController {
    @Autowired
    private WorkersSalaryService workersSalaryServiceImpl;

    @RequestMapping("check.do")
    public String check(String username, String password, Model model, Map<String, Object> map, HttpServletRequest request) {
        List<WorkersSalary> workersSalary = workersSalaryServiceImpl.login(username, password);
        if (!workersSalary.isEmpty()) {
            HttpSession session = request.getSession();
            String employeeName = workersSalary.get(0).getName();
            session.setAttribute("username", username);
            session.setAttribute("employeeName", employeeName);
            session.setAttribute("pwd", password);
            return "redirect:/Worker/welcome.do";
        } else {
            map.put("error", "用户名或密码错误");
            model.addAttribute("error", "用户名或密码错误");
            return "../../login";
        }
    }
    @GetMapping(value = "/",produces = "text/plain;charset=UTF-8")
    public String loginPage(){
        return "../../login";
    }
}