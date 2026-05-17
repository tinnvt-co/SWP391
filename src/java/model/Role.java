package model;

public class Role {

    private int    roleId;
    private String roleName;
    private String description;
    private String status;

    public Role() {}

    public Role(int roleId, String roleName, String description, String status) {
        this.roleId      = roleId;
        this.roleName    = roleName;
        this.description = description;
        this.status      = status;
    }

    public int    getRoleId()      { return roleId; }
    public String getRoleName()    { return roleName; }
    public String getDescription() { return description; }
    public String getStatus()      { return status; }

    public void setRoleId(int roleId)           { this.roleId      = roleId; }
    public void setRoleName(String roleName)    { this.roleName    = roleName; }
    public void setDescription(String desc)     { this.description = desc; }
    public void setStatus(String status)        { this.status      = status; }

    @Override
    public String toString() {
        return "Role{roleId=" + roleId + ", roleName='" + roleName + "', status='" + status + "'}";
    }
}

