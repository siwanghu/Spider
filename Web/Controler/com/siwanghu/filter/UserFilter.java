package com.siwanghu.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siwanghu.bean.User;

public class UserFilter implements Filter{

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		User user=(User) ((HttpServletRequest)arg0).getSession().getAttribute("User");
		if(user==null){
			((HttpServletRequest)arg0).getSession().setAttribute("message", "服务器异常，请稍后再试!");
			((HttpServletResponse)arg1).sendRedirect("/Web/View/message.jsp");
			return;
		}
		arg2.doFilter(arg0, arg1);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
	}

}
