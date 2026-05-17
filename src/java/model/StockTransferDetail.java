package model;

public class StockTransferDetail {

    private int     detailId;
    private int     transferId;
    private String  itemType;     // GENERATOR / PART
    private Integer generatorId;
    private Integer partId;
    private int     quantity;

    // ── Joined fields ────────────────────────────────────────────
    private String generatorName;
    private String partName;

    public StockTransferDetail() {}

    // ── Getters ─────────────────────────────────────────────────
    public int     getDetailId()     { return detailId; }
    public int     getTransferId()   { return transferId; }
    public String  getItemType()     { return itemType; }
    public Integer getGeneratorId()  { return generatorId; }
    public Integer getPartId()       { return partId; }
    public int     getQuantity()     { return quantity; }
    public String  getGeneratorName(){ return generatorName; }
    public String  getPartName()     { return partName; }

    // ── Setters ─────────────────────────────────────────────────
    public void setDetailId(int detailId)           { this.detailId     = detailId; }
    public void setTransferId(int transferId)       { this.transferId   = transferId; }
    public void setItemType(String itemType)        { this.itemType     = itemType; }
    public void setGeneratorId(Integer generatorId) { this.generatorId  = generatorId; }
    public void setPartId(Integer partId)           { this.partId       = partId; }
    public void setQuantity(int quantity)           { this.quantity     = quantity; }
    public void setGeneratorName(String name)       { this.generatorName = name; }
    public void setPartName(String name)            { this.partName     = name; }
}

