package model;

import java.time.LocalDateTime;

public class PasswordResetToken {

    private int           tokenId;
    private int           userId;
    private String        token;
    private LocalDateTime expiredAt;
    private boolean       isUsed;
    private LocalDateTime createdAt;

    // ── Joined fields ────────────────────────────────────────────
    private String userEmail;

    public PasswordResetToken() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getTokenId()   { return tokenId; }
    public int           getUserId()    { return userId; }
    public String        getToken()     { return token; }
    public LocalDateTime getExpiredAt() { return expiredAt; }
    public boolean       isUsed()       { return isUsed; }
    public LocalDateTime getCreatedAt() { return createdAt; }
    public String        getUserEmail() { return userEmail; }

    // ── Setters ─────────────────────────────────────────────────
    public void setTokenId(int tokenId)               { this.tokenId   = tokenId; }
    public void setUserId(int userId)                 { this.userId    = userId; }
    public void setToken(String token)                { this.token     = token; }
    public void setExpiredAt(LocalDateTime expiredAt) { this.expiredAt = expiredAt; }
    public void setUsed(boolean isUsed)               { this.isUsed    = isUsed; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
    public void setUserEmail(String userEmail)        { this.userEmail = userEmail; }

    public boolean isExpired() {
        return LocalDateTime.now().isAfter(expiredAt);
    }
}

