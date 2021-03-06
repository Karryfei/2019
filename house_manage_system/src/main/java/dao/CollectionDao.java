package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import model.Cllection;
import model.House;

@Repository
public interface CollectionDao {
	// 通过用户id查找收藏
	@Select("Select hms_house.*,hms_user.* from hms_collection left join hms_house on hms_collection.houseid=hms_house.id left join hms_user on hms_collection.userid=hms_user.id where hms_collection.userid=#{userid}")
	public List<House> select(int userid);

	// 通过用户id和房子id查找收藏
	@Select("select * from hms_collection where userid=#{userid} and houseid=#{houseid}")
	public Cllection selectByHidAndUid(@Param("userid") int userid,@Param("houseid") int houseid);

	// 添加收藏
	@Insert("insert into hms_collection (houseid,userid) values(${houseid},${userid})")
	public void insert(@Param("houseid") int houseid, @Param("userid") int userid);

	// 本人删除
	@Delete("delete from hms_collection where userid=#{userid} and houseid=#{houseid}")
	public void delete(@Param("houseid") int houseid, @Param("userid") int userid);

	// 发布者删除 导致收藏删除
	@Delete("delete from hms_collection where houseid=#{houseid}")
	public void deleteByPoster(int houseid);
}
