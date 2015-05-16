package com.aartek.prestigepoint.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.aartek.prestigepoint.model.AdminLogin;

@Component
public class LoggingInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		AdminLogin login = (AdminLogin) request.getSession().getAttribute("login");
		if (login == null) {
			response.sendRedirect("login.do");
			return true;
		}
		System.out.println("preHandle :: Request inside preHandle");

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		System.out.println("postHandle :: Request inside postHandle");

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

		System.out.println("afterCompletion :: Request inside afterCompletion");

	}
}