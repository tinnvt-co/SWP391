package model;

public class PurchaseRequestDetail {

    private int     detailId;
    private int     purchaseRequestId;
    private Integer partId;
    private String  itemName;
    private int     quantity;

    // ── Joined fields ────────────────────────────────────────────
    private String partName;

    public PurchaseRequestDetail() {}

    // ── Getters ─────────────────────────────────────────────────
    public int     getDetailId()          { return detailId; }
    public int     getPurchaseRequestId() { return purchaseRequestId; }
    public Integer getPartId()            { return partId; }
    public String  getItemName()          { return itemName; }
    public int     getQuantity()          { return quantity; }
    public String  getPartName()          { return partName; }

    // ── Setters ─────────────────────────────────────────────────
    public void setDetailId(int detailId)                  { this.detailId          = detailId; }
    public void setPurchaseRequestId(int purchaseRequestId){ this.purchaseRequestId = purchaseRequestId; }
    public void setPartId(Integer partId)                  { this.partId            = partId; }
    public void setItemName(String itemName)               { this.itemName          = itemName; }
    public void setQuantity(int quantity)                  { this.quantity          = quantity; }
    public void setPartName(String partName)               { this.partName          = partName; }
}

