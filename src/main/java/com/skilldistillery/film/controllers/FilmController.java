package com.skilldistillery.film.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

	@RequestMapping(path = {"/","createFilmForm.do"})
	public String createFilmForm() {
		return "WEB-INF/createFilm.jsp";
	}
	
	@RequestMapping(path = {"/","edit.do"})
	public String edit() {
		return "WEB-INF/edit.jsp";
	}

	@RequestMapping(path = {"/","delete.do"})
	public String delete() {
		return "WEB-INF/delete.jsp";
	}
	
	@RequestMapping(path = "filmDetails.do", params = "filmId", method = RequestMethod.GET)
	public ModelAndView getFilmDetails(int filmId) {
		ModelAndView mv = new ModelAndView();
		List<Film> films = new ArrayList<>();
		films.add(filmDAO.findFilmById(filmId));
		mv.addObject("films", films);
		mv.setViewName("WEB-INF/filmResults.jsp");
		return mv;
	}

	@RequestMapping(path = "filmDetails.do", params = "searchByKeyword", method = RequestMethod.GET)
	public ModelAndView getFilmDetails(String searchByKeyword) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<Film> films = filmDAO.findFilmsByKeyword(searchByKeyword);
		System.out.println(films.get(0));
		mv.addObject("films", films);
		mv.setViewName("WEB-INF/filmResults.jsp");
		return mv;
	}
	
	@RequestMapping(path = "createFilm.do", method = RequestMethod.POST)
	public ModelAndView createFilm(Film film, RedirectAttributes redir) {
		Film filmCreated = filmDAO.createFilm(film);
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("film", filmCreated);
		mv.setViewName("redirect:filmCreated.do");
		return mv;
	}

	@RequestMapping(path = "filmCreated.do", method = RequestMethod.GET)
	public ModelAndView filmCreated() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/filmCreated.jsp");
		return mv;
	}
	
	@RequestMapping(path = "editFilmDetails.do", method = RequestMethod.POST)
	public ModelAndView editFilmDetails(Film film, RedirectAttributes redir) {
		Film filmEdited = filmDAO.updateFilm(film);
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("film", filmEdited);
		mv.setViewName("redirect:filmEdited.do");
		return mv;
	}
	
	@RequestMapping(path = "filmEdited.do", method = RequestMethod.GET)
	public ModelAndView filmEdited() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/FilmModifiedLandingPage");
		return mv;
	}

	@RequestMapping(path = "deleteFilmDetails.do", method = RequestMethod.POST)
	public ModelAndView deleteFilmDetails(Film film, RedirectAttributes redir) {
		boolean wasDeleted = filmDAO.deleteFilm(film);;
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("wasDeleted", wasDeleted);
		mv.setViewName("redirect:filmDeleted.do");
		return mv;
	}
	
	@RequestMapping(path = "filmDeleted.do", method = RequestMethod.GET)
	public ModelAndView filmDeleted() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/FilmModifiedLandingPage");
		return mv;
	}
	
}
