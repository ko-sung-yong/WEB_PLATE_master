package net.webplate.service;

import java.util.List;

import net.webplate.vo.FoodVO;

public interface FoodService {

	int getListCount(FoodVO food);

	List<FoodVO> getBoardList(FoodVO food);

	int getTotalCount(FoodVO food);
    
	
	// �˻� ��� 
	int getSearchCount(FoodVO food);

	List<FoodVO> getSearchList(FoodVO food);
	
	




	


}
