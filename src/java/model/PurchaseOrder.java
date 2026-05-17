package model;

import java.time.LocalDateTime;
import java.util.List;

public class PurchaseOrder {

    private int           purchaseOrderId;
    private int           supplierId;
    private int           warehouseId;
    private int           createdBy;
    private String        status;       // PENDING / APPROVED / COMPLETED / CANCELLED
    private LocalDateTime orderDate;
    private String        note;

    // ── Joined fields ────────────────────────────────────────────
    private String supplierName;
    private String warehouseName;
    private String createdByName;
    private List<PurchaseOrderDetail> details;

    public PurchaseOrder() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getPurchaseOrderId() { return purchaseOrderId; }
    public int           getSupplierId()      { return supplierId; }
    public int           getWarehouseId()     { return warehouseId; }
    public int           getCreatedBy()       { return createdBy; }
    public String        getStatus()          { return status; }
    public LocalDateTime getOrderDate()       { return orderDate; }
    public String        getNote()            { return note; }
    public String        getSupplierName()    { return supplierName; }
    public String        getWarehouseName()   { return warehouseName; }
    public String        getCreatedByName()   { return createdByName; }
    public List<PurchaseOrderDetail> getDetails() { return details; }

    // ── Setters ─────────────────────────────────────────────────
    public void setPurchaseOrderId(int id)             { this.purchaseOrderId = id; }
    public void setSupplierId(int supplierId)          { this.supplierId      = supplierId; }
    public void setWarehouseId(int warehouseId)        { this.warehouseId     = warehouseId; }
    public void setCreatedBy(int createdBy)            { this.createdBy       = createdBy; }
    public void setStatus(String status)               { this.status          = status; }
    public void setOrderDate(LocalDateTime orderDate)  { this.orderDate       = orderDate; }
    public void setNote(String note)                   { this.note            = note; }
    public void setSupplierName(String supplierName)   { this.supplierName    = supplierName; }
    public void setWarehouseName(String warehouseName) { this.warehouseName   = warehouseName; }
    public void setCreatedByName(String name)          { this.createdByName   = name; }
    public void setDetails(List<PurchaseOrderDetail> d){ this.details         = d; }
}

