package net.webplate.dao;



import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.webplate.vo.FoodVO;


@Repository
public class FoodDAOImpl implements FoodDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getListCount(FoodVO food) {
		return sqlSession.selectOne("food_cnt",food);
	}

	@Override
	public List<FoodVO> getBoardList(FoodVO food) {
		return sqlSession.selectList("food_list",food);
	}
	
	
	/* 총 갯수 */
	@Override
	public int getTotalCount(FoodVO food) {
		return sqlSession.selectOne("food_count",food);
	}
    
	
	// 검색 개수
	@Override
	public int getSerachCount(FoodVO food) {
		return sqlSession.selectOne("search_cnt",food);
	}
    
	
	// 검색 리스트
	@Override
	public List<FoodVO> getSearchList(FoodVO food) {
		return sqlSession.selectList("search_List",food);
	}
     
	// 지역별 리스트
	@Override
	public List<FoodVO> getAddrCont(String divide) {
		return sqlSession.selectList("food_Area",divide);
	}
	
    // 지역별 개수
	@Override
	public int foodAreaCount(String divide) {
		return sqlSession.selectOne("food_Area_cnt",divide);
	}

	@Override
	public int foodArea_Hit(String divide) {
		return sqlSession.selectOne("food_Area_hit",divide);
	}

	@Override
	public List<FoodVO> getTop_8(String pig) {
		return sqlSession.selectList("top_pig8",pig);
	}

	// 음식 종류 분류
	@Override
	public List<FoodVO> getCondList(String eat) {
		return sqlSession.selectList("cond_divide",eat);
	}
	
	// 믿고 보는 맛집 리스트 조회수
	@Override
	public int getContHit(String eat) {
		return sqlSession.selectOne("cond_hit",eat);
	}	
	
	
	// 믿고 보는 맛집 리스트 개수
	@Override
	public int getCont_Count(String eat) {
		return sqlSession.selectOne("cond_count",eat);
	}





	

	

}
