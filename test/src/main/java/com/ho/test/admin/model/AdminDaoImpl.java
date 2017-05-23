package com.ho.test.admin.model;
import org.apache.ibatis.session.SqlSession;

public class AdminDaoImpl {
private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
}
