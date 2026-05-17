package model;

import java.time.LocalDateTime;

public class InventoryTransaction {

    private int           transactionId;
    private int           warehouseId;
    private Integer       supplierId;
    private int           createdBy;
    private String        transactionType; 
    private String        itemType;        
    private Integer       generatorId;
    private Integer       partId;
    private int           quantity;
    private LocalDateTime transactionDate;
    private String        note;
    private String        status;

    // ── Joined fields ────────────────────────────────────────────
    private String warehouseName;
    private String supplierName;
    private String createdByName;
    private String generatorName;
    private String partName;

    public InventoryTransaction() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getTransactionId()   { return transactionId; }
    public int           getWarehouseId()     { return warehouseId; }
    public Integer       getSupplierId()      { return supplierId; }
    public int           getCreatedBy()       { return createdBy; }
    public String        getTransactionType() { return transactionType; }
    public String        getItemType()        { return itemType; }
    public Integer       getGeneratorId()     { return generatorId; }
    public Integer       getPartId()          { return partId; }
    public int           getQuantity()        { return quantity; }
    public LocalDateTime getTransactionDate() { return transactionDate; }
    public String        getNote()            { return note; }
    public String        getStatus()          { return status; }
    public String        getWarehouseName()   { return warehouseName; }
    public String        getSupplierName()    { return supplierName; }
    public String        getCreatedByName()   { return createdByName; }
    public String        getGeneratorName()   { return generatorName; }
    public String        getPartName()        { return partName; }

    // ── Setters ─────────────────────────────────────────────────
    public void setTransactionId(int transactionId)        { this.transactionId   = transactionId; }
    public void setWarehouseId(int warehouseId)            { this.warehouseId     = warehouseId; }
    public void setSupplierId(Integer supplierId)          { this.supplierId      = supplierId; }
    public void setCreatedBy(int createdBy)                { this.createdBy       = createdBy; }
    public void setTransactionType(String transactionType) { this.transactionType = transactionType; }
    public void setItemType(String itemType)               { this.itemType        = itemType; }
    public void setGeneratorId(Integer generatorId)        { this.generatorId     = generatorId; }
    public void setPartId(Integer partId)                  { this.partId          = partId; }
    public void setQuantity(int quantity)                  { this.quantity        = quantity; }
    public void setTransactionDate(LocalDateTime date)     { this.transactionDate = date; }
    public void setNote(String note)                       { this.note            = note; }
    public void setStatus(String status)                   { this.status          = status; }
    public void setWarehouseName(String warehouseName)     { this.warehouseName   = warehouseName; }
    public void setSupplierName(String supplierName)       { this.supplierName    = supplierName; }
    public void setCreatedByName(String createdByName)     { this.createdByName   = createdByName; }
    public void setGeneratorName(String generatorName)     { this.generatorName   = generatorName; }
    public void setPartName(String partName)               { this.partName        = partName; }
}

