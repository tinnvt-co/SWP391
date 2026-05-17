package model;

import java.time.LocalDateTime;
import java.util.List;

public class StockTransfer {

    private int           transferId;
    private int           fromWarehouseId;
    private int           toWarehouseId;
    private int           createdBy;
    private Integer       approvedBy;
    private String        status;       // PENDING / APPROVED / REJECTED / COMPLETED
    private LocalDateTime createdAt;
    private LocalDateTime approvedAt;

    // ── Joined fields ────────────────────────────────────────────
    private String fromWarehouseName;
    private String toWarehouseName;
    private String createdByName;
    private String approvedByName;
    private List<StockTransferDetail> details;

    public StockTransfer() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getTransferId()        { return transferId; }
    public int           getFromWarehouseId()   { return fromWarehouseId; }
    public int           getToWarehouseId()     { return toWarehouseId; }
    public int           getCreatedBy()         { return createdBy; }
    public Integer       getApprovedBy()        { return approvedBy; }
    public String        getStatus()            { return status; }
    public LocalDateTime getCreatedAt()         { return createdAt; }
    public LocalDateTime getApprovedAt()        { return approvedAt; }
    public String        getFromWarehouseName() { return fromWarehouseName; }
    public String        getToWarehouseName()   { return toWarehouseName; }
    public String        getCreatedByName()     { return createdByName; }
    public String        getApprovedByName()    { return approvedByName; }
    public List<StockTransferDetail> getDetails() { return details; }

    // ── Setters ─────────────────────────────────────────────────
    public void setTransferId(int transferId)              { this.transferId        = transferId; }
    public void setFromWarehouseId(int fromWarehouseId)    { this.fromWarehouseId   = fromWarehouseId; }
    public void setToWarehouseId(int toWarehouseId)        { this.toWarehouseId     = toWarehouseId; }
    public void setCreatedBy(int createdBy)                { this.createdBy         = createdBy; }
    public void setApprovedBy(Integer approvedBy)          { this.approvedBy        = approvedBy; }
    public void setStatus(String status)                   { this.status            = status; }
    public void setCreatedAt(LocalDateTime createdAt)      { this.createdAt         = createdAt; }
    public void setApprovedAt(LocalDateTime approvedAt)    { this.approvedAt        = approvedAt; }
    public void setFromWarehouseName(String name)          { this.fromWarehouseName = name; }
    public void setToWarehouseName(String name)            { this.toWarehouseName   = name; }
    public void setCreatedByName(String name)              { this.createdByName     = name; }
    public void setApprovedByName(String name)             { this.approvedByName    = name; }
    public void setDetails(List<StockTransferDetail> d)    { this.details           = d; }
}

