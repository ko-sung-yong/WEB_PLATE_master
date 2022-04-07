package net.webplate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.webplate.dao.AdminDAO;
import net.webplate.vo.AdminVO;
import net.webplate.vo.FoodVO;

@Service
public class AdminServiceImpl implements AdminService {

	
	@Autowired
	private AdminDAO adminDao;
	
	@Override
	public void insertAdmin(AdminVO ab) {
		adminDao.insertAdmin(ab);
	}


	@Override
	public AdminVO adminLogin(String admin_id) {
		return adminDao.adminLogin(admin_id);
	}


	@Override
	public int getFoodListCount(FoodVO food) {
		return adminDao.getFoodListCount(food);
	}


	@Override
	public List<FoodVO> getFoodList(FoodVO food) {
		return adminDao.getFoodList(food);
	}


	@Override
	public FoodVO getAdminFoodCont(int f_num) {
		return adminDao.getAdminFoodCont(f_num);
	}


	@Override
	public void editFoodCont(FoodVO food) {
		adminDao.editFoodCont(food);
	}


	@Override
	public FoodVO getDetails(int f_num) {
		return adminDao.getDetails(f_num);
	}


	@Override
	public void getHit(int f_num) {
		adminDao.getHit(f_num);
	}



}
