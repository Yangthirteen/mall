package com.lqc.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.lqc.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lqc.entity.Admin;
import com.lqc.service.AdminService;

import com.lqc.utils.TelUtils;

import java.util.List;
import java.util.Map;

@Controller
public class AdminController {
	@Resource
	AdminService  adminService = null;
	@Resource
	ProductService productService =null;
	 /**
	 		* Description: 获取手机验证码
	 		* @param tel 手机号
	 		* @param session 存验证码
	 	*/
	@RequestMapping("getTelCode")
	public void getTelCode(String tel,HttpSession session){
		String code = TelUtils.getRgeCode(tel);
		session.setAttribute("code", code);
		
	}
	 /**
	 		* Description: 添加管理员用户
	 	*/
	@RequestMapping("addAdmin")
	public String addAdmin(Admin admin,HttpSession session){
		System.out.println(admin);
		String ucode = (String) session.getAttribute("code");
		if(ucode.equals(admin.getCode())){
			adminService.addAdmin(admin);
		}
		return "adminLogin";
	}
	 /**
	 		* Description: 管理员登入
	 	*/
	@PostMapping("ToAdminLogin")
	public String getAdmin(@RequestParam("amobile") String amobile, @RequestParam("apwd") String apwd, HttpSession session, HttpServletRequest request, Model model){
		String adminLoginMsg = null;
		Admin admin = new Admin();
		admin.setAmobile(amobile);
		admin.setApwd(apwd);
		if(adminService.getAdmin(admin)==null){
			adminLoginMsg = "admin账户名或密码错误，请重试！";
			request.setAttribute("adminLoginMsg",adminLoginMsg);
			return "adminLogin";
		}
		else{
			session.setAttribute("admin",admin);
			List<Map<String, Object>> orderDetail = productService.getOrderDetail();
			model.addAttribute("orderDetail", orderDetail);
			return "orderManager";
		}
	}

	/**
	 * description：转到管理员登录界面
	 */
	@RequestMapping("adminSignOn")
	public String adminSignOn(HttpSession session ,Model model){
		if(session.getAttribute("admin")==null){
			return "adminLogin";
		}
		else{
			List<Map<String, Object>> orderDetail = productService.getOrderDetail();
			model.addAttribute("orderDetail", orderDetail);
			return "orderManager";
		}
	}

	 /**
	 		* Description: 管理员退出
	 	*/
	@RequestMapping("adminOut")
	@ResponseBody
	public String adminLogOut(HttpSession session){
		session.removeAttribute("admin");
		/*session.invalidate();*/
		return "ok";
	}
}
