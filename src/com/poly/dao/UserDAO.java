package com.poly.dao;

import java.util.List;

import com.poly.app.JpaUtils;
import com.poly.model.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

public class UserDAO {
	private EntityManager em = JpaUtils.getEntityManager();
	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}
	
	public User create(User entity) {
		try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	
	public User update(User entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	
	public User remove(String Id) {
		try {
			em.getTransaction().begin();
			User entity = this.findById(Id);
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	
	public User findById(String Id) {
		User entity = em.find(User.class, Id);
		return entity;
	}
	
	
	public List<User> findByKeyWord(String keyword) {
		String jpql = "SELECT o FROM User o WHERE o.fullname like ?0";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter(0, keyword);
		List<User> list = query.getResultList();
//		em.clear();
		return list;
	}
	
	public List<User> findAll() {
		String jpql = "SELECT o FROM User o";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		List<User> list = query.getResultList();
//		em.clear();
		return list;
	}
}
