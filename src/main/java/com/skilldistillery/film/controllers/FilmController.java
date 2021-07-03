package com.skilldistillery.film.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.database.DatabaseAccessorObject;
import com.skilldistillery.film.entities.Film;

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
		List<Film> films = new ArrayList<>();
		films.add(filmDAO.findFilmById(filmId));
		mv.addObject(films);
		mv.setViewName("WEB-INF/filmResults.jsp");
		return mv;
	}

	@RequestMapping(path = "filmDetails.do", params = "searchByKeyword", method = RequestMethod.GET)
	public ModelAndView getFilmDetails(String searchByKeyword) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<Film> films = filmDAO.findFilmsByKeyword(searchByKeyword);
		mv.addObject(films);
		mv.setViewName("WEB-INF/filmResults.jsp");
		return mv;
	}
	
	
	
}
