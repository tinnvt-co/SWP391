package model;

import java.time.LocalDateTime;
import java.util.List;

public class PurchaseRequest {

    private int           purchaseRequestId;
    private int           warehouseId;
    private int           requestedBy;
    private Integer       approvedBy;
    private String        reason;
    private String        status;       // PENDING / APPROVED / REJECTED / ORDERED
    private LocalDateTime createdAt;
    private LocalDateTime approvedAt;

    // ── Joined fields ────────────────────────────────────────────
    private String warehouseName;
    private String requestedByName;
    private String approvedByName;
    private List<PurchaseRequestDetail> details;

    public PurchaseRequest() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getPurchaseRequestId() { return purchaseRequestId; }
    public int           getWarehouseId()       { return warehouseId; }
    public int           getRequestedBy()       { return requestedBy; }
    public Integer       getApprovedBy()        { return approvedBy; }
    public String        getReason()            { return reason; }
    public String        getStatus()            { return status; }
    public LocalDateTime getCreatedAt()         { return createdAt; }
    public LocalDateTime getApprovedAt()        { return approvedAt; }
    public String        getWarehouseName()     { return warehouseName; }
    public String        getRequestedByName()   { return requestedByName; }
    public String        getApprovedByName()    { return approvedByName; }
    public List<PurchaseRequestDetail> getDetails() { return details; }

    // ── Setters ─────────────────────────────────────────────────
    public void setPurchaseRequestId(int id)             { this.purchaseRequestId = id; }
    public void setWarehouseId(int warehouseId)          { this.warehouseId       = warehouseId; }
    public void setRequestedBy(int requestedBy)          { this.requestedBy       = requestedBy; }
    public void setApprovedBy(Integer approvedBy)        { this.approvedBy        = approvedBy; }
    public void setReason(String reason)                 { this.reason            = reason; }
    public void setStatus(String status)                 { this.status            = status; }
    public void setCreatedAt(LocalDateTime createdAt)    { this.createdAt         = createdAt; }
    public void setApprovedAt(LocalDateTime approvedAt)  { this.approvedAt        = approvedAt; }
    public void setWarehouseName(String warehouseName)   { this.warehouseName     = warehouseName; }
    public void setRequestedByName(String name)          { this.requestedByName   = name; }
    public void setApprovedByName(String name)           { this.approvedByName    = name; }
    public void setDetails(List<PurchaseRequestDetail> d){ this.details           = d; }
}

