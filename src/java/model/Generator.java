package model;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class Generator {

    private int           generatorId;
    private int           warehouseId;
    private Integer       supplierId;
    private String        generatorName;
    private String        serialNumber;
    private String        brand;
    private String        powerValue;
    private String        fuelType;
    private String        originType;   // SUPPLIER / TRANSFER / RETURN / OTHER
    private LocalDateTime importDate;
    private BigDecimal    purchasePrice;
    private String        location;
    private String        status;       // IN_STOCK / EXPORTED / MAINTENANCE / UNDER_REPAIR / DAMAGED
    private String        note;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    // ── Joined fields ────────────────────────────────────────────
    private String warehouseName;
    private String supplierName;

    public Generator() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getGeneratorId()   { return generatorId; }
    public int           getWarehouseId()   { return warehouseId; }
    public Integer       getSupplierId()    { return supplierId; }
    public String        getGeneratorName() { return generatorName; }
    public String        getSerialNumber()  { return serialNumber; }
    public String        getBrand()         { return brand; }
    public String        getPowerValue()    { return powerValue; }
    public String        getFuelType()      { return fuelType; }
    public String        getOriginType()    { return originType; }
    public LocalDateTime getImportDate()    { return importDate; }
    public BigDecimal    getPurchasePrice() { return purchasePrice; }
    public String        getLocation()      { return location; }
    public String        getStatus()        { return status; }
    public String        getNote()          { return note; }
    public LocalDateTime getCreatedAt()     { return createdAt; }
    public LocalDateTime getUpdatedAt()     { return updatedAt; }
    public String        getWarehouseName() { return warehouseName; }
    public String        getSupplierName()  { return supplierName; }

    // ── Setters ─────────────────────────────────────────────────
    public void setGeneratorId(int generatorId)          { this.generatorId   = generatorId; }
    public void setWarehouseId(int warehouseId)          { this.warehouseId   = warehouseId; }
    public void setSupplierId(Integer supplierId)        { this.supplierId    = supplierId; }
    public void setGeneratorName(String generatorName)   { this.generatorName = generatorName; }
    public void setSerialNumber(String serialNumber)     { this.serialNumber  = serialNumber; }
    public void setBrand(String brand)                   { this.brand         = brand; }
    public void setPowerValue(String powerValue)         { this.powerValue    = powerValue; }
    public void setFuelType(String fuelType)             { this.fuelType      = fuelType; }
    public void setOriginType(String originType)         { this.originType    = originType; }
    public void setImportDate(LocalDateTime importDate)  { this.importDate    = importDate; }
    public void setPurchasePrice(BigDecimal price)       { this.purchasePrice = price; }
    public void setLocation(String location)             { this.location      = location; }
    public void setStatus(String status)                 { this.status        = status; }
    public void setNote(String note)                     { this.note          = note; }
    public void setCreatedAt(LocalDateTime createdAt)    { this.createdAt     = createdAt; }
    public void setUpdatedAt(LocalDateTime updatedAt)    { this.updatedAt     = updatedAt; }
    public void setWarehouseName(String warehouseName)   { this.warehouseName = warehouseName; }
    public void setSupplierName(String supplierName)     { this.supplierName  = supplierName; }
}

