package com.poly.dao;

import java.util.Date;
import java.util.List;

import com.poly.app.JpaUtils;
import com.poly.model.Favorite;
import com.poly.model.User;
import com.poly.model.Video;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class FavoriteDAO {
	private EntityManager em = JpaUtils.getEntityManager();
	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}
	
	
	
	public Favorite create(String userId, String videoId) {
		try {
			em.getTransaction().begin();
			User user = em.find(User.class, userId);
	        Video video = em.find(Video.class, videoId);
			Favorite favorite = new Favorite();
			
			favorite.setUser(user);
			favorite.setVideo(video);
			favorite.setLikeDate(new Date());
			
			em.persist(favorite);
			em.getTransaction().commit();
			return favorite;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	
	
	
	public Favorite remove(String Id) {
		try {
			em.getTransaction().begin();
			Favorite entity = this.findById(Id);
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	
	public Favorite findById(String Id) {
		Favorite entity = em.find(Favorite.class, Id);
		return entity;
	}
	
	public List<Favorite> findAll() {
		String jpql = "SELECT o FROM Favorite o";
		TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
		List<Favorite> list = query.getResultList();
//		em.clear();
		return list;
		
		
	}
}
