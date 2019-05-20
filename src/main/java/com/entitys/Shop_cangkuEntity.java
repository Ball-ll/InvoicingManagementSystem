package com.entitys;
/**
 * 商品仓库实体
 * @author 丸子'
 *
 */
public class Shop_cangkuEntity {
	private String shop_cangku_id;// VARCHAR(100) DEFAULT NULL,
	private String shop_cangku_name;// VARCHAR(100) DEFAULT NULL,
	private String shop_cangku_leixing;// VARCHAR(100) DEFAULT NULL,
	private String shop_cangku_user;// VARCHAR(100)DEFAULT NULL,

	private Integer shop_cangku_now_rongliang;//INT DEFAULT NULL,
	private Integer shop_cangku_rongliang;// INT DEFAULT NULL,
	private String shop_cangku_weizhi;// VARCHAR(100) DEFAULT NULL,
	private String shop_cangku_zhuangtai;// VARCHAR(100) DEFAULT NULL,
	private String limits;
	private int offset = 0;
	private int limit = 5;

	private int allPageNumbers;

	public Shop_cangkuEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Shop_cangkuEntity(String shop_cangku_id, String shop_cangku_name, String shop_cangku_leixing,
			String shop_cangku_user, Integer shop_cangku_now_rongliang, Integer shop_cangku_rongliang,
			String shop_cangku_weizhi, String shop_cangku_zhuangtai, String limits, int offset, int limit,
			int allPageNumbers) {
		super();
		this.shop_cangku_id = shop_cangku_id;
		this.shop_cangku_name = shop_cangku_name;
		this.shop_cangku_leixing = shop_cangku_leixing;
		this.shop_cangku_user = shop_cangku_user;
		this.shop_cangku_now_rongliang = shop_cangku_now_rongliang;
		this.shop_cangku_rongliang = shop_cangku_rongliang;
		this.shop_cangku_weizhi = shop_cangku_weizhi;
		this.shop_cangku_zhuangtai = shop_cangku_zhuangtai;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumbers = allPageNumbers;
	}

	@Override
	public String toString() {
		return "Shop_cangkuEntity [shop_cangku_id=" + shop_cangku_id + ", shop_cangku_name=" + shop_cangku_name
				+ ", shop_cangku_leixing=" + shop_cangku_leixing + ", shop_cangku_user=" + shop_cangku_user
				+ ", shop_cangku_now_rongliang=" + shop_cangku_now_rongliang + ", shop_cangku_rongliang="
				+ shop_cangku_rongliang + ", shop_cangku_weizhi=" + shop_cangku_weizhi + ", shop_cangku_zhuangtai="
				+ shop_cangku_zhuangtai + ", limits=" + limits + ", offset=" + offset + ", limit=" + limit
				+ ", allPageNumbers=" + allPageNumbers + "]";
	}

	public String getShop_cangku_id() {
		return shop_cangku_id;
	}

	public void setShop_cangku_id(String shop_cangku_id) {
		this.shop_cangku_id = shop_cangku_id;
	}

	public String getShop_cangku_name() {
		return shop_cangku_name;
	}

	public void setShop_cangku_name(String shop_cangku_name) {
		this.shop_cangku_name = shop_cangku_name;
	}

	public String getShop_cangku_leixing() {
		return shop_cangku_leixing;
	}

	public void setShop_cangku_leixing(String shop_cangku_leixing) {
		this.shop_cangku_leixing = shop_cangku_leixing;
	}

	public String getShop_cangku_user() {
		return shop_cangku_user;
	}

	public void setShop_cangku_user(String shop_cangku_user) {
		this.shop_cangku_user = shop_cangku_user;
	}

	public Integer getShop_cangku_now_rongliang() {
		return shop_cangku_now_rongliang;
	}

	public void setShop_cangku_now_rongliang(Integer shop_cangku_now_rongliang) {
		this.shop_cangku_now_rongliang = shop_cangku_now_rongliang;
	}

	public Integer getShop_cangku_rongliang() {
		return shop_cangku_rongliang;
	}

	public void setShop_cangku_rongliang(Integer shop_cangku_rongliang) {
		this.shop_cangku_rongliang = shop_cangku_rongliang;
	}

	public String getShop_cangku_weizhi() {
		return shop_cangku_weizhi;
	}

	public void setShop_cangku_weizhi(String shop_cangku_weizhi) {
		this.shop_cangku_weizhi = shop_cangku_weizhi;
	}

	public String getShop_cangku_zhuangtai() {
		return shop_cangku_zhuangtai;
	}

	public void setShop_cangku_zhuangtai(String shop_cangku_zhuangtai) {
		this.shop_cangku_zhuangtai = shop_cangku_zhuangtai;
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
