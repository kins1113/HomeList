package com.book.bookList.homeListDAO;

import java.util.List;

import com.book.bookList.homeListDTO.HomeListDTO;

public interface HomeListService {
	public List<HomeListDTO> selectAllHomeList();
}
