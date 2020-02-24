package com.book.bookList.homeListDAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.book.bookList.homeListDTO.HomeListDTO;

@Service
public class HomeListServiceImpl implements HomeListService{
	
	@Autowired HomeListDAO HomeListDAO;
	@Override
	public List<HomeListDTO> selectAllHomeList() {
		return HomeListDAO.selectAllHomeList();
	}
	
}
