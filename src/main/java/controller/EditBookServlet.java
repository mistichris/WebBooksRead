package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ListBook;

@WebServlet("/EditBookServlet")
public class EditBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditBookServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ListBookHelper displayAll = new ListBookHelper();
		
		String author = request.getParameter("author");
		String book = request.getParameter("book");
		Integer tempId = Integer.parseInt(request.getParameter("id"));
		
		ListBook bookToUpdate = displayAll.searchForBookById(tempId);
		bookToUpdate.setBook(book);
		bookToUpdate.setAuthor(author);
		bookToUpdate.setId(tempId);
		
		displayAll.updateBook(bookToUpdate);
		
		getServletContext().getRequestDispatcher("/ViewAllBooksServlet").forward(request, response);
		
		

	}
	}
