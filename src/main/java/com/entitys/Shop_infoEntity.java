package com.entitys;
/**
 * 商品信息实体
 * @author 丸子'
 *
 */
public class Shop_infoEntity {
	private String shop_id;// VARCHAR(100) DEFAULT NULL,
	private String shop_name;// VARCHAR(100) DEFAULT NULL,
	private String shop_isbn;// VARCHAR(100) DEFAULT NULL,
	private String shop_produced_time;// VARCHAR(100) DEFAULT NULL,
	private String shop_guarantee_time;// VARCHAR(100) DEFAULT NULL,
	private Double shop_price;// INT(11) DEFAULT NULL,
	private String shop_int_cangku;//
	private Integer shop_size;//
	private String  shop_gongyin_name;//
	
	
	private String limits;
	private int    offset = 0;
	private int    limit = 5;
	
	private int allPageNumbers;

	public Shop_infoEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Shop_infoEntity(String shop_id, String shop_name, String shop_isbn, String shop_produced_time,
			String shop_guarantee_time, Double shop_price, String shop_int_cangku, Integer shop_size,
			String shop_gongyin_name, String limits, int offset, int limit, int allPageNumbers) {
		super();
		this.shop_id = shop_id;
		this.shop_name = shop_name;
		this.shop_isbn = shop_isbn;
		this.shop_produced_time = shop_produced_time;
		this.shop_guarantee_time = shop_guarantee_time;
		this.shop_price = shop_price;
		this.shop_int_cangku = shop_int_cangku;
		this.shop_size = shop_size;
		this.shop_gongyin_name = shop_gongyin_name;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumbers = allPageNumbers;
	}

	@Override
	public String toString() {
		return "Shop_infoEntity [shop_id=" + shop_id + ", shop_name=" + shop_name + ", shop_isbn=" + shop_isbn
				+ ", shop_produced_time=" + shop_produced_time + ", shop_guarantee_time=" + shop_guarantee_time
				+ ", shop_price=" + shop_price + ", shop_int_cangku=" + shop_int_cangku + ", shop_size=" + shop_size
				+ ", shop_gongyin_name=" + shop_gongyin_name + ", limits=" + limits + ", offset=" + offset + ", limit="
				+ limit + ", allPageNumbers=" + allPageNumbers + "]";
	}

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public String getShop_name() {
		return shop_name;
	}

	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}

	public String getShop_isbn() {
		return shop_isbn;
	}

	public void setShop_isbn(String shop_isbn) {
		this.shop_isbn = shop_isbn;
	}

	public String getShop_produced_time() {
		return shop_produced_time;
	}

	public void setShop_produced_time(String shop_produced_time) {
		this.shop_produced_time = shop_produced_time;
	}

	public String getShop_guarantee_time() {
		return shop_guarantee_time;
	}

	public void setShop_guarantee_time(String shop_guarantee_time) {
		this.shop_guarantee_time = shop_guarantee_time;
	}

	public Double getShop_price() {
		return shop_price;
	}

	public void setShop_price(Double shop_price) {
		this.shop_price = shop_price;
	}

	public String getShop_int_cangku() {
		return shop_int_cangku;
	}

	public void setShop_int_cangku(String shop_int_cangku) {
		this.shop_int_cangku = shop_int_cangku;
	}

	public Integer getShop_size() {
		return shop_size;
	}

	public void setShop_size(Integer shop_size) {
		this.shop_size = shop_size;
	}

	public String getShop_gongyin_name() {
		return shop_gongyin_name;
	}

	public void setShop_gongyin_name(String shop_gongyin_name) {
		this.shop_gongyin_name = shop_gongyin_name;
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
