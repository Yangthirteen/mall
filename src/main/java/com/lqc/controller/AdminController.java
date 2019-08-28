package com.lqc.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lqc.entity.Admin;
import com.lqc.service.AdminService;

import com.lqc.utils.TelUtils;

@Controller
public class AdminController {
	@Resource
	AdminService  adminService = null;
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
	@RequestMapping("adminLoging")
	@ResponseBody
	public String getAdmin(Admin admin1,HttpSession session){
		System.out.println(admin1);
		Admin admin = adminService.getAdmin(admin1);
		if(admin!=null){
			session.setAttribute("admin", admin);
			return "yes";
		}
		return "no";
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
