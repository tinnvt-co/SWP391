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

@WebServlet(name = "ChangePasswordController", urlPatterns = {"/change-password"})
public class ChangePasswordController extends HttpServlet {

    private final UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("pageTitle", "Change Password");
        request.getRequestDispatcher("/WEB-INF/views/user/change-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        User loginUser = (User) session.getAttribute("loginUser");

        String currentPassword = request.getParameter("currentPassword");
        String newPassword     = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        User userFromDb = userDAO.login(loginUser.getUsername(), currentPassword);

        if (userFromDb == null) {
            request.setAttribute("errorMessage", "Current password is incorrect.");
            request.setAttribute("pageTitle", "Change Password");
            request.getRequestDispatcher("/WEB-INF/views/user/change-password.jsp").forward(request, response);
            return;
        }

        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("errorMessage", "New passwords do not match.");
            request.setAttribute("pageTitle", "Change Password");
            request.getRequestDispatcher("/WEB-INF/views/user/change-password.jsp").forward(request, response);
            return;
        }

        if (newPassword.length() < 6) {
            request.setAttribute("errorMessage", "New password must be at least 6 characters.");
            request.setAttribute("pageTitle", "Change Password");
            request.getRequestDispatcher("/WEB-INF/views/user/change-password.jsp").forward(request, response);
            return;
        }

        userDAO.updatePassword(loginUser.getUserId(), newPassword);

        response.sendRedirect(request.getContextPath() + "/profile?success=password_changed");
    }
}
