package com.lqc.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import com.lqc.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class CommonController {
	
	/**
	 * @param request ServletPath
	 * @return ServletPath
	 */
	@Resource
	private ProductService productService = null;

	@RequestMapping("/*")
	public String doForward(HttpServletRequest request, HttpSession session){
		String servletPath = request.getServletPath();
		String url = servletPath.replace(".html", "");

		//购物车图标右上角的数量显示
		int cartCountNumber = 0;
		@SuppressWarnings("unchecked")
		Map<String,Object> user=(Map<String, Object>) session.getAttribute("user");
		if(user!=null){
			cartCountNumber = productService.getProductCartCount((int)user.get("id"));
		}
		session.setAttribute("cartCountNumber", cartCountNumber);

		return url;
	}
}

