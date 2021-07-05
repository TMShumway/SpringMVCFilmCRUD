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
import com.skilldistillery.film.entities.Actor;
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
	public ModelAndView edit(int id) {
		ModelAndView mv = new ModelAndView();
		Film film = filmDAO.findFilmById(id);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/edit.jsp");
		return mv;
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
		mv.addObject("films", films);
		mv.setViewName("WEB-INF/filmResults.jsp");
		return mv;
	}
	
	@RequestMapping(path = "createFilm.do", method = RequestMethod.POST)
	public ModelAndView createFilm(Film film, RedirectAttributes redir) {
		List<Actor> actors = new ArrayList<>();
		actors.add(filmDAO.createActor(new Actor(0, "Hugh", "Hemsworth")));
		actors.add(filmDAO.createActor(new Actor(0, "M. Film", "Tesatalot")));
		film.setActorList(actors);
		Film filmCreated = filmDAO.createFilm(film);
		boolean filmCreatedBool = filmCreated.getId() > 0 ? true : false;
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("wasFilmCreated", filmCreatedBool);
		boolean createdFlag = true;
		redir.addFlashAttribute("createdFlag", createdFlag);
		mv.setViewName("redirect:filmCreated.do");
		return mv;
	}

	@RequestMapping(path = "filmCreated.do", method = RequestMethod.GET)
	public ModelAndView filmCreated() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/delete.jsp");
		return mv;
	}
	
	@RequestMapping(path = "editFilmDetails.do", method = RequestMethod.POST)
	public ModelAndView editFilmDetails(Film film, RedirectAttributes redir) {
		System.out.println(film);
		Film filmEdited = filmDAO.updateFilm(film);
		System.out.println(filmEdited);
		ModelAndView mv = new ModelAndView();
		boolean filmEditedBool = filmEdited.getId() > 0 ? true : false;
		redir.addFlashAttribute("wasFilmEdited", filmEditedBool);
		boolean editedFlag = true;
		redir.addFlashAttribute("editedFlag", editedFlag);
		mv.setViewName("redirect:filmEdited.do");
		return mv;
	}
	
	@RequestMapping(path = "filmEdited.do", method = RequestMethod.GET)
	public ModelAndView filmEdited() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/delete.jsp");
		return mv;
	}

	@RequestMapping(path = "deleteFilmDetails.do", method = RequestMethod.POST)
	public ModelAndView deleteFilmDetails(Film film, RedirectAttributes redir) {
		boolean wasDeleted = filmDAO.deleteFilm(film);
		System.out.println(wasDeleted);
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("wasFilmDeleted", wasDeleted);
		boolean deletedFlag = true;
		redir.addFlashAttribute("deletedFlag", deletedFlag);
		mv.setViewName("redirect:filmDeleted.do");
		return mv;
	}
	
	@RequestMapping(path = "filmDeleted.do", method = RequestMethod.GET)
	public ModelAndView filmDeleted() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/delete.jsp");
		return mv;
	}
	
}
