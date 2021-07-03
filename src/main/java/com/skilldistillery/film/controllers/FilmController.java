package com.skilldistillery.film.controllers;


import com.skilldistillery.film.entities.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FilmController {
	
//	@Autowired
//	FilmDAO filmDAO = new FilmDAO();
	
	@RequestMapping(path = {"/","home.do"})
	public String index() {
		return "WEB-INF/home.jsp";
	}
	
	@RequestMapping(path = "filmDetails.do", param = "filmId")
	public ModelAndView getFilmDetails(int filmId) {
		ModelAndView mv = new ModelAndView();
		Film film = filmDAO.getFilmById(filmId);
		mv.addObject(film);
		mv.setViewName("WEB-INF/home.jsp");
		return mv;
	}
	
}
