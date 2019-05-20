package com.entitys;

import java.util.Date;
/**
 * 商品出库实体
 * @author 丸子'
 *
 */
public class Shop_outEntity {
	private String shop_out_id;// VARCHAR(100) DEFAULT NULL,
	private String shop_name;// VARCHAR(100) DEFAULT NULL,
	private Integer shop_before_size;//
	private Integer shop_out_size;// INT(11) DEFAULT NULL,
	private Integer shop_final_size;// INT(11) DEFAULT NULL,
	private String shop_out_user;// VARCHAR(100) DEFAULT NULL,
	private Date shop_out_time;// INT(11) DEFAULT NULL
	// 时间格式转换（虚拟字段）
	private String zh_shop_out_time;// INT(11) DEFAULT NULL

	private String limits;
	private int offset = 0;
	private int limit = 20;

	private int allPageNumbers;

	public Shop_outEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Shop_outEntity(String shop_out_id, String shop_name, Integer shop_before_size, Integer shop_out_size,
			Integer shop_final_size, String shop_out_user, Date shop_out_time, String zh_shop_out_time, String limits,
			int offset, int limit, int allPageNumbers) {
		super();
		this.shop_out_id = shop_out_id;
		this.shop_name = shop_name;
		this.shop_before_size = shop_before_size;
		this.shop_out_size = shop_out_size;
		this.shop_final_size = shop_final_size;
		this.shop_out_user = shop_out_user;
		this.shop_out_time = shop_out_time;
		this.zh_shop_out_time = zh_shop_out_time;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumbers = allPageNumbers;
	}

	@Override
	public String toString() {
		return "Shop_outEntity [shop_out_id=" + shop_out_id + ", shop_name=" + shop_name + ", shop_before_size="
				+ shop_before_size + ", shop_out_size=" + shop_out_size + ", shop_final_size=" + shop_final_size
				+ ", shop_out_user=" + shop_out_user + ", shop_out_time=" + shop_out_time + ", zh_shop_out_time="
				+ zh_shop_out_time + ", limits=" + limits + ", offset=" + offset + ", limit=" + limit
				+ ", allPageNumbers=" + allPageNumbers + "]";
	}

	public String getShop_out_id() {
		return shop_out_id;
	}

	public void setShop_out_id(String shop_out_id) {
		this.shop_out_id = shop_out_id;
	}

	public String getShop_name() {
		return shop_name;
	}

	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}

	public Integer getShop_before_size() {
		return shop_before_size;
	}

	public void setShop_before_size(Integer shop_before_size) {
		this.shop_before_size = shop_before_size;
	}

	public Integer getShop_out_size() {
		return shop_out_size;
	}

	public void setShop_out_size(Integer shop_out_size) {
		this.shop_out_size = shop_out_size;
	}

	public Integer getShop_final_size() {
		return shop_final_size;
	}

	public void setShop_final_size(Integer shop_final_size) {
		this.shop_final_size = shop_final_size;
	}

	public String getShop_out_user() {
		return shop_out_user;
	}

	public void setShop_out_user(String shop_out_user) {
		this.shop_out_user = shop_out_user;
	}

	public Date getShop_out_time() {
		return shop_out_time;
	}

	public void setShop_out_time(Date shop_out_time) {
		this.shop_out_time = shop_out_time;
	}

	public String getZh_shop_out_time() {
		return zh_shop_out_time;
	}

	public void setZh_shop_out_time(String zh_shop_out_time) {
		this.zh_shop_out_time = zh_shop_out_time;
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
