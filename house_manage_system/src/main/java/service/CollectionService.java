package service;

import java.util.List;

import model.Cllection;
import model.House;

public interface CollectionService {

	public List<House> select(int userid);
	
	public Cllection selectByHidAndUid(int userid,int houseid);

	public void insert(int houseid, int userid);

	public void delete(int houseid, int userid);
	
	public void deleteByPoster(int houseid);
}
