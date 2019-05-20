package com.entitys;

import java.util.Date;
/**
 * 商品销售实体
 * @author 丸子'
 *
 */
public class Shop_salesEntity {

	private String shop_sales_id;// ` VARCHAR(100) DEFAULT NULL,
	private String shop_sales_shop;// ` VARCHAR(100) DEFAULT NULL,
	private String shop_sales_cangku;// ` VARCHAR(100) DEFAULT NULL,
	private String shop_sales_shop_size;// ` VARCHAR(100) DEFAULT NULL,
	private String shop_sales_shop_danjia;// ` VARCHAR(100) DEFAULT NULL,
	private Double shop_sales_jine;// ` VARCHAR(100) DEFAULT NULL,
	private Date shop_sales_time;// ` DATETIME DEFAULT NULL,
	// 时间格式转换（虚拟字段）
	private String zh_shop_sales_time;// INT(11) DEFAULT NULL
	private String shop_sales_user;// ` VARCHAR(100) DEFAULT NULL

	private String limits;
	private int offset = 0;
	private int limit = 5;

	private int allPageNumbers;

	public Shop_salesEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Shop_salesEntity(String shop_sales_id, String shop_sales_shop, String shop_sales_cangku,
			String shop_sales_shop_size, String shop_sales_shop_danjia, Double shop_sales_jine, Date shop_sales_time,
			String zh_shop_sales_time, String shop_sales_user, String limits, int offset, int limit,
			int allPageNumbers) {
		super();
		this.shop_sales_id = shop_sales_id;
		this.shop_sales_shop = shop_sales_shop;
		this.shop_sales_cangku = shop_sales_cangku;
		this.shop_sales_shop_size = shop_sales_shop_size;
		this.shop_sales_shop_danjia = shop_sales_shop_danjia;
		this.shop_sales_jine = shop_sales_jine;
		this.shop_sales_time = shop_sales_time;
		this.zh_shop_sales_time = zh_shop_sales_time;
		this.shop_sales_user = shop_sales_user;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumbers = allPageNumbers;
	}

	@Override
	public String toString() {
		return "Shop_salesEntity [shop_sales_id=" + shop_sales_id + ", shop_sales_shop=" + shop_sales_shop
				+ ", shop_sales_cangku=" + shop_sales_cangku + ", shop_sales_shop_size=" + shop_sales_shop_size
				+ ", shop_sales_shop_danjia=" + shop_sales_shop_danjia + ", shop_sales_jine=" + shop_sales_jine
				+ ", shop_sales_time=" + shop_sales_time + ", zh_shop_sales_time=" + zh_shop_sales_time
				+ ", shop_sales_user=" + shop_sales_user + ", limits=" + limits + ", offset=" + offset + ", limit="
				+ limit + ", allPageNumbers=" + allPageNumbers + "]";
	}

	public String getShop_sales_id() {
		return shop_sales_id;
	}

	public void setShop_sales_id(String shop_sales_id) {
		this.shop_sales_id = shop_sales_id;
	}

	public String getShop_sales_shop() {
		return shop_sales_shop;
	}

	public void setShop_sales_shop(String shop_sales_shop) {
		this.shop_sales_shop = shop_sales_shop;
	}

	public String getShop_sales_cangku() {
		return shop_sales_cangku;
	}

	public void setShop_sales_cangku(String shop_sales_cangku) {
		this.shop_sales_cangku = shop_sales_cangku;
	}

	public String getShop_sales_shop_size() {
		return shop_sales_shop_size;
	}

	public void setShop_sales_shop_size(String shop_sales_shop_size) {
		this.shop_sales_shop_size = shop_sales_shop_size;
	}

	public String getShop_sales_shop_danjia() {
		return shop_sales_shop_danjia;
	}

	public void setShop_sales_shop_danjia(String shop_sales_shop_danjia) {
		this.shop_sales_shop_danjia = shop_sales_shop_danjia;
	}

	public Double getShop_sales_jine() {
		return shop_sales_jine;
	}

	public void setShop_sales_jine(Double shop_sales_jine) {
		this.shop_sales_jine = shop_sales_jine;
	}

	public Date getShop_sales_time() {
		return shop_sales_time;
	}

	public void setShop_sales_time(Date shop_sales_time) {
		this.shop_sales_time = shop_sales_time;
	}

	public String getZh_shop_sales_time() {
		return zh_shop_sales_time;
	}

	public void setZh_shop_sales_time(String zh_shop_sales_time) {
		this.zh_shop_sales_time = zh_shop_sales_time;
	}

	public String getShop_sales_user() {
		return shop_sales_user;
	}

	public void setShop_sales_user(String shop_sales_user) {
		this.shop_sales_user = shop_sales_user;
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
