package net.webplate.dao;

import java.util.List;

import net.webplate.vo.AdminVO;
import net.webplate.vo.FoodVO;

public interface AdminDAO {


	AdminVO adminLogin(String admin_id);

	void insertAdmin(AdminVO ab);

	int getFoodListCount(FoodVO food);

	List<FoodVO> getFoodList(FoodVO food);

	FoodVO getAdminFoodCont(int f_num);

	void editFoodCont(FoodVO food);

	FoodVO getDetails(int f_num);

	void getHit(int f_num);

}
