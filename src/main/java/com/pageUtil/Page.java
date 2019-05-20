package com.pageUtil;
/**
 * 前端页面分页实体
 * @author 丸子'
 *
 */
public class Page {
	private int pageNumber;
	private int pageSize;
	private int total;
	
	private Object obj;

	public Page() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Page(int pageNumber, int pageSize, int total, Object obj) {
		super();
		this.pageNumber = pageNumber;
		this.pageSize = pageSize;
		this.total = total;
		this.obj = obj;
	}

	@Override
	public String toString() {
		return "Page [pageNumber=" + pageNumber + ", pageSize=" + pageSize + ", total=" + total + ", obj=" + obj + "]";
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}

	
	
}
