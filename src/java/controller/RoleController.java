package controller;

import dao.RoleDAO;
import model.Role;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "RoleController", urlPatterns = {"/roles"})
public class RoleController extends HttpServlet {

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
            default:
                showList(request, response);
                break;
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("roles", roleDAO.getAllRoles());
        request.setAttribute("pageTitle", "Role List");
        request.getRequestDispatcher("/WEB-INF/views/role/list.jsp").forward(request, response);
    }

    private void showDetail(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int roleId = Integer.parseInt(request.getParameter("id"));
            Role role = roleDAO.getRoleById(roleId);

            if (role == null) {
                response.sendError(404, "Role not found");
                return;
            }

            request.setAttribute("role", role);
            request.setAttribute("pageTitle", "Role Permissions");
            request.getRequestDispatcher("/WEB-INF/views/role/detail.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            response.sendRedirect(request.getContextPath() + "/roles");
        }
    }
}
