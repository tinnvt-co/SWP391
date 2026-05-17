package model;

import java.time.LocalDateTime;

public class PartRequest {

    private int           requestId;
    private int           warehouseId;
    private int           partId;
    private int           requestedBy;
    private Integer       approvedBy;
    private int           quantity;
    private String        reason;
    private String        status;       // PENDING / APPROVED / REJECTED / FULFILLED
    private LocalDateTime createdAt;
    private LocalDateTime approvedAt;

    // ── Joined fields ────────────────────────────────────────────
    private String warehouseName;
    private String partName;
    private String requestedByName;
    private String approvedByName;

    public PartRequest() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getRequestId()       { return requestId; }
    public int           getWarehouseId()     { return warehouseId; }
    public int           getPartId()          { return partId; }
    public int           getRequestedBy()     { return requestedBy; }
    public Integer       getApprovedBy()      { return approvedBy; }
    public int           getQuantity()        { return quantity; }
    public String        getReason()          { return reason; }
    public String        getStatus()          { return status; }
    public LocalDateTime getCreatedAt()       { return createdAt; }
    public LocalDateTime getApprovedAt()      { return approvedAt; }
    public String        getWarehouseName()   { return warehouseName; }
    public String        getPartName()        { return partName; }
    public String        getRequestedByName() { return requestedByName; }
    public String        getApprovedByName()  { return approvedByName; }

    // ── Setters ─────────────────────────────────────────────────
    public void setRequestId(int requestId)              { this.requestId       = requestId; }
    public void setWarehouseId(int warehouseId)          { this.warehouseId     = warehouseId; }
    public void setPartId(int partId)                    { this.partId          = partId; }
    public void setRequestedBy(int requestedBy)          { this.requestedBy     = requestedBy; }
    public void setApprovedBy(Integer approvedBy)        { this.approvedBy      = approvedBy; }
    public void setQuantity(int quantity)                { this.quantity        = quantity; }
    public void setReason(String reason)                 { this.reason          = reason; }
    public void setStatus(String status)                 { this.status          = status; }
    public void setCreatedAt(LocalDateTime createdAt)    { this.createdAt       = createdAt; }
    public void setApprovedAt(LocalDateTime approvedAt)  { this.approvedAt      = approvedAt; }
    public void setWarehouseName(String warehouseName)   { this.warehouseName   = warehouseName; }
    public void setPartName(String partName)             { this.partName        = partName; }
    public void setRequestedByName(String name)          { this.requestedByName = name; }
    public void setApprovedByName(String name)           { this.approvedByName  = name; }
}

