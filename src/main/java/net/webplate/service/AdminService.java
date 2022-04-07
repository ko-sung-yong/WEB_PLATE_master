package net.webplate.service;

import java.util.List;

import net.webplate.vo.AdminVO;
import net.webplate.vo.FoodVO;

public interface AdminService {

	
	void insertAdmin(AdminVO ab);
	AdminVO adminLogin(String admin_id);
	
	// À½½Ä
	int getFoodListCount(FoodVO food);
	List<FoodVO> getFoodList(FoodVO food);
	FoodVO getAdminFoodCont(int f_num);
	void editFoodCont(FoodVO food);
	FoodVO getDetails(int f_num);
	void getHit(int f_num);

}
