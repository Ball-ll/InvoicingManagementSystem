package com.entitys;

import java.util.Date;
/**
 * 用户信息实体
 * @author 丸子'
 *
 */
public class Users_infoEntity {

	private String users_id;// ` VARCHAR(100) DEFAULT NULL,
	private String users_zhanghao;// ` VARCHAR(100) DEFAULT NULL,
	private String users_niceng;// ` VARCHAR(100) DEFAULT NULL,
	private String users_touxiang;// ` TEXT DEFAULT NULL,
	private String users_pws;// ` VARCHAR(100) DEFAULT NULL,
	private String users_name;// ` VARCHAR(100) DEFAULT NULL,
	private String users_sex;// ` VARCHAR(100) DEFAULT NULL,
	private String users_birth;// ` VARCHAR(100) DEFAULT NULL,
	private String users_mail;// ` VARCHAR(100) DEFAULT NULL,
	private String users_phone;// ` VARCHAR(100) DEFAULT NULL,
	private String users_address;// ` VARCHAR(100) DEFAULT NULL,
	private Date users_zc_time;// ` DATE DEFAULT NULL,
	private Date users_dl_time;// DATETIME DEFAULT NULL,
	// 日期格式转换（虚拟字段）
	private String zh_users_zc_time;// ` DATE DEFAULT NULL,
	private String zh_users_dl_time;// DATETIME DEFAULT NULL,
	private String users_dl_address;// VARCHAR(100)DEFAULT NULL,
	private String users_dl_ip;// VARCHAR(100) DEFAULT NULL,
	private String limits;
	private int offset = 0;
	private int limit = 5;

	private int allPageNumbers;

	public Users_infoEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Users_infoEntity(String users_id, String users_zhanghao, String users_niceng, String users_touxiang,
			String users_pws, String users_name, String users_sex, String users_birth, String users_mail,
			String users_phone, String users_address, Date users_zc_time, Date users_dl_time, String zh_users_zc_time,
			String zh_users_dl_time, String users_dl_address, String users_dl_ip, String limits, int offset, int limit,
			int allPageNumbers) {
		super();
		this.users_id = users_id;
		this.users_zhanghao = users_zhanghao;
		this.users_niceng = users_niceng;
		this.users_touxiang = users_touxiang;
		this.users_pws = users_pws;
		this.users_name = users_name;
		this.users_sex = users_sex;
		this.users_birth = users_birth;
		this.users_mail = users_mail;
		this.users_phone = users_phone;
		this.users_address = users_address;
		this.users_zc_time = users_zc_time;
		this.users_dl_time = users_dl_time;
		this.zh_users_zc_time = zh_users_zc_time;
		this.zh_users_dl_time = zh_users_dl_time;
		this.users_dl_address = users_dl_address;
		this.users_dl_ip = users_dl_ip;
		this.limits = limits;
		this.offset = offset;
		this.limit = limit;
		this.allPageNumbers = allPageNumbers;
	}

	@Override
	public String toString() {
		return "Users_infoEntity [users_id=" + users_id + ", users_zhanghao=" + users_zhanghao + ", users_niceng="
				+ users_niceng + ", users_touxiang=" + users_touxiang + ", users_pws=" + users_pws + ", users_name="
				+ users_name + ", users_sex=" + users_sex + ", users_birth=" + users_birth + ", users_mail="
				+ users_mail + ", users_phone=" + users_phone + ", users_address=" + users_address + ", users_zc_time="
				+ users_zc_time + ", users_dl_time=" + users_dl_time + ", zh_users_zc_time=" + zh_users_zc_time
				+ ", zh_users_dl_time=" + zh_users_dl_time + ", users_dl_address=" + users_dl_address + ", users_dl_ip="
				+ users_dl_ip + ", limits=" + limits + ", offset=" + offset + ", limit=" + limit + ", allPageNumbers="
				+ allPageNumbers + "]";
	}

	public String getUsers_id() {
		return users_id;
	}

	public void setUsers_id(String users_id) {
		this.users_id = users_id;
	}

	public String getUsers_zhanghao() {
		return users_zhanghao;
	}

	public void setUsers_zhanghao(String users_zhanghao) {
		this.users_zhanghao = users_zhanghao;
	}

	public String getUsers_niceng() {
		return users_niceng;
	}

	public void setUsers_niceng(String users_niceng) {
		this.users_niceng = users_niceng;
	}

	public String getUsers_touxiang() {
		return users_touxiang;
	}

	public void setUsers_touxiang(String users_touxiang) {
		this.users_touxiang = users_touxiang;
	}

	public String getUsers_pws() {
		return users_pws;
	}

	public void setUsers_pws(String users_pws) {
		this.users_pws = users_pws;
	}

	public String getUsers_name() {
		return users_name;
	}

	public void setUsers_name(String users_name) {
		this.users_name = users_name;
	}

	public String getUsers_sex() {
		return users_sex;
	}

	public void setUsers_sex(String users_sex) {
		this.users_sex = users_sex;
	}

	public String getUsers_birth() {
		return users_birth;
	}

	public void setUsers_birth(String users_birth) {
		this.users_birth = users_birth;
	}

	public String getUsers_mail() {
		return users_mail;
	}

	public void setUsers_mail(String users_mail) {
		this.users_mail = users_mail;
	}

	public String getUsers_phone() {
		return users_phone;
	}

	public void setUsers_phone(String users_phone) {
		this.users_phone = users_phone;
	}

	public String getUsers_address() {
		return users_address;
	}

	public void setUsers_address(String users_address) {
		this.users_address = users_address;
	}

	public Date getUsers_zc_time() {
		return users_zc_time;
	}

	public void setUsers_zc_time(Date users_zc_time) {
		this.users_zc_time = users_zc_time;
	}

	public Date getUsers_dl_time() {
		return users_dl_time;
	}

	public void setUsers_dl_time(Date users_dl_time) {
		this.users_dl_time = users_dl_time;
	}

	public String getZh_users_zc_time() {
		return zh_users_zc_time;
	}

	public void setZh_users_zc_time(String zh_users_zc_time) {
		this.zh_users_zc_time = zh_users_zc_time;
	}

	public String getZh_users_dl_time() {
		return zh_users_dl_time;
	}

	public void setZh_users_dl_time(String zh_users_dl_time) {
		this.zh_users_dl_time = zh_users_dl_time;
	}

	public String getUsers_dl_address() {
		return users_dl_address;
	}

	public void setUsers_dl_address(String users_dl_address) {
		this.users_dl_address = users_dl_address;
	}

	public String getUsers_dl_ip() {
		return users_dl_ip;
	}

	public void setUsers_dl_ip(String users_dl_ip) {
		this.users_dl_ip = users_dl_ip;
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
