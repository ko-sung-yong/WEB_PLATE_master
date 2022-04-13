package net.webplate.dao;

import java.util.List;

import net.webplate.vo.FoodVO;

public interface FoodDAO {

	int getListCount(FoodVO food);

	List<FoodVO> getBoardList(FoodVO food);

	int getTotalCount(FoodVO food);

	int getSerachCount(FoodVO food);

	List<FoodVO> getSearchList(FoodVO food);

	List<FoodVO> getAddrCont(String divide);

	int foodAreaCount(String divide);

	int foodArea_Hit(String divide);
	
	// Å¾8 ÃßÃµ
	List<FoodVO> getTop_8(String pig);

	






}
