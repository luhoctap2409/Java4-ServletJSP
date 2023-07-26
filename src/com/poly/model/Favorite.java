package com.poly.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table (name = "Favorites")
public class Favorite {
	@Id
	@Column(name = "FavoriteId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long FavoriteId;
	@ManyToOne
	@JoinColumn(name = "UserId")
	User user;
	@ManyToOne
	@JoinColumn(name = "VideoId")
	Video video;
	@Column(name = "LikeDate")
	@Temporal(TemporalType.DATE)
	Date LikeDate = new Date();
	public Long getFavoriteId() {
		return FavoriteId;
	}
	public void setFavoriteId(Long favoriteId) {
		FavoriteId = favoriteId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Video getVideo() {
		return video;
	}
	public void setVideo(Video video) {
		this.video = video;
	}
	public Date getLikeDate() {
		return LikeDate;
	}
	public void setLikeDate(Date likeDate) {
		LikeDate = likeDate;
	}
	
}
