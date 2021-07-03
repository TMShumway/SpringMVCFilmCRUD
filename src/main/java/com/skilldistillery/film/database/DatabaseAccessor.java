package com.skilldistillery.film.database;

import java.util.List;
import java.util.Map;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface DatabaseAccessor {
  public Film findFilmById(int filmId);
  public Actor findActorById(int actorId);
  public List<Actor> findActorsByFilmId(int filmId);
  public Map<Integer, Film> findFilmByKeyword(String keyword);
  public Film createFilm(Film film);
  public void deleteFilm(Film film);
  public Film updateFilm(Film film);
  
}
