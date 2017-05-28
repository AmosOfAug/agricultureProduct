package com.wtu.product.model;

import java.sql.Date;
import java.util.List;

/**
 * User model class
 */
public class User {

    private Integer userId;
    private String userName;
    private String password;
    private String phone;
    private String sex;
    private String role;
    private String avatar;
    private Date createTime;
    public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	private Date updateTime;
    private List<ShoppingAddress> shoppingAddress;
    private Integer identifyId;
    private String businessAddress;
    private String businessDescripe;
    private List<ShoppingType> types;
    
    
	public List<ShoppingAddress> getShoppingAddress() {
		return shoppingAddress;
	}
	public void setShoppingAddress(List<ShoppingAddress> shoppingAddress) {
		this.shoppingAddress = shoppingAddress;
	}
	public Integer getIdentifyId() {
		return identifyId;
	}
	public void setIdentifyId(Integer identifyId) {
		this.identifyId = identifyId;
	}
	public String getBusinessAddress() {
		return businessAddress;
	}
	public void setBusinessAddress(String businessAddress) {
		this.businessAddress = businessAddress;
	}
	public String getBusinessDescripe() {
		return businessDescripe;
	}
	public void setBusinessDescripe(String businessDescripe) {
		this.businessDescripe = businessDescripe;
	}
	
	public List<ShoppingType> getTypes() {
		return types;
	}
	public void setTypes(List<ShoppingType> types) {
		this.types = types;
	}
	public Integer getUserId() {
        return userId;
    }
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }
    public String getAvatar() {
        return avatar;
    }
    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
    public Date getUpdateTime() {
        return updateTime;
    }
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", password=" + password + ", phone=" + phone
				+ ", sex=" + sex + ", role=" + role + ", avatar=" + avatar
				+ ", updateTime=" + updateTime + ", shoppingAddress=" + shoppingAddress
				+ ", identifyId=" + identifyId + ", businessAddress=" + businessAddress + ", businessDescripe="
				+ businessDescripe + ", typeIds=" + types + "]";
	}
}
