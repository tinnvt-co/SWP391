package model;

import java.math.BigDecimal;

public class PurchaseOrderDetail {

    private int        detailId;
    private int        purchaseOrderId;
    private Integer    partId;
    private String     itemName;
    private int        quantity;
    private BigDecimal unitPrice;

    // ── Joined fields ────────────────────────────────────────────
    private String partName;

    public PurchaseOrderDetail() {}

    // ── Getters ─────────────────────────────────────────────────
    public int        getDetailId()        { return detailId; }
    public int        getPurchaseOrderId() { return purchaseOrderId; }
    public Integer    getPartId()          { return partId; }
    public String     getItemName()        { return itemName; }
    public int        getQuantity()        { return quantity; }
    public BigDecimal getUnitPrice()       { return unitPrice; }
    public String     getPartName()        { return partName; }

    public BigDecimal getTotalPrice() {
        if (unitPrice == null) return BigDecimal.ZERO;
        return unitPrice.multiply(BigDecimal.valueOf(quantity));
    }

    // ── Setters ─────────────────────────────────────────────────
    public void setDetailId(int detailId)               { this.detailId        = detailId; }
    public void setPurchaseOrderId(int purchaseOrderId) { this.purchaseOrderId = purchaseOrderId; }
    public void setPartId(Integer partId)               { this.partId          = partId; }
    public void setItemName(String itemName)            { this.itemName        = itemName; }
    public void setQuantity(int quantity)               { this.quantity        = quantity; }
    public void setUnitPrice(BigDecimal unitPrice)      { this.unitPrice       = unitPrice; }
    public void setPartName(String partName)            { this.partName        = partName; }
}

