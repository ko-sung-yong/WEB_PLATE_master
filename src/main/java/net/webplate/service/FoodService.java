package net.webplate.service;

import java.util.List;

import net.webplate.vo.FoodVO;

public interface FoodService {

	int getListCount(FoodVO food);

	List<FoodVO> getBoardList(FoodVO food);

	int getTotalCount(FoodVO food);
    
	
	// 검색 기능 
	int getSearchCount(FoodVO food);

	List<FoodVO> getSearchList(FoodVO food);

	List<FoodVO> getAddrCont(String divide);

	int foodAreaCount(String divide);

	int foodArea_Hit(String divide);



	
	
	




	


}
