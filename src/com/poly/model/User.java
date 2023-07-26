package com.poly.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "Users")
public class User {
	@Id
	@Column(name = "UserId")
	private String UserId;
	@Column(name = "Password")
	private String Password;
	@Column(name = "Email")
	private String Email;
	@Column(name = "Fullname")
	private String Fullname;
	@Column(name = "Admin")
	private Boolean Admin = false;
	@OneToMany(mappedBy = "user")
	List<Favorite> favorites;
	
	
	
	public User() {
		super();
	}
	public User(String userId, String password, String email, String fullname, Boolean admin,
			List<Favorite> favorites) {
		super();
		UserId = userId;
		Password = password;
		Email = email;
		Fullname = fullname;
		Admin = admin;
		this.favorites = favorites;
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getFullname() {
		return Fullname;
	}
	public void setFullname(String fullname) {
		Fullname = fullname;
	}
	public Boolean getAdmin() {
		return Admin;
	}
	public void setAdmin(Boolean admin) {
		Admin = admin;
	}
	public List<Favorite> getFavorites() {
		return favorites;
	}
	public void setFavorites(List<Favorite> favorites) {
		this.favorites = favorites;
	}
	
	
}
