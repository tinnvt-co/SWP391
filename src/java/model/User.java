package model;

import java.time.LocalDateTime;

public class User {

    private int           userId;
    private int           roleId;
    private String        fullName;
    private String        email;
    private String        username;
    private String        password;
    private String        phone;
    private String        address;
    private String        avatar;
    private String        status;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    // ── Joined fields (not DB columns) ──────────────────────────
    private String roleName;

    public User() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getUserId()   { return userId; }
    public int           getRoleId()   { return roleId; }
    public String        getFullName() { return fullName; }
    public String        getEmail()    { return email; }
    public String        getUsername() { return username; }
    public String        getPassword() { return password; }
    public String        getPhone()    { return phone; }
    public String        getAddress()  { return address; }
    public String        getAvatar()   { return avatar; }
    public String        getStatus()   { return status; }
    public LocalDateTime getCreatedAt(){ return createdAt; }
    public LocalDateTime getUpdatedAt(){ return updatedAt; }
    public String        getRoleName() { return roleName; }

    // ── Setters ─────────────────────────────────────────────────
    public void setUserId(int userId)                  { this.userId    = userId; }
    public void setRoleId(int roleId)                  { this.roleId    = roleId; }
    public void setFullName(String fullName)           { this.fullName  = fullName; }
    public void setEmail(String email)                 { this.email     = email; }
    public void setUsername(String username)           { this.username  = username; }
    public void setPassword(String password)           { this.password  = password; }
    public void setPhone(String phone)                 { this.phone     = phone; }
    public void setAddress(String address)             { this.address   = address; }
    public void setAvatar(String avatar)               { this.avatar    = avatar; }
    public void setStatus(String status)               { this.status    = status; }
    public void setCreatedAt(LocalDateTime createdAt)  { this.createdAt = createdAt; }
    public void setUpdatedAt(LocalDateTime updatedAt)  { this.updatedAt = updatedAt; }
    public void setRoleName(String roleName)           { this.roleName  = roleName; }

    // ── Role helpers ─────────────────────────────────────────────
    public boolean isAdmin()            { return roleId == 1; }
    public boolean isManager()          { return roleId == 2; }
    public boolean isWarehouseManager() { return roleId == 3; }
    public boolean isStaff()            { return roleId == 4; }
    public boolean isActive()           { return "ACTIVE".equalsIgnoreCase(status); }
}

