package com.fdmgroup.marketplace.repository.transaction.purchase;

import java.util.List;

import javax.persistence.EntityManager;

import com.fdmgroup.marketplace.model.transaction.purchase.Purchase;
import com.fdmgroup.marketplace.repository.CRUD;

public class PurchaseDAO implements CRUD<Purchase> {
	
	private EntityManager entityManager;

	public PurchaseDAO(EntityManager entityManager){
		this.entityManager = entityManager;
	}

	@Override
	public void create(Purchase purchase) {
		entityManager.persist(purchase);
	}

	@Override
	public Purchase retrieveOne(long id) {
		return entityManager.find(Purchase.class, id);
	}

	@Override
	public List<Purchase> retrieveAll() {
		return entityManager.createQuery(
				"select a from Purchase a", Purchase.class).getResultList();
	}

	@Override
	public void update(Purchase purchase) {
		entityManager.merge(purchase);
	}

	@Override
	public void delete(long id) {
		Purchase purchase = entityManager.find(Purchase.class, id);
		entityManager.remove(purchase);
	}

}
