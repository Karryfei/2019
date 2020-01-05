package service.Impl;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;
import model.User;
import service.UserService;
//import utils.ReturnInfo;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserDao dao;

	// 查询一个
	public User selectById(Integer id) {
		return dao.selectById(id);
	}
	
	public User selectBTel(String tel) {
		return dao.selectByTel(tel);
	}
	
	// 新增
	public void insert(User u) {
		dao.insert(u);
	}


	public User login(User u) {
		return dao.login(u);
	}

}
