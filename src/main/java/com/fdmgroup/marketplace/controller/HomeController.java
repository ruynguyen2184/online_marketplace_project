package com.fdmgroup.marketplace.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fdmgroup.marketplace.model.item.Item;
import com.fdmgroup.marketplace.service.item.DefaultItemService;
import com.fdmgroup.marketplace.service.item.ItemService;
import com.fdmgroup.marketplace.web.listener.LocalEntityManagerFactory;

@WebServlet({"/Home", "", "/home"})
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ItemService itemService = new DefaultItemService(LocalEntityManagerFactory.getEntityManager());
		List<Item> allItems = itemService.retrieveAllItems();
		request.setAttribute("itemList", allItems);
		request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
