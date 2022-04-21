package net.webplate.service;

import java.util.List;

import net.webplate.vo.AdminVO;
import net.webplate.vo.FoodVO;
import net.webplate.vo.LikeVO;
import net.webplate.vo.ReviewVO;

public interface AdminService {

	
	void insertAdmin(AdminVO ab);
	AdminVO adminLogin(String admin_id);
	
	// 음식
	int getFoodListCount(FoodVO food);
	List<FoodVO> getFoodList(FoodVO food);
	FoodVO getAdminFoodCont(int f_num);
	void editFoodCont(FoodVO food);
	FoodVO getDetails(int f_num);
	void getHit(int f_num);
	
	// 리뷰 등록
	void insertReview(ReviewVO r);
	
	// 점수 받아오기
	double getPoint(int f_num);
	// 값 변경
	void updateReviewPoint(FoodVO food);
	
	
	
	
	
	

}
