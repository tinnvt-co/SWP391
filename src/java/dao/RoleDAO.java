package dao;

import config.DBContext;
import model.Role;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoleDAO {

    public List<Role> getAllRoles() {
        List<Role> roles = new ArrayList<>();
        String sql = "SELECT role_id, role_name, description, status FROM roles ORDER BY role_id";

        try (Connection conn = DBContext.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Role role = new Role();
                role.setRoleId(rs.getInt("role_id"));
                role.setRoleName(rs.getString("role_name"));
                role.setDescription(rs.getString("description"));
                role.setStatus(rs.getString("status"));
                roles.add(role);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return roles;
    }

    public List<Role> getRolesExcludeAdmin() {
        List<Role> roles = new ArrayList<>();
        String sql = "SELECT role_id, role_name, description, status FROM roles WHERE role_name != 'ADMIN' ORDER BY role_id";

        try (Connection conn = DBContext.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Role role = new Role();
                role.setRoleId(rs.getInt("role_id"));
                role.setRoleName(rs.getString("role_name"));
                role.setDescription(rs.getString("description"));
                role.setStatus(rs.getString("status"));
                roles.add(role);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return roles;
    }
}
