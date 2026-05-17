package dao;

import config.DBContext;
import model.PasswordResetToken;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

public class PasswordResetTokenDAO {

    public boolean insertToken(PasswordResetToken token) {
        String sql = "INSERT INTO password_reset_tokens (user_id, token, expired_at) VALUES (?, ?, ?)";

        try (Connection conn = DBContext.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, token.getUserId());
            ps.setString(2, token.getToken());
            ps.setObject(3, token.getExpiredAt());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public PasswordResetToken getByToken(String token) {
        String sql = "SELECT * FROM password_reset_tokens WHERE token = ? AND is_used = FALSE AND expired_at > NOW()";

        try (Connection conn = DBContext.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, token);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                PasswordResetToken prt = new PasswordResetToken();
                prt.setTokenId(rs.getInt("token_id"));
                prt.setUserId(rs.getInt("user_id"));
                prt.setToken(rs.getString("token"));
                prt.setExpiredAt(rs.getObject("expired_at", LocalDateTime.class));
                prt.setUsed(rs.getBoolean("is_used"));
                prt.setCreatedAt(rs.getObject("created_at", LocalDateTime.class));
                return prt;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public boolean markAsUsed(int tokenId) {
        String sql = "UPDATE password_reset_tokens SET is_used = TRUE WHERE token_id = ?";

        try (Connection conn = DBContext.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, tokenId);
            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
