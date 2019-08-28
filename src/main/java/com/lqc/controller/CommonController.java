package com.lqc.controller;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	/**
	 * @param request ServletPath
	 * @return ServletPath
	 */
	@RequestMapping("/*")
	public String doForward(HttpServletRequest request){
		String servletPath = request.getServletPath();
		String url = servletPath.replace(".html", "");
		return url;
	}
}
