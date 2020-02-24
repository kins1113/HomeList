package com.book.bookList.homeListDAO;

import java.util.List;

import com.book.bookList.homeListDTO.HomeListDTO;

public interface HomeListDAO {
	public List<HomeListDTO> selectAllHomeList();
}
