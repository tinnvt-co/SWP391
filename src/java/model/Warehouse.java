package model;

import java.time.LocalDateTime;

public class Warehouse {

    private int           warehouseId;
    private String        warehouseName;
    private String        address;
    private Integer       managerId;
    private String        status;
    private LocalDateTime createdAt;

    // ── Joined fields ────────────────────────────────────────────
    private String managerName;

    public Warehouse() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getWarehouseId()   { return warehouseId; }
    public String        getWarehouseName() { return warehouseName; }
    public String        getAddress()       { return address; }
    public Integer       getManagerId()     { return managerId; }
    public String        getStatus()        { return status; }
    public LocalDateTime getCreatedAt()     { return createdAt; }
    public String        getManagerName()   { return managerName; }

    // ── Setters ─────────────────────────────────────────────────
    public void setWarehouseId(int warehouseId)        { this.warehouseId   = warehouseId; }
    public void setWarehouseName(String warehouseName) { this.warehouseName = warehouseName; }
    public void setAddress(String address)             { this.address       = address; }
    public void setManagerId(Integer managerId)        { this.managerId     = managerId; }
    public void setStatus(String status)               { this.status        = status; }
    public void setCreatedAt(LocalDateTime createdAt)  { this.createdAt     = createdAt; }
    public void setManagerName(String managerName)     { this.managerName   = managerName; }
}

