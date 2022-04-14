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
	
	
	/* �� ���� */
	@Override
	public int getTotalCount(FoodVO food) {
		return sqlSession.selectOne("food_count",food);
	}
    
	
	// �˻� ����
	@Override
	public int getSerachCount(FoodVO food) {
		return sqlSession.selectOne("search_cnt",food);
	}
    
	
	// �˻� ����Ʈ
	@Override
	public List<FoodVO> getSearchList(FoodVO food) {
		return sqlSession.selectList("search_List",food);
	}
     
	// ������ ����Ʈ
	@Override
	public List<FoodVO> getAddrCont(String divide) {
		return sqlSession.selectList("food_Area",divide);
	}
	
    // ������ ����
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

	// ���� ���� �з�
	@Override
	public List<FoodVO> getCondList(String eat) {
		return sqlSession.selectList("cond_divide",eat);
	}
	
	// �ϰ� ���� ���� ����Ʈ ��ȸ��
	@Override
	public int getContHit(String eat) {
		return sqlSession.selectOne("cond_hit",eat);
	}	
	
	
	// �ϰ� ���� ���� ����Ʈ ����
	@Override
	public int getCont_Count(String eat) {
		return sqlSession.selectOne("cond_count",eat);
	}





	

	

}
