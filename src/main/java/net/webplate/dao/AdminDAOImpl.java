package net.webplate.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.webplate.vo.AdminVO;
import net.webplate.vo.FoodVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SqlSession sql;
	
	@Override
	public void insertAdmin(AdminVO ab) {
		sql.insert("admin_in",ab);
	} // 관리자 저장



	@Override
	public AdminVO adminLogin(String admin_id) {
		return sql.selectOne("admin_login",admin_id);
	}



	@Override
	public int getFoodListCount(FoodVO food) {
		return sql.selectOne("admin_foodsum",food);
	}



	@Override
	public List<FoodVO> getFoodList(FoodVO food) {
		return sql.selectList("admin_foodList",food);
	}



	@Override
	public FoodVO getAdminFoodCont(int f_num) {
		return sql.selectOne("admin_foodcont",f_num);
	}



	@Override
	public void editFoodCont(FoodVO food) {
		sql.update("adfood_edit",food);
	}


    // 세부정보
	@Override
	public FoodVO getDetails(int f_num) {
		return sql.selectOne("admin_food_detail",f_num);
	}


     // 조회수 증가
	@Override
	public void getHit(int f_num) {
		sql.update("adfood_hit_up",f_num);
	}

}
