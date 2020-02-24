package com.book.bookList.homeListDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.book.bookList.homeListDTO.HomeListDTO;

@Repository
public class HomeListDAOImpl implements HomeListDAO{
	
	private String namespace="config.mybatis.mapper.oracle.HomeList.";
	@Autowired SqlSessionTemplate sqlsession;
	
	@Override
	public List<HomeListDTO> selectAllHomeList(){
		return sqlsession.selectList(namespace+"selectAllHomeList");
	}
}
