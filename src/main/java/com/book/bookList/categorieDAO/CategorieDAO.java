package com.book.bookList.categorieDAO;

import java.util.List;

import com.book.bookList.categorieDTO.CategorieDTO;

public interface CategorieDAO {
	public List<CategorieDTO> selectAllCategorie();
	public int insertCategorie(CategorieDTO categorieDTO);
}
