package model;

import java.time.LocalDateTime;

public class Supplier {

    private int           supplierId;
    private String        supplierName;
    private String        phone;
    private String        email;
    private String        address;
    private String        status;
    private LocalDateTime createdAt;

    public Supplier() {}

    // ── Getters ─────────────────────────────────────────────────
    public int           getSupplierId()   { return supplierId; }
    public String        getSupplierName() { return supplierName; }
    public String        getPhone()        { return phone; }
    public String        getEmail()        { return email; }
    public String        getAddress()      { return address; }
    public String        getStatus()       { return status; }
    public LocalDateTime getCreatedAt()    { return createdAt; }

    // ── Setters ─────────────────────────────────────────────────
    public void setSupplierId(int supplierId)          { this.supplierId   = supplierId; }
    public void setSupplierName(String supplierName)   { this.supplierName = supplierName; }
    public void setPhone(String phone)                 { this.phone        = phone; }
    public void setEmail(String email)                 { this.email        = email; }
    public void setAddress(String address)             { this.address      = address; }
    public void setStatus(String status)               { this.status       = status; }
    public void setCreatedAt(LocalDateTime createdAt)  { this.createdAt    = createdAt; }
}

