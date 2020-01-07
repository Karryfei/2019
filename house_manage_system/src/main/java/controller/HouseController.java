package controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import model.House;
import model.User;
import service.CollectionService;
import service.HouseService;

@Controller
@RequestMapping("house")
public class HouseController {
	@Autowired
	HouseService service;
	@Autowired
	CollectionService coolectionService;

	// 查询房子信息
	@RequestMapping("index")
	public @ResponseBody List<House> select(House hs, Integer page, Integer limit) {
		String txt = null;
		if (!(hs.getType() == null)) {
			txt = " where hms_house.type = " + hs.getType();
			System.out.println(txt);
		}
		return service.select(txt, page, limit);
	}

	// 根据搜索条件查找房子信息
	@RequestMapping("find")
	public String findHouse(String find, ModelMap m, String[] condition) {
		String txt = null;
		if (!(find == null)) {
			txt = " where topic like '%" + find + "%'";
		} else {
			txt = null;
		}
		if (condition != null && condition.length != 0) {
			if (condition.length == 1) {
				txt = "where " + condition[0];
			} else {
				txt = "where " + condition[0];
				for (int i = condition.length - 1; i >= 1; i--) {
					txt = txt + " and " + condition[i];
				}
			}
		}
		System.out.println(txt);

		m.addAttribute("findSize", service.findHouse(txt).size());
		m.addAttribute("findInfo", service.findHouse(txt));
		return "findHouseInfo";
	}

	// 查询房子条数
	@RequestMapping("count")
	public @ResponseBody int selectHouseCount(House hs) {
		String txt = null;
		if (!(hs.getType() == null)) {
			txt = " where hms_house.type = " + hs.getType();
		}
		return service.selectHouseCount(txt);
	}

    //发布新房屋
	@RequestMapping("post")
	public String post(@RequestParam("file") CommonsMultipartFile file, House h, HttpSession s)
			throws IOException {
		String fileName = file.getOriginalFilename();
		System.out.println(fileName);
		String path = "C:\\Users\\dell\\Desktop\\ttemp\\house_manage_system\\src\\main\\webapp\\images\\"
				+ fileName;
		File newFile = new File(path);
		// 通过CommonsMultipartFile的方法直接写文件（注意这个时候）
		file.transferTo(newFile);

		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
		h.setCreattime(df.format(new Date()));// new Date()为获取当前系统时间

		h.setImg(fileName);
		User user = (User) s.getAttribute("user");
		h.setUserid(user.getId());
		h.setTel(user.getTel());
		h.setName(user.getName());
		h.setEmail(user.getEmail());

		String ting = (h.getLayout().equals("0") ? "" : h.getLayout() + "厅");
		h.setLayout(h.getShape() + "室" + ting);
		System.out.println(h.getLayout());

		h.setPrice(h.getPrice() * 10000);
		h.setUnitPrice((int) (h.getPrice() / h.getArea()));

		System.out.println(h.getImg() + "--" + h.getName() + "--" + h.getTopic() + "--" + h.getArea());
		service.insert(h);
		return "redirect:/login_success.jsp";

	}

	// 查看房子详情
	@RequestMapping("detail")
	public String detail(int id, ModelMap m) {
		m.put("house", service.selectById(id));
		return "housedetail";
	}

	// 删除
	@RequestMapping("delete")
	public String delete(int houseid, HttpSession session, ModelMap m) {
		int userid = ((User) session.getAttribute("user")).getId();
		service.delete(houseid, userid);
		coolectionService.deleteByPoster(houseid);
		m.put("house", service.selectByUserid(userid));
		return "postHouseInfo";
	}

	//
	@RequestMapping("selectByUserid")
	public String selectByUserid(HttpSession session, ModelMap m) {
		int id = ((User) session.getAttribute("user")).getId();
		m.put("house", service.selectByUserid(id));
		m.put("houseSize", service.selectByUserid(id).size());
		return "postHouseInfo";
	}
	
	@RequestMapping("selectAll")
	public String selectAllHouse(HttpSession session, ModelMap m) {
		m.put("house", service.select(null, null, null));
		m.put("houseSize", service.select(null, null, null).size());
		return "manage_post";
	}
	
	@RequestMapping("selectByUser")
	public String selectByUser(int id, HttpSession session, ModelMap m) {
		m.put("house", service.selectByUserid(id));
		m.put("houseSize", service.selectByUserid(id).size());
		return "manage_post";
	}

}
