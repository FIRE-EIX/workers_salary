package com.ssm.inter;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.http.HttpResponse;

public class MyInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        if (username == null) {
            response.sendError(401,"You haven't logged in, you don't have access!");
            return false;
        } else {
            return true;
        }

    }

    public void preHandle(HttpServletRequest request, HttpResponse response,Object handler,ModelAndView modelAndView) throws Exception{

    }
    /*public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler)
            throws Exception {
        return false;*/
        /*HttpSession session=request.getSession();
        String username= (String) session.getAttribute("username");
        if (username==null)
        { request.getRequestDispatcher("/login.jsp").forward(request,response);
            return  false;}
        else
        {return true;}*/

    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {

    }
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler,
                                Exception ex) throws Exception {
    }
}
