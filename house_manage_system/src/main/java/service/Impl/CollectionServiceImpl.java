package service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CollectionDao;
import model.Cllection;
import model.House;
import service.CollectionService;
@Service
public class CollectionServiceImpl implements CollectionService {
	@Autowired
	CollectionDao dao;
	public List<House> select(int userid) {
		return dao.select(userid);
	}
	
	public Cllection selectByHidAndUid(int userid,int houseid){
		return dao.selectByHidAndUid(userid, houseid);
	}

	public void insert(int houseid, int userid) {
		dao.insert(houseid, userid);
	}

	public void delete(int houseid, int userid) {
		dao.delete(houseid, userid);
	}

	public void deleteByPoster(int houseid) {
		dao.deleteByPoster(houseid);
	}

}
