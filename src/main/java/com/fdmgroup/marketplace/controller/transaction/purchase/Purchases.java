package com.fdmgroup.marketplace.controller.transaction.purchase;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fdmgroup.marketplace.listener.LocalEntityManagerFactory;
import com.fdmgroup.marketplace.model.transaction.Purchase;
import com.fdmgroup.marketplace.model.user.UserAccount;
import com.fdmgroup.marketplace.repository.transaction.purchase.PurchaseDAO;

@WebServlet("/User/Purchases")
public class Purchases extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserAccount user = (UserAccount) request.getSession().getAttribute("user");
		
		PurchaseDAO purchaseDao  = new PurchaseDAO(LocalEntityManagerFactory.getEntityManager());
		List<Purchase> allPurchases = purchaseDao.retrieveAllByUserId(user.getId());
		request.setAttribute("purchaseList", allPurchases);
		request.getRequestDispatcher("/WEB-INF/purchases.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}


}