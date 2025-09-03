package com.rays.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rays.util.ServletUtility;

/**
 * Controller to handle the Welcome page view logic. Forwards the request to the
 * Welcome View.
 * 
 * @author Aastik Sahu
 */
@WebServlet(name = "WelcomeCtl", urlPatterns = { "/WelcomeCtl" })
public class WelcomeCtl extends BaseCtl {

	/**
	 * Handles HTTP GET requests for the welcome page. Simply forwards the request
	 * to the welcome view.
	 *
	 * @param request  the HttpServletRequest object
	 * @param response the HttpServletResponse object
	 * @throws ServletException
	 * @throws IOException
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ServletUtility.forward(getView(), request, response);
	}

	/**
	 * Returns the view path of the Welcome page.
	 *
	 * @return String path to the Welcome view
	 */
	@Override
	protected String getView() {
		return ORSView.WELCOME_VIEW;
	}

}
