package com.entitys;

import java.util.Date;
/**
 * 商品采购审核实体
 * @author 丸子'
 *
 */
public class Shop_caigoushenheiEntity {
	private String shop_caigoushenhei_id;// VARCHAR(100),/*采购审核id*/
	private String shop_caigoushenhei_shop;// VARCHAR(100),/*采购审核物料名*/
	private Double shop_int_price;// INT,/*商品进价*/
	private Integer shop_int_size;// INT,/*商品进货数量*/
	private Double shop_int_allprice;// INT,/*商品进货总价*/
	private String  shop_int_yutime;// DATE,/*预采时间*/
	private String shop_int_shuoming;// VARCHAR(100),/*采购说明*/
	private String shop_caigoushenhei_shenqinren;// VARCHAR(100),/*采购申请人*/
	private String shop_caigoushenhei_shenheiren;// VARCHAR(100),/*采购审核人*/
	private String shop_caigoushenhei_qianming;
	private String shop_caigoushenhei_qianming_lujing;
	private String shop_caigoushenhei_bohui;
	private Date shop_caigoushenhei_time;// DATETIME,/*审核时间*/
	private String shop_caigou_zhuangtai;//
	//虚拟日期格式转换
	private String zhuanyishop_caigoushenhei_time;// DATETIME,/*审核时间*/
	
	private String shop_caigoushenhei_zhuangtai;// VARCHAR(100)/*审核状态*/

	private String limits;
	private int offset = 0;
	private int limit = 5;

	private int allPageNumbers;

	public Shop_caigoushenheiEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Shop_caigoushenheiEntity(String shop_caigoushenhei_id, String shop_caigoushenhei_shop, Double shop_int_price,
			Integer shop_int_size, Double shop_int_allprice, String shop_int_yutime, String shop_int_shuoming,
			String shop_caigoushenhei_shenqinren, String shop_caigoushenhei_shenheiren,
			String shop_caigoushenhei_qianming, String shop_caigoushenhei_qianming_lujing,
			String shop_caigoushenhei_bohui, Date shop_caigoushenhei_time, String shop_caigou_zhuangtai,
			String zhuanyishop_caigoushenhei_time, String shop_caigoushenhei_zhuangtai, String limits, int offset,
			int limit, int allPageNumbers) {
		super();
		this.shop_caigoushenhei_id = shop_caigoushenhei_id;
		this.shop_caigoushenhei_shop = shop_caigoushenhei_shop;
		this.shop_int_price = shop_int_price;
		this.shop_int_size = shop_int_size;
		this.shop_int_allprice = shop_int_allprice;
		this.shop_int_yutime = shop_int_yutime;
		this.shop_int_shuoming = shop_int_shuoming;
		this.shop_caigoushenhei_shenqinren = shop_caigoushenhei_shenqinren;
		this.shop_caigoushenhei_shenheiren = shop_caigoushenhei_shenheiren;
		this.shop_caigoushenhei_qianming = shop_caigoushenhei_qianming;
		this.shop_caigoushenhei_qianming_lujing = shop_caigoushenhei_qianming_lujing;
		this.shop_caigoushenhei_bohui = shop_caigoushenhei_bohui;
		this.shop_caigoushenhei_time = shop_caigoushenhei_time;
		this.shop_caigou_zhuangtai = shop_caigou_zhuangtai;
		this.zhuanyishop_caigoushenhei_time = zhuanyishop_caigoushenhei_time;
		this.shop_caigoushenhei_zhuangtai = shop_caigoushenhei_zhuangtai;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumbers = allPageNumbers;
	}

	@Override
	public String toString() {
		return "Shop_caigoushenheiEntity [shop_caigoushenhei_id=" + shop_caigoushenhei_id + ", shop_caigoushenhei_shop="
				+ shop_caigoushenhei_shop + ", shop_int_price=" + shop_int_price + ", shop_int_size=" + shop_int_size
				+ ", shop_int_allprice=" + shop_int_allprice + ", shop_int_yutime=" + shop_int_yutime
				+ ", shop_int_shuoming=" + shop_int_shuoming + ", shop_caigoushenhei_shenqinren="
				+ shop_caigoushenhei_shenqinren + ", shop_caigoushenhei_shenheiren=" + shop_caigoushenhei_shenheiren
				+ ", shop_caigoushenhei_qianming=" + shop_caigoushenhei_qianming
				+ ", shop_caigoushenhei_qianming_lujing=" + shop_caigoushenhei_qianming_lujing
				+ ", shop_caigoushenhei_bohui=" + shop_caigoushenhei_bohui + ", shop_caigoushenhei_time="
				+ shop_caigoushenhei_time + ", shop_caigou_zhuangtai=" + shop_caigou_zhuangtai
				+ ", zhuanyishop_caigoushenhei_time=" + zhuanyishop_caigoushenhei_time
				+ ", shop_caigoushenhei_zhuangtai=" + shop_caigoushenhei_zhuangtai + ", limits=" + limits + ", offset="
				+ offset + ", limit=" + limit + ", allPageNumbers=" + allPageNumbers + "]";
	}

