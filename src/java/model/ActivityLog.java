package model;

import java.time.LocalDateTime;

public class ActivityLog {

    private int           logId;
    private Integer       userId;
    private String        action;
    private String        tableName;
    private Integer       recordId;
    private String        description;
    private LocalDateTime createdAt;

    // ── Joined fields ────────────────────────────────────────────
    private String userName;

    public ActivityLog() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getLogId()      { return logId; }
    public Integer       getUserId()     { return userId; }
    public String        getAction()     { return action; }
    public String        getTableName()  { return tableName; }
    public Integer       getRecordId()   { return recordId; }
    public String        getDescription(){ return description; }
    public LocalDateTime getCreatedAt()  { return createdAt; }
    public String        getUserName()   { return userName; }

    // ── Setters ─────────────────────────────────────────────────
    public void setLogId(int logId)                    { this.logId       = logId; }
    public void setUserId(Integer userId)              { this.userId      = userId; }
    public void setAction(String action)               { this.action      = action; }
    public void setTableName(String tableName)         { this.tableName   = tableName; }
    public void setRecordId(Integer recordId)          { this.recordId    = recordId; }
    public void setDescription(String description)     { this.description = description; }
    public void setCreatedAt(LocalDateTime createdAt)  { this.createdAt   = createdAt; }
    public void setUserName(String userName)           { this.userName    = userName; }
}

