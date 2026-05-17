package model;

import java.time.LocalDateTime;

public class Part {

    private int           partId;
    private int           warehouseId;
    private String        partName;
    private String        partCode;
    private int           quantity;
    private int           minQuantity;
    private String        unit;
    private String        status;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    // ── Joined fields ────────────────────────────────────────────
    private String warehouseName;

    public Part() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getPartId()       { return partId; }
    public int           getWarehouseId()  { return warehouseId; }
    public String        getPartName()     { return partName; }
    public String        getPartCode()     { return partCode; }
    public int           getQuantity()     { return quantity; }
    public int           getMinQuantity()  { return minQuantity; }
    public String        getUnit()         { return unit; }
    public String        getStatus()       { return status; }
    public LocalDateTime getCreatedAt()    { return createdAt; }
    public LocalDateTime getUpdatedAt()    { return updatedAt; }
    public String        getWarehouseName(){ return warehouseName; }

    // ── Setters ─────────────────────────────────────────────────
    public void setPartId(int partId)                  { this.partId       = partId; }
    public void setWarehouseId(int warehouseId)        { this.warehouseId  = warehouseId; }
    public void setPartName(String partName)           { this.partName     = partName; }
    public void setPartCode(String partCode)           { this.partCode     = partCode; }
    public void setQuantity(int quantity)              { this.quantity     = quantity; }
    public void setMinQuantity(int minQuantity)        { this.minQuantity  = minQuantity; }
    public void setUnit(String unit)                   { this.unit         = unit; }
    public void setStatus(String status)               { this.status       = status; }
    public void setCreatedAt(LocalDateTime createdAt)  { this.createdAt    = createdAt; }
    public void setUpdatedAt(LocalDateTime updatedAt)  { this.updatedAt    = updatedAt; }
    public void setWarehouseName(String warehouseName) { this.warehouseName = warehouseName; }

    public boolean isLowStock() {
        return quantity <= minQuantity;
    }
}

