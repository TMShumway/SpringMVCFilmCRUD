package com.skilldistillery.film.entities;

import java.util.List;

public class Film {
	private int id;
	private String title;
	private String description;
	private Integer year;
	private int languageId;
	private int rental_duration;
	private double rentalRate;
	private Integer length;
	private double replacementCost;
	private String rating;
	private String specialFeatures;
	private String lang;
	private List<Actor> actorList;
	private String filmCategory;
	public String getFilmCategory() {
		return filmCategory;
	}

	public void setFilmCategory(String filmCategory) {
		this.filmCategory = filmCategory;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	private int categoryId;
	
	
	public Film() {}

	public Film(int id, String title, String description, Integer year, int languageId, int rental_duration,
			double rentalRate, Integer length, double replacementCost, String rating, String specialFeatures,
			List<Actor> actorList, String lang) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.year = year;
		this.languageId = languageId;
		this.rental_duration = rental_duration;
		this.rentalRate = rentalRate;
		this.length = length;
		this.replacementCost = replacementCost;
		this.rating = rating;
		this.specialFeatures = specialFeatures;
		this.actorList = actorList;
		this.lang = lang;
	}

	public Film(int id, String title, String description, Integer year, int languageId, int rental_duration,
			double rentalRate, Integer length, double replacementCost, String rating, String specialFeatures,
			List<Actor> actorList) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.year = year;
		this.languageId = languageId;
		this.rental_duration = rental_duration;
		this.rentalRate = rentalRate;
		this.length = length;
		this.replacementCost = replacementCost;
		this.rating = rating;
		this.specialFeatures = specialFeatures;
		this.actorList = actorList;
	}

	public Film(int id, String title, String description, Integer year, int languageId, int rental_duration,
			double rentalRate, Integer length, double replacementCost, String rating, String specialFeatures) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.year = year;
		this.languageId = languageId;
		this.rental_duration = rental_duration;
		this.rentalRate = rentalRate;
		this.length = length;
		this.replacementCost = replacementCost;
		this.rating = rating;
		this.specialFeatures = specialFeatures;
	}

	public Film(int id, String title, String description, Integer year, int languageId, int rental_duration,
			double rentalRate, Integer length, double replacementCost, String rating, String specialFeatures,
			String lang) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.year = year;
		this.languageId = languageId;
		this.rental_duration = rental_duration;
		this.rentalRate = rentalRate;
		this.length = length;
		this.replacementCost = replacementCost;
		this.rating = rating;
		this.specialFeatures = specialFeatures;
		this.actorList = actorList;
		this.lang = lang;
	}

	public Film(String title, int languageId, int rental_duration, double rentalRate, double replacementCost) {
		this.title = title;
		this.languageId = languageId;
		this.rental_duration = rental_duration;
		this.rentalRate = rentalRate;
		this.replacementCost = replacementCost;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((actorList == null) ? 0 : actorList.hashCode());
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + id;
		result = prime * result + ((lang == null) ? 0 : lang.hashCode());
		result = prime * result + languageId;
		result = prime * result + ((length == null) ? 0 : length.hashCode());
		result = prime * result + ((rating == null) ? 0 : rating.hashCode());
		long temp;
		temp = Double.doubleToLongBits(rentalRate);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + rental_duration;
		temp = Double.doubleToLongBits(replacementCost);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((specialFeatures == null) ? 0 : specialFeatures.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + ((year == null) ? 0 : year.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Film other = (Film) obj;
		if (actorList == null) {
			if (other.actorList != null)
				return false;
		} else if (!actorList.equals(other.actorList))
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (id != other.id)
			return false;
		if (lang == null) {
			if (other.lang != null)
				return false;
		} else if (!lang.equals(other.lang))
			return false;
		if (languageId != other.languageId)
			return false;
		if (length == null) {
			if (other.length != null)
				return false;
		} else if (!length.equals(other.length))
			return false;
		if (rating == null) {
			if (other.rating != null)
				return false;
		} else if (!rating.equals(other.rating))
			return false;
		if (Double.doubleToLongBits(rentalRate) != Double.doubleToLongBits(other.rentalRate))
			return false;
		if (rental_duration != other.rental_duration)
			return false;
		if (Double.doubleToLongBits(replacementCost) != Double.doubleToLongBits(other.replacementCost))
			return false;
		if (specialFeatures == null) {
			if (other.specialFeatures != null)
				return false;
		} else if (!specialFeatures.equals(other.specialFeatures))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (year == null) {
			if (other.year != null)
				return false;
		} else if (!year.equals(other.year))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Film [id=" + id + ", title=" + title + ", description=" + description + ", year=" + year
				+ ", languageId=" + languageId + ", rental_duration=" + rental_duration + ", rentalRate=" + rentalRate
				+ ", length=" + length + ", replacementCost=" + replacementCost + ", rating=" + rating
				+ ", specialFeatures=" + specialFeatures + ", actorList=" + actorList + ", lang=" + lang + "]";
	}

	// getters/setters block
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public int getLanguageId() {
		return languageId;
	}

	public void setLanguageId(int languageId) {
		this.languageId = languageId;
	}

	public int getRental_duration() {
		return rental_duration;
	}

	public void setRental_duration(int rental_duration) {
		this.rental_duration = rental_duration;
	}

	public double getRentalRate() {
		return rentalRate;
	}

	public void setRentalRate(double rentalRate) {
		this.rentalRate = rentalRate;
	}

	public Integer getLength() {
		return length;
	}

	public void setLength(Integer length) {
		this.length = length;
	}

	public double getReplacementCost() {
		return replacementCost;
	}

	public void setReplacementCost(double replacementCost) {
		this.replacementCost = replacementCost;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getSpecialFeatures() {
		return specialFeatures;
	}

	public void setSpecialFeatures(String specialFeatures) {
		this.specialFeatures = specialFeatures;
	}

	public List<Actor> getActorList() {
		return actorList;
	}

	public void setActorList(List<Actor> actorList) {
		this.actorList = actorList;
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

}
