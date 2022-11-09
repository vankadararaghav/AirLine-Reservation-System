package tech.codingclub.helix.controller;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ApplicationInterceptor implements HandlerInterceptor {

    private static final Logger logger = Logger.getLogger(ApplicationInterceptor.class);

    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object handler) throws Exception {
        if (httpServletRequest.getRequestURI().startsWith("/admin")) {
            Boolean isAdmin = ControllerUtils.isUserAdmin(httpServletRequest);
            if (isAdmin != null && isAdmin) {
                return true;
            } else if (!httpServletRequest.getRequestURI().startsWith("/admin/login")) {
                httpServletResponse.sendRedirect("/signin");
                return false;
            }
        }

        if(httpServletRequest.getRequestURI().startsWith("/user"))
        {
            Long isuserLogined = ControllerUtils.getUserId(httpServletRequest);
            if(isuserLogined!=null)
            {
                return true;
            }
            else {
                if(httpServletRequest.getMethod().equals("GET"))
                httpServletResponse.sendRedirect("/signin");
                else
                    httpServletResponse.sendError(401);
                return false;
            }
        }

        return true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object handler, ModelAndView modelAndView)
            throws Exception {
    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object handler, Exception exception)
            throws Exception {
    }
}