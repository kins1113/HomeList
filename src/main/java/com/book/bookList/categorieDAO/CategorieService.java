package com.book.bookList.categorieDAO;

import java.util.List;

import com.book.bookList.categorieDTO.CategorieDTO;

public interface CategorieService {

	public List<CategorieDTO> selectAllCategorie();
	public int insertCategorie(CategorieDTO categorieDTO);
}
