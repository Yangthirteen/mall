package com.lqc.controller;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lqc.entity.Message;
import com.lqc.service.ContactService;

@Controller
public class ContactController {
	@Resource
	private ContactService contactService = null;
	 /**
	 		* Description: 添加客户请求帮助信息
	 	*/
	@RequestMapping("addMessage")
	public String addMessage(Message message){
		System.out.println(message);
		contactService.addMessage(message);
		return "contact";
	}
	 /**
	 		* Description: 获取客户请求帮助信息
	 	*/
	@RequestMapping("indexManager")
	public String getMessage(Model model){
		List<Map<String, Object>> message = contactService.getMessage();
		System.out.println(message);
		model.addAttribute("message",message);
		return "indexManager";
	}
	
	 /**
	 		* Description: 处理Message 更改state
	 	*/
	@RequestMapping("/{id}/updateMessage")
	public String updateManager(@PathVariable int id){
		contactService.updateMessage(id);
		return "redirect:/indexManager.html";
	}
	 /**
	 		* Description: 删除message
	 	*/
	@RequestMapping("/{id}/deleteMessage")
	public String deleteManager(@PathVariable int id){
		contactService.deleteMessage(id);
		return "redirect:/productManager.html";
	}
}
