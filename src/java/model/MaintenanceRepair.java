package model;

import java.time.LocalDateTime;

public class MaintenanceRepair {

    private int           repairId;
    private int           generatorId;
    private int           reportedBy;
    private Integer       assignedTo;
    private String        issueDescription;
    private String        repairStatus;    // PENDING / IN_PROGRESS / COMPLETED / CANCELLED
    private LocalDateTime createdAt;
    private LocalDateTime completedAt;

    // ── Joined fields ────────────────────────────────────────────
    private String generatorName;
    private String serialNumber;
    private String reportedByName;
    private String assignedToName;

    public MaintenanceRepair() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getRepairId()         { return repairId; }
    public int           getGeneratorId()      { return generatorId; }
    public int           getReportedBy()       { return reportedBy; }
    public Integer       getAssignedTo()       { return assignedTo; }
    public String        getIssueDescription() { return issueDescription; }
    public String        getRepairStatus()     { return repairStatus; }
    public LocalDateTime getCreatedAt()        { return createdAt; }
    public LocalDateTime getCompletedAt()      { return completedAt; }
    public String        getGeneratorName()    { return generatorName; }
    public String        getSerialNumber()     { return serialNumber; }
    public String        getReportedByName()   { return reportedByName; }
    public String        getAssignedToName()   { return assignedToName; }

    // ── Setters ─────────────────────────────────────────────────
    public void setRepairId(int repairId)                  { this.repairId         = repairId; }
    public void setGeneratorId(int generatorId)            { this.generatorId      = generatorId; }
    public void setReportedBy(int reportedBy)              { this.reportedBy       = reportedBy; }
    public void setAssignedTo(Integer assignedTo)          { this.assignedTo       = assignedTo; }
    public void setIssueDescription(String issueDesc)      { this.issueDescription = issueDesc; }
    public void setRepairStatus(String repairStatus)       { this.repairStatus     = repairStatus; }
    public void setCreatedAt(LocalDateTime createdAt)      { this.createdAt        = createdAt; }
    public void setCompletedAt(LocalDateTime completedAt)  { this.completedAt      = completedAt; }
    public void setGeneratorName(String generatorName)     { this.generatorName    = generatorName; }
    public void setSerialNumber(String serialNumber)       { this.serialNumber     = serialNumber; }
    public void setReportedByName(String name)             { this.reportedByName   = name; }
    public void setAssignedToName(String name)             { this.assignedToName   = name; }
}

