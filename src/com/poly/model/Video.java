package com.poly.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "Videos")
public class Video {
	@Id
	@Column(name = "VideoId")
	private String VideoId;
	@Column(name = "Title")
	private String Title;
	@Column(name = "Poster")
	private String Poster;
	@Column(name = "Views")
	private Integer Views = 0;
	@Column(name = "Description")
	private String Description;
	@Column(name = "Active")
	private Boolean Active = true;
	@OneToMany(mappedBy = "video")
	List<Favorite> favorites;
	public String getVideoId() {
		return VideoId;
	}
	public void setVideoId(String videoId) {
		VideoId = videoId;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getPoster() {
		return Poster;
	}
	public void setPoster(String poster) {
		Poster = poster;
	}
	public Integer getViews() {
		return Views;
	}
	public void setViews(Integer views) {
		Views = views;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public Boolean getActive() {
		return Active;
	}
	public void setActive(Boolean active) {
		Active = active;
	}
	public List<Favorite> getFavorites() {
		return favorites;
	}
	public void setFavorites(List<Favorite> favorites) {
		this.favorites = favorites;
	}
	
	
}
