package net.webplate.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.webplate.dao.FoodDAO;
import net.webplate.vo.FoodVO;


@Service
public class FoodServiceImpl implements FoodService {
	
	@Autowired
	private FoodDAO foodDao;

	@Override
	public int getListCount(FoodVO food) {
		return foodDao.getListCount(food);
	}

	@Override
	public List<FoodVO> getBoardList(FoodVO food) {
		return foodDao.getBoardList(food);
	}

	@Override
	public int getTotalCount(FoodVO food) {
		return foodDao.getTotalCount(food);
	}

	@Override
	public int getSearchCount(FoodVO food) {
		return foodDao.getSerachCount(food);
	}

	@Override
	public List<FoodVO> getSearchList(FoodVO food) {		
		return foodDao.getSearchList(food);
	}

	@Override
	public List<FoodVO> getAddrCont(String divide) {
		return foodDao.getAddrCont(divide);
	}

	@Override
	public int foodAreaCount(String divide) {
		return foodDao.foodAreaCount(divide);
	}

	@Override
	public int foodArea_Hit(String divide) {
		return foodDao.foodArea_Hit(divide);
	}

	@Override
	public List<FoodVO> getTop_8(String pig) {
		return foodDao.getTop_8(pig);
	}

	@Override
	public List<FoodVO> getCondList(String eat) {
		return foodDao.getCondList(eat);
	}

	@Override
	public int getContHit(String eat) {
		return foodDao.getContHit(eat);
	}

	@Override
	public int getCont_Count(String eat) {
		return foodDao.getCont_Count(eat);
	}









}
