package com.entitys;

import java.util.Date;
/**
 * 商品供应商实体
 * @author 丸子'
 *
 */
public class Shop_gongyinEntity {
	private String shop_gongyin_id;//                      VARCHAR(100),/*供应商id*/
	private String shop_gongyin_name;//                    VARCHAR(100),/*供应商名*/
	private String shop_gongyin_user;//                    VARCHAR(100),/*供应商联系人*/
	private String shop_gongyin_phone;//                   VARCHAR(100),/*供应商联系电话*/
	private String shop_gongyin_address;//                 VARCHAR(100),/*供应商联系地址*/
	private String shop_gongyin_lururen;//                VARCHAR(100),/*录入人*/
	private Date   shop_gongyin_lurutime;//               DATETIME/*录入时间*/
	
	
	private String limits;
	private int    offset = 0;
	private int    limit = 5;
	
	private int allPageNumbers;

	public Shop_gongyinEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Shop_gongyinEntity(String shop_gongyin_id, String shop_gongyin_name, String shop_gongyin_user,
			String shop_gongyin_phone, String shop_gongyin_address, String shop_gongyin_lururen,
			Date shop_gongyin_lurutime, String limits, int offset, int limit, int allPageNumbers) {
		super();
		this.shop_gongyin_id = shop_gongyin_id;
		this.shop_gongyin_name = shop_gongyin_name;
		this.shop_gongyin_user = shop_gongyin_user;
		this.shop_gongyin_phone = shop_gongyin_phone;
		this.shop_gongyin_address = shop_gongyin_address;
		this.shop_gongyin_lururen = shop_gongyin_lururen;
		this.shop_gongyin_lurutime = shop_gongyin_lurutime;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumbers = allPageNumbers;
	}

	@Override
	public String toString() {
		return "Shop_gongyinEntity [shop_gongyin_id=" + shop_gongyin_id + ", shop_gongyin_name=" + shop_gongyin_name
				+ ", shop_gongyin_user=" + shop_gongyin_user + ", shop_gongyin_phone=" + shop_gongyin_phone
				+ ", shop_gongyin_address=" + shop_gongyin_address + ", shop_gongyin_lururen=" + shop_gongyin_lururen
				+ ", shop_gongyin_lurutime=" + shop_gongyin_lurutime + ", limits=" + limits + ", offset=" + offset
				+ ", limit=" + limit + ", allPageNumbers=" + allPageNumbers + "]";
	}

	public String getShop_gongyin_id() {
		return shop_gongyin_id;
	}

	public void setShop_gongyin_id(String shop_gongyin_id) {
		this.shop_gongyin_id = shop_gongyin_id;
	}

	public String getShop_gongyin_name() {
		return shop_gongyin_name;
	}

	public void setShop_gongyin_name(String shop_gongyin_name) {
		this.shop_gongyin_name = shop_gongyin_name;
	}

	public String getShop_gongyin_user() {
		return shop_gongyin_user;
	}

	public void setShop_gongyin_user(String shop_gongyin_user) {
		this.shop_gongyin_user = shop_gongyin_user;
	}

	public String getShop_gongyin_phone() {
		return shop_gongyin_phone;
	}

	public void setShop_gongyin_phone(String shop_gongyin_phone) {
		this.shop_gongyin_phone = shop_gongyin_phone;
	}

	public String getShop_gongyin_address() {
		return shop_gongyin_address;
	}

	public void setShop_gongyin_address(String shop_gongyin_address) {
		this.shop_gongyin_address = shop_gongyin_address;
	}

	public String getShop_gongyin_lururen() {
		return shop_gongyin_lururen;
	}

	public void setShop_gongyin_lururen(String shop_gongyin_lururen) {
		this.shop_gongyin_lururen = shop_gongyin_lururen;
	}

	public Date getShop_gongyin_lurutime() {
		return shop_gongyin_lurutime;
	}

	public void setShop_gongyin_lurutime(Date shop_gongyin_lurutime) {
		this.shop_gongyin_lurutime = shop_gongyin_lurutime;
	}

	public String getLimits() {
		return limits;
	}

	public void setLimits(String limits) {
		this.limits = limits;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getAllPageNumbers() {
		return allPageNumbers;
	}

	public void setAllPageNumbers(int allPageNumbers) {
		this.allPageNumbers = allPageNumbers;
	}

	
	
}
