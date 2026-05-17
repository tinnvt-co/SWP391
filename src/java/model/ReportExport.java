package model;

import java.time.LocalDateTime;

public class ReportExport {

    private int           reportId;
    private int           createdBy;
    private String        reportName;
    private String        reportType;   // INVENTORY / REPAIR / USER / etc.
    private String        fileType;     // EXCEL / PDF
    private String        filePath;
    private LocalDateTime createdAt;

    // ── Joined fields ────────────────────────────────────────────
    private String createdByName;

    public ReportExport() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getReportId()      { return reportId; }
    public int           getCreatedBy()     { return createdBy; }
    public String        getReportName()    { return reportName; }
    public String        getReportType()    { return reportType; }
    public String        getFileType()      { return fileType; }
    public String        getFilePath()      { return filePath; }
    public LocalDateTime getCreatedAt()     { return createdAt; }
    public String        getCreatedByName() { return createdByName; }

    // ── Setters ─────────────────────────────────────────────────
    public void setReportId(int reportId)              { this.reportId      = reportId; }
    public void setCreatedBy(int createdBy)            { this.createdBy     = createdBy; }
    public void setReportName(String reportName)       { this.reportName    = reportName; }
    public void setReportType(String reportType)       { this.reportType    = reportType; }
    public void setFileType(String fileType)           { this.fileType      = fileType; }
    public void setFilePath(String filePath)           { this.filePath      = filePath; }
    public void setCreatedAt(LocalDateTime createdAt)  { this.createdAt     = createdAt; }
    public void setCreatedByName(String name)          { this.createdByName = name; }
}

