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





}
