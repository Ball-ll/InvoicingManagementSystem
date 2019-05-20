package com.entitys;
/**
 * 商品采购实体
 * @author 丸子'
 *
 */
public class Shop_caigouEntity {
	private String shop_caigou_id;//                            VARCHAR(100),/*采购编号*/
	private String shop_name;//                             VARCHAR(100),/*采购物品*/             
	private String shop_id;//                                   VARCHAR(100),/*物品id*/
	private String shop_gongyin_name;//                         VARCHAR(100),/*供应商*/
	private Integer shop_int_price;//                            INT,/*进价*/    
	private Double  shop_int_shijiprice;//                       INT,/*实际进价*/
	private Integer shop_int_size;//                             INT,/*预计数量*/
	private Integer shop_int_shijisize;//                        INT,/*事件数量*/
	private Double shop_int_allprice;//                         INT,/*商品总价*/
	private String shop_int_time;//                             VARCHAR(100),/*采购时间*/                 
	private String shop_int_user;//                             VARCHAR(100),/*采购人*/
	private String shop_int_cangku;//
	private String shop_int_pay;//                              VARCHAR(100),/*支付方式*/
	private String shop_int_payforuser;//                       VARCHAR(100),/*对方收款人*/
	private String shop_int_chajia;//                           VARCHAR(100),/*差价*/
	private String shop_int_chajiastate;//                      VARCHAR(100),/*差价状态*/
	
	
	private String limits;
	private int    offset = 0;
	private int    limit = 5;
	
	private int allPageNumbers;

	public Shop_caigouEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Shop_caigouEntity(String shop_caigou_id, String shop_name, String shop_id, String shop_gongyin_name,
			Integer shop_int_price, Double shop_int_shijiprice, Integer shop_int_size, Integer shop_int_shijisize,
			Double shop_int_allprice, String shop_int_time, String shop_int_user, String shop_int_cangku,
			String shop_int_pay, String shop_int_payforuser, String shop_int_chajia, String shop_int_chajiastate,
			String limits, int offset, int limit, int allPageNumbers) {
		super();
		this.shop_caigou_id = shop_caigou_id;
		this.shop_name = shop_name;
		this.shop_id = shop_id;
		this.shop_gongyin_name = shop_gongyin_name;
		this.shop_int_price = shop_int_price;
		this.shop_int_shijiprice = shop_int_shijiprice;
		this.shop_int_size = shop_int_size;
		this.shop_int_shijisize = shop_int_shijisize;
		this.shop_int_allprice = shop_int_allprice;
		this.shop_int_time = shop_int_time;
		this.shop_int_user = shop_int_user;
		this.shop_int_cangku = shop_int_cangku;
		this.shop_int_pay = shop_int_pay;
		this.shop_int_payforuser = shop_int_payforuser;
		this.shop_int_chajia = shop_int_chajia;
		this.shop_int_chajiastate = shop_int_chajiastate;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumbers = allPageNumbers;
	}

	@Override
	public String toString() {
		return "Shop_caigouEntity [shop_caigou_id=" + shop_caigou_id + ", shop_name=" + shop_name + ", shop_id="
				+ shop_id + ", shop_gongyin_name=" + shop_gongyin_name + ", shop_int_price=" + shop_int_price
				+ ", shop_int_shijiprice=" + shop_int_shijiprice + ", shop_int_size=" + shop_int_size
				+ ", shop_int_shijisize=" + shop_int_shijisize + ", shop_int_allprice=" + shop_int_allprice
				+ ", shop_int_time=" + shop_int_time + ", shop_int_user=" + shop_int_user + ", shop_int_cangku="
				+ shop_int_cangku + ", shop_int_pay=" + shop_int_pay + ", shop_int_payforuser=" + shop_int_payforuser
				+ ", shop_int_chajia=" + shop_int_chajia + ", shop_int_chajiastate=" + shop_int_chajiastate
				+ ", limits=" + limits + ", offset=" + offset + ", limit=" + limit + ", allPageNumbers="
				+ allPageNumbers + "]";
	}

	public String getShop_caigou_id() {
		return shop_caigou_id;
	}

	public void setShop_caigou_id(String shop_caigou_id) {
		this.shop_caigou_id = shop_caigou_id;
	}

	public String getShop_name() {
		return shop_name;
	}

	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public String getShop_gongyin_name() {
		return shop_gongyin_name;
	}

	public void setShop_gongyin_name(String shop_gongyin_name) {
		this.shop_gongyin_name = shop_gongyin_name;
	}

	public Integer getShop_int_price() {
		return shop_int_price;
	}

	public void setShop_int_price(Integer shop_int_price) {
		this.shop_int_price = shop_int_price;
	}

	public Double getShop_int_shijiprice() {
		return shop_int_shijiprice;
	}

	public void setShop_int_shijiprice(Double shop_int_shijiprice) {
		this.shop_int_shijiprice = shop_int_shijiprice;
	}

	public Integer getShop_int_size() {
		return shop_int_size;
	}

	public void setShop_int_size(Integer shop_int_size) {
		this.shop_int_size = shop_int_size;
	}

	public Integer getShop_int_shijisize() {
		return shop_int_shijisize;
	}

	public void setShop_int_shijisize(Integer shop_int_shijisize) {
		this.shop_int_shijisize = shop_int_shijisize;
	}

	public Double getShop_int_allprice() {
		return shop_int_allprice;
	}

	public void setShop_int_allprice(Double shop_int_allprice) {
		this.shop_int_allprice = shop_int_allprice;
	}

	public String getShop_int_time() {
		return shop_int_time;
	}

	public void setShop_int_time(String shop_int_time) {
		this.shop_int_time = shop_int_time;
	}

	public String getShop_int_user() {
		return shop_int_user;
	}

	public void setShop_int_user(String shop_int_user) {
		this.shop_int_user = shop_int_user;
	}

	public String getShop_int_cangku() {
		return shop_int_cangku;
	}

	public void setShop_int_cangku(String shop_int_cangku) {
		this.shop_int_cangku = shop_int_cangku;
	}

	public String getShop_int_pay() {
		return shop_int_pay;
	}

	public void setShop_int_pay(String shop_int_pay) {
		this.shop_int_pay = shop_int_pay;
	}

	public String getShop_int_payforuser() {
		return shop_int_payforuser;
	}

	public void setShop_int_payforuser(String shop_int_payforuser) {
		this.shop_int_payforuser = shop_int_payforuser;
	}

	public String getShop_int_chajia() {
		return shop_int_chajia;
	}

	public void setShop_int_chajia(String shop_int_chajia) {
		this.shop_int_chajia = shop_int_chajia;
	}

	public String getShop_int_chajiastate() {
		return shop_int_chajiastate;
	}

	public void setShop_int_chajiastate(String shop_int_chajiastate) {
		this.shop_int_chajiastate = shop_int_chajiastate;
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
