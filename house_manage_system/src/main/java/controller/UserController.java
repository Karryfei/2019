package controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.User;
import service.UserService;
import utils.ImageVerificationCode;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	UserService service;

	// 用户登录
	@RequestMapping("login")
	public String login(User u, HttpSession s, String code) {
		System.out.println("--" + u.getPassword() + "--" + u.getTel());
		String num = s.getAttribute("number").toString();
		System.out.println(num);
		User user = service.login(u);
		System.out.println(num + "--" + u.getPassword() + "--" + u.getTel());
		if (num.equalsIgnoreCase(code) && user != null) {
			s.setAttribute("user", user);
			s.setMaxInactiveInterval(100000);
			return "redirect:/login_success.jsp";
		} else {
			return "redirect:/login.html";
		}
	}

	// 用户注册
	@RequestMapping("register")
	public String register(User u) {
		System.out.println(u.getName() + "--" + u.getPassword() + "--" + u.getSex() + "--" + u.getTel() + "--"
				+ u.getEmail() + "--");
		User user=service.selectBTel(u.getTel());
		if(user==null){
			System.out.println("用户不存在");
			service.insert(u);
			return "redirect:/login.html";
		}else{
			return "redirect:/login_fail.jsp";
		}
	}

	// 退出登陆
	@RequestMapping("outlogin")
	public String login(HttpSession s) {
		User u = (User)s.getAttribute("user");
		String ret = "redirect:/new_index.jsp";
		if (u != null && u.getId() == 1) {
			ret = "redirect:/admin_login.html";
		}
		s.removeAttribute("user");
		return ret;
	}


	// 插入
	@RequestMapping("insert")
	public String insert(User u) {
		service.insert(u);
		return "redirect:/login.html";
	}

	// 根据id查询
	@RequestMapping("edit")
	public @ResponseBody User edit(Integer id) {
		return service.selectById(id);
	}

	// 获取性别
	@RequestMapping("getsexs")
	public @ResponseBody String[] getSexs() {
		return User.sexs;
	}

	// 获取验证码图片
	@RequestMapping("getVerifiCode")
	@ResponseBody
	public void getVerifiCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
		/*
		 * 1.生成验证码 2.把验证码上的文本存在session中 3.把验证码图片发送给客户端
		 */
		ImageVerificationCode ivc = new ImageVerificationCode(); // 用我们的验证码类，生成验证码类对象
		BufferedImage image = ivc.getImage(); // 获取验证码
		request.getSession().setAttribute("number", ivc.getText()); // 将验证码的文本存在session中
		ivc.output(image, response.getOutputStream());// 将验证码图片响应给客户端
	}
	
	@RequestMapping("admin")
	public String ad_login(User u, HttpSession s, ModelMap m) {
		System.out.println("--" + u.getPassword() + "--" + u.getTel());
		User user = service.login(u);
		if (user != null && user.getId() == 1) {
			s.setAttribute("user", user);
			s.setMaxInactiveInterval(100000);
			s.setAttribute("individuals", service.selectAll());
			return "redirect:/manage_user.jsp";
		} else {
			return "redirect:/admin_login.html";
		}
	}
	
	@RequestMapping("select")
	public String selectAllUser(HttpSession s) {
		System.out.println(service.selectAll().size());
		s.setAttribute("individuals", service.selectAll());
		return "redirect:/manage_user.jsp";
	}
	
	@RequestMapping("delete")
	public String deleteUserById(int id, HttpSession s) {
		service.deleteById(id);
		System.out.println(service.selectAll().size());
		s.setAttribute("individuals", service.selectAll());
		return "redirect:/manage_user.jsp";
	}
}
