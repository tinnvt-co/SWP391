package controller;

import dao.UserDAO;
import model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

    private final UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("loginUser") != null) {
            response.sendRedirect(request.getContextPath() + "/dashboard");
            return;
        }

        request.getRequestDispatcher("/WEB-INF/views/auth/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username == null || username.trim().isEmpty()
                || password == null || password.trim().isEmpty()) {
            request.setAttribute("errorMessage", "Username and password are required.");
            request.getRequestDispatcher("/WEB-INF/views/auth/login.jsp").forward(request, response);
            return;
        }

        User user = userDAO.login(username.trim(), password.trim());

        if (user == null) {
            request.setAttribute("errorMessage", "Invalid username or password.");
            request.getRequestDispatcher("/WEB-INF/views/auth/login.jsp").forward(request, response);
            return;
        }

        HttpSession session = request.getSession();
        session.setAttribute("loginUser", user);

        response.sendRedirect(request.getContextPath() + "/dashboard");
    }
}
