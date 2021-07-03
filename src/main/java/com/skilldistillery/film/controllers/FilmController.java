package com.skilldistillery.film.controllers;


import com.skilldistillery.film.database.DatabaseAccessorObject;
import com.skilldistillery.film.entities.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FilmController {
	
	@Autowired
	DatabaseAccessorObject filmDAO;
	
	@RequestMapping(path = {"/","home.do"})
	public String index() {
		return "WEB-INF/home.jsp";
	}
	
	@RequestMapping(path = "filmDetails.do", params = "filmId", method = RequestMethod.GET)
	public ModelAndView getFilmDetails(int filmId) {
		ModelAndView mv = new ModelAndView();
		Film film = filmDAO.findFilmById(filmId);
		if(film == null) {
			Film test = new Film();
			test.setId(111111);
			mv.addObject(test);
		} else {
			mv.addObject(film);
		}
		mv.setViewName("WEB-INF/filmResults.jsp");
		return mv;
	}
	
}
