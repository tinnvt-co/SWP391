package controller;

import dao.RoleDAO;
import dao.UserDAO;
import model.User;
import util.PasswordUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "UserController", urlPatterns = {"/users"})
public class UserController extends HttpServlet {

    private final UserDAO userDAO = new UserDAO();
    private final RoleDAO roleDAO = new RoleDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "detail":
                showDetail(request, response);
                break;
            case "add":
                showAddForm(request, response);
                break;
            default:
                showList(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("add".equals(action)) {
            addUser(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/users");
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("users", userDAO.getAllUsers());
        request.setAttribute("pageTitle", "User List");
        request.getRequestDispatcher("/WEB-INF/views/user/list.jsp").forward(request, response);
    }

    private void showDetail(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idParam = request.getParameter("id");

        try {
            int userId = Integer.parseInt(idParam);
            User user = userDAO.getUserById(userId);

            if (user == null) {
                response.sendError(404, "User not found");
                return;
            }

            request.setAttribute("user", user);
            request.setAttribute("pageTitle", "User Detail");
            request.getRequestDispatcher("/WEB-INF/views/user/detail.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            response.sendRedirect(request.getContextPath() + "/users");
        }
    }

    private void showAddForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("roles", roleDAO.getRolesExcludeAdmin());
        request.setAttribute("pageTitle", "Add New User");
        request.getRequestDispatcher("/WEB-INF/views/user/add.jsp").forward(request, response);
    }

    private void addUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fullName  = request.getParameter("fullName");
        String email     = request.getParameter("email");
        String username  = request.getParameter("username");
        String password  = request.getParameter("password");
        String phone     = request.getParameter("phone");
        String address   = request.getParameter("address");
        String roleId    = request.getParameter("roleId");
        String status    = request.getParameter("status");

        if (userDAO.existsByUsername(username)) {
            request.setAttribute("errorMessage", "Username '" + username + "' already exists.");
            request.setAttribute("roles", roleDAO.getRolesExcludeAdmin());
            request.setAttribute("pageTitle", "Add New User");
            request.getRequestDispatcher("/WEB-INF/views/user/add.jsp").forward(request, response);
            return;
        }

        if (userDAO.existsByEmail(email)) {
            request.setAttribute("errorMessage", "Email '" + email + "' already exists.");
            request.setAttribute("roles", roleDAO.getRolesExcludeAdmin());
            request.setAttribute("pageTitle", "Add New User");
            request.getRequestDispatcher("/WEB-INF/views/user/add.jsp").forward(request, response);
            return;
        }

        User newUser = new User();
        newUser.setFullName(fullName);
        newUser.setEmail(email);
        newUser.setUsername(username);
        newUser.setPassword(PasswordUtil.md5(password));
        newUser.setPhone(phone);
        newUser.setAddress(address);
        newUser.setRoleId(Integer.parseInt(roleId));
        newUser.setStatus(status != null ? status : "ACTIVE");

        boolean isInserted = userDAO.insertUser(newUser);

        if (isInserted) {
            response.sendRedirect(request.getContextPath() + "/users?success=added");
        } else {
            request.setAttribute("errorMessage", "Failed to add user. Please try again.");
            request.setAttribute("roles", roleDAO.getRolesExcludeAdmin());
            request.setAttribute("pageTitle", "Add New User");
            request.getRequestDispatcher("/WEB-INF/views/user/add.jsp").forward(request, response);
        }
    }
}
