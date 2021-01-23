package com.ssm.controller;

import com.ssm.entity.WorkersSalary;
import com.ssm.service.WorkersSalaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/Worker")
public class WorkersSalaryController {

    @Autowired
    private WorkersSalaryService workersSalaryServiceImpl;

    /*
     * 欢迎页
     * */
    @RequestMapping("welcome.do")
    public String welcome(Model model) {
        return "../../index";
    }

    @RequestMapping("toUpdatePassword.do")
    public String toUpdatePassword(Model model) {
        return "updatePassword";
    }

    /*
     * 显示所有
     * */
    @RequestMapping("login.do")
    public String login(Model model) {
        return "../../login";
    }

    /*
     * 显示所有（不分页）
     * */
    @RequestMapping("list.do")
    public String list(Model model) {
        List<WorkersSalary> list = workersSalaryServiceImpl.list();
        model.addAttribute("workers", list);
        return "listWorkers";
    }

    @GetMapping("add")
    public String add() {
        return "addWorkers";
    }

    //添加
    @RequestMapping(value = "add.do", method = RequestMethod.POST)
    public String add(@Validated WorkersSalary workersSalary, BindingResult bindingResult, Model model) throws IOException {
        if (bindingResult.hasErrors()) {
            List<ObjectError> errors = bindingResult.getAllErrors();
            for (ObjectError objectError : errors) {
                System.out.println(objectError);
            }
            return "addWorkers";

        } else {
            workersSalaryServiceImpl.insert(workersSalary);
            return "redirect:/Worker/list.do";
        }
    }

    //删除
    @RequestMapping("/delete.do")
    public String delete(String number, int month) {
        workersSalaryServiceImpl.delete(number, month);
        return "redirect:list.do";
    }

    //修改
    @RequestMapping("toUpdate.do")
    public String toUpdate(String number, int month, Model model) {
        WorkersSalary workersSalary = workersSalaryServiceImpl.find(number, month);
        model.addAttribute("workersSalary", workersSalary);
        return "updateWorkersSalary";
    }

    //修改密码
    @RequestMapping("updatePassword.do")
    public String updatePassword(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = null;
        String number = session.getAttribute("username").toString();
        String oPwd = request.getParameter("oldPwd");
        String nPwd = request.getParameter("newPwd");
        int cal = workersSalaryServiceImpl.updatePassword(number, nPwd);
        if (cal != 0) {
            response.setCharacterEncoding("GBK");
            out = response.getWriter();
            out.println("<script language='javascript'>alert('修改成功！');window.location.href='/workers_salary/index.jsp';</script>");
        } else {
            out.println("<script language='javascript'>alert('修改失败！');window.location.href='/workers_salary/index.jsp';</script>");
        }
        return "redirect:welcome.do";
    }

    @RequestMapping(value = "update.do")
    public String update(WorkersSalary workersSalary) {
        workersSalaryServiceImpl.update(workersSalary);
        return "redirect:list.do";
    }

    @RequestMapping(value = "logout.do")
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "../../login";
    }

    @RequestMapping(value = "myinf.do")
    public String myinf(Model model, HttpSession session) {
        List<WorkersSalary> workersSalaries = null;
        String employeeName = session.getAttribute("employeeName").toString();
        employeeName = "%" + employeeName + "%";
        workersSalaries = workersSalaryServiceImpl.findByName(employeeName);
        model.addAttribute("workers", workersSalaries);
        return "myinfo";
    }

    @RequestMapping(value = "find.do")
    public String find(Model model, @RequestParam("searchValue") String searchValue, @RequestParam("searchCol") String searchCol) {
        List<WorkersSalary> workersSalaries = null;
        if ("number".equals(searchCol)) {
            searchValue = "%" + searchValue + "%";
            workersSalaries = workersSalaryServiceImpl.search(searchValue);
        } else if ("name".equals(searchCol)) {
            searchValue = "%" + searchValue + "%";
            workersSalaries = workersSalaryServiceImpl.findByName(searchValue);
        } else {
            workersSalaries = workersSalaryServiceImpl.findByMonth(Integer.parseInt(searchValue));
        }
        model.addAttribute("workers", workersSalaries);
        return "listWorkers";
    }

    @RequestMapping(value = "findPersonal.do")
    public String findPersonal(Model model, @RequestParam("searchValue") String searchValue, @RequestParam("searchCol") String searchCol, HttpSession session) {
        List<WorkersSalary> workersSalaries = null;
        String name = session.getAttribute("employeeName").toString();
        if ("number".equals(searchCol)) {
            searchValue = "%" + searchValue + "%";
            workersSalaries = workersSalaryServiceImpl.search(searchValue);
        } else if ("name".equals(searchCol)) {
            searchValue = "%" + searchValue + "%";
            workersSalaries = workersSalaryServiceImpl.findByName(searchValue);
        } else {
            workersSalaries = workersSalaryServiceImpl.findByHisMonth(name, Integer.parseInt(searchValue));
        }
        model.addAttribute("workers", workersSalaries);
        return "myinfo";
    }
}