	public String getShop_caigoushenhei_id() {
		return shop_caigoushenhei_id;
	}

	public void setShop_caigoushenhei_id(String shop_caigoushenhei_id) {
		this.shop_caigoushenhei_id = shop_caigoushenhei_id;
	}

	public String getShop_caigoushenhei_shop() {
		return shop_caigoushenhei_shop;
	}

	public void setShop_caigoushenhei_shop(String shop_caigoushenhei_shop) {
		this.shop_caigoushenhei_shop = shop_caigoushenhei_shop;
	}

	public Double getShop_int_price() {
		return shop_int_price;
	}

	public void setShop_int_price(Double shop_int_price) {
		this.shop_int_price = shop_int_price;
	}

	public Integer getShop_int_size() {
		return shop_int_size;
	}

	public void setShop_int_size(Integer shop_int_size) {
		this.shop_int_size = shop_int_size;
	}

	public Double getShop_int_allprice() {
		return shop_int_allprice;
	}

	public void setShop_int_allprice(Double shop_int_allprice) {
		this.shop_int_allprice = shop_int_allprice;
	}

	public String getShop_int_yutime() {
		return shop_int_yutime;
	}

	public void setShop_int_yutime(String shop_int_yutime) {
		this.shop_int_yutime = shop_int_yutime;
	}

	public String getShop_int_shuoming() {
		return shop_int_shuoming;
	}

	public void setShop_int_shuoming(String shop_int_shuoming) {
		this.shop_int_shuoming = shop_int_shuoming;
	}

	public String getShop_caigoushenhei_shenqinren() {
		return shop_caigoushenhei_shenqinren;
	}

	public void setShop_caigoushenhei_shenqinren(String shop_caigoushenhei_shenqinren) {
		this.shop_caigoushenhei_shenqinren = shop_caigoushenhei_shenqinren;
	}

	public String getShop_caigoushenhei_shenheiren() {
		return shop_caigoushenhei_shenheiren;
	}

	public void setShop_caigoushenhei_shenheiren(String shop_caigoushenhei_shenheiren) {
		this.shop_caigoushenhei_shenheiren = shop_caigoushenhei_shenheiren;
	}

	public String getShop_caigoushenhei_qianming() {
		return shop_caigoushenhei_qianming;
	}

	public void setShop_caigoushenhei_qianming(String shop_caigoushenhei_qianming) {
		this.shop_caigoushenhei_qianming = shop_caigoushenhei_qianming;
	}

	public String getShop_caigoushenhei_qianming_lujing() {
		return shop_caigoushenhei_qianming_lujing;
	}

	public void setShop_caigoushenhei_qianming_lujing(String shop_caigoushenhei_qianming_lujing) {
		this.shop_caigoushenhei_qianming_lujing = shop_caigoushenhei_qianming_lujing;
	}

	public String getShop_caigoushenhei_bohui() {
		return shop_caigoushenhei_bohui;
	}

	public void setShop_caigoushenhei_bohui(String shop_caigoushenhei_bohui) {
		this.shop_caigoushenhei_bohui = shop_caigoushenhei_bohui;
	}

	public Date getShop_caigoushenhei_time() {
		return shop_caigoushenhei_time;
	}

	public void setShop_caigoushenhei_time(Date shop_caigoushenhei_time) {
		this.shop_caigoushenhei_time = shop_caigoushenhei_time;
	}

	public String getShop_caigou_zhuangtai() {
		return shop_caigou_zhuangtai;
	}

	public void setShop_caigou_zhuangtai(String shop_caigou_zhuangtai) {
		this.shop_caigou_zhuangtai = shop_caigou_zhuangtai;
	}

	public String getZhuanyishop_caigoushenhei_time() {
		return zhuanyishop_caigoushenhei_time;
	}

	public void setZhuanyishop_caigoushenhei_time(String zhuanyishop_caigoushenhei_time) {
		this.zhuanyishop_caigoushenhei_time = zhuanyishop_caigoushenhei_time;
	}

	public String getShop_caigoushenhei_zhuangtai() {
		return shop_caigoushenhei_zhuangtai;
	}

	public void setShop_caigoushenhei_zhuangtai(String shop_caigoushenhei_zhuangtai) {
		this.shop_caigoushenhei_zhuangtai = shop_caigoushenhei_zhuangtai;
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
