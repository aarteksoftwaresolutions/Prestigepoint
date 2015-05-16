package com.aartek.prestigepoint.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class UserInterceptor implements HandlerInterceptor {

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object object,
			Exception exception) throws Exception {
		System.out.println("------------afterCompletion-----------");

	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object object,
			ModelAndView modelAndView) throws Exception {
		System.out.println("------------postHandle-----------");

	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object object) throws Exception {
		System.out.println("------------preHandle-----------");

		/*
		 * String uri = request.getRequestURI(); if (!uri.endsWith("login.do")
		 * && !uri.endsWith("logout.do")) {
		 * 
		 * AdminLogin login = (AdminLogin)
		 * request.getSession().getAttribute("login"); if (login == null) {
		 * response.sendRedirect("login.do"); return false; } }
		 */
		return true;

	}
}
