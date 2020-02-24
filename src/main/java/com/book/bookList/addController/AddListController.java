package com.book.bookList.addController;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.book.bookList.categorieDAO.CategorieService;
import com.book.bookList.categorieDTO.CategorieDTO;

@Controller
public class AddListController {

	private final static Logger logger= LoggerFactory.getLogger(AddListController.class);
	@Autowired CategorieService categorieService;
	
	@RequestMapping(value="/add/addList.do")
	public String addListShow(Model model){
		List<CategorieDTO> cateList=categorieService.selectAllCategorie();
		System.out.println("addListShow 카테고리 수 = "+cateList.size());
		logger.info("AddList show");
		model.addAttribute("cateList",cateList);
		
		return "add/addList";
	}
}
