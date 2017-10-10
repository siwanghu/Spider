package com.siwanghu.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharactorFilter implements Filter{

	String encoding = null;
	@Override
	public void destroy() {
		encoding = null;
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		if(encoding != null){
			arg0.setCharacterEncoding(encoding);
			arg1.setContentType("text/html;charset="+encoding);
		}
		arg2.doFilter(arg0, arg1);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		encoding = arg0.getInitParameter("encoding");	
	}

}
