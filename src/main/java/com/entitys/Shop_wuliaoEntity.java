package com.entitys;

import java.util.Date;
/**
 * 系统物料实体实体
 * @author 丸子'
 *
 */
public class Shop_wuliaoEntity {

	private String shop_wuliao_id;// VARCHAR(100),/*物料id*/
	private String shop_wuliao_name;// VARCHAR(100),/*物料名*/
	private String shop_wuliao_type;// VARCHAR(100),/*物料类型*/
	private String shop_wuliao_guige;// VARCHAR(100),/*物料规格*/
	private String shop_wuliao_danwei;// VARCHAR(100)/*物料单位*/
	private String shop_wuliao_lururen;//                 VARCHAR(100),/*录入人*/
	private Date  shop_wuliao_lurutime ;//               DATE/*录入时间*/

	private String shop_wuliao_qubie;// VARCHAR(100) DEFAULT NULL,
	private String shop_wuliao_leixing;// VARCHAR(100) DEFAULT NULL,
	
	
	private String limits;
	private int    offset = 0;
	private int    limit = 5;
	
	private int allPageNumbers;

	public Shop_wuliaoEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Shop_wuliaoEntity(String shop_wuliao_id, String shop_wuliao_name, String shop_wuliao_type,
			String shop_wuliao_guige, String shop_wuliao_danwei, String shop_wuliao_lururen, Date shop_wuliao_lurutime,
			String shop_wuliao_qubie, String shop_wuliao_leixing, String limits, int offset, int limit,
			int allPageNumbers) {
		super();
		this.shop_wuliao_id = shop_wuliao_id;
		this.shop_wuliao_name = shop_wuliao_name;
		this.shop_wuliao_type = shop_wuliao_type;
		this.shop_wuliao_guige = shop_wuliao_guige;
		this.shop_wuliao_danwei = shop_wuliao_danwei;
		this.shop_wuliao_lururen = shop_wuliao_lururen;
		this.shop_wuliao_lurutime = shop_wuliao_lurutime;
		this.shop_wuliao_qubie = shop_wuliao_qubie;
		this.shop_wuliao_leixing = shop_wuliao_leixing;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumbers = allPageNumbers;
	}

	@Override
	public String toString() {
		return "Shop_wuliaoEntity [shop_wuliao_id=" + shop_wuliao_id + ", shop_wuliao_name=" + shop_wuliao_name
				+ ", shop_wuliao_type=" + shop_wuliao_type + ", shop_wuliao_guige=" + shop_wuliao_guige
				+ ", shop_wuliao_danwei=" + shop_wuliao_danwei + ", shop_wuliao_lururen=" + shop_wuliao_lururen
				+ ", shop_wuliao_lurutime=" + shop_wuliao_lurutime + ", shop_wuliao_qubie=" + shop_wuliao_qubie
				+ ", shop_wuliao_leixing=" + shop_wuliao_leixing + ", limits=" + limits + ", offset=" + offset
				+ ", limit=" + limit + ", allPageNumbers=" + allPageNumbers + "]";
	}

	public String getShop_wuliao_id() {
		return shop_wuliao_id;
	}

	public void setShop_wuliao_id(String shop_wuliao_id) {
		this.shop_wuliao_id = shop_wuliao_id;
	}

	public String getShop_wuliao_name() {
		return shop_wuliao_name;
	}

	public void setShop_wuliao_name(String shop_wuliao_name) {
		this.shop_wuliao_name = shop_wuliao_name;
	}

	public String getShop_wuliao_type() {
		return shop_wuliao_type;
	}

	public void setShop_wuliao_type(String shop_wuliao_type) {
		this.shop_wuliao_type = shop_wuliao_type;
	}

	public String getShop_wuliao_guige() {
		return shop_wuliao_guige;
	}

	public void setShop_wuliao_guige(String shop_wuliao_guige) {
		this.shop_wuliao_guige = shop_wuliao_guige;
	}

	public String getShop_wuliao_danwei() {
		return shop_wuliao_danwei;
	}

	public void setShop_wuliao_danwei(String shop_wuliao_danwei) {
		this.shop_wuliao_danwei = shop_wuliao_danwei;
	}

	public String getShop_wuliao_lururen() {
		return shop_wuliao_lururen;
	}

	public void setShop_wuliao_lururen(String shop_wuliao_lururen) {
		this.shop_wuliao_lururen = shop_wuliao_lururen;
	}

	public Date getShop_wuliao_lurutime() {
		return shop_wuliao_lurutime;
	}

	public void setShop_wuliao_lurutime(Date shop_wuliao_lurutime) {
		this.shop_wuliao_lurutime = shop_wuliao_lurutime;
	}

	public String getShop_wuliao_qubie() {
		return shop_wuliao_qubie;
	}

	public void setShop_wuliao_qubie(String shop_wuliao_qubie) {
		this.shop_wuliao_qubie = shop_wuliao_qubie;
	}

	public String getShop_wuliao_leixing() {
		return shop_wuliao_leixing;
	}

	public void setShop_wuliao_leixing(String shop_wuliao_leixing) {
		this.shop_wuliao_leixing = shop_wuliao_leixing;
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
