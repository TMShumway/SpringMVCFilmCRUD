package com.skilldistillery.film.entities;

public class Actor {
	private int id;
	private String firstName;
	private String lastName;

	public Actor(int id, String firstName, String lastName) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
	}

//	toString block
	@Override
	public String toString() {
		return "id: " + id + " || firstName: " + firstName + " || lastName: " + lastName + "\n";
	}

//	getters/setters block
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

}