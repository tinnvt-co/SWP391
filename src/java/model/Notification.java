package model;

import java.time.LocalDateTime;

public class Notification {

    private int           notificationId;
    private int           userId;
    private String        title;
    private String        message;
    private String        type;         // PART_REQUEST / PURCHASE_REQUEST / STOCK_TRANSFER / REPAIR / etc.
    private boolean       isRead;
    private LocalDateTime createdAt;

    // ── Joined fields ────────────────────────────────────────────
    private String userName;

    public Notification() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getNotificationId() { return notificationId; }
    public int           getUserId()         { return userId; }
    public String        getTitle()          { return title; }
    public String        getMessage()        { return message; }
    public String        getType()           { return type; }
    public boolean       isRead()            { return isRead; }
    public LocalDateTime getCreatedAt()      { return createdAt; }
    public String        getUserName()       { return userName; }

    // ── Setters ─────────────────────────────────────────────────
    public void setNotificationId(int notificationId)  { this.notificationId = notificationId; }
    public void setUserId(int userId)                  { this.userId         = userId; }
    public void setTitle(String title)                 { this.title          = title; }
    public void setMessage(String message)             { this.message        = message; }
    public void setType(String type)                   { this.type           = type; }
    public void setRead(boolean isRead)                { this.isRead         = isRead; }
    public void setCreatedAt(LocalDateTime createdAt)  { this.createdAt      = createdAt; }
    public void setUserName(String userName)           { this.userName       = userName; }
}

