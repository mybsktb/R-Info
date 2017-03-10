package com.mc.utils;

import java.util.List;

/**
 * @author Administrator
 *
 */
/**
 * @author Administrator
 *
 */
public class SplitPage {
	public SplitPage(){}
	
	public SplitPage(int _size,int _currPage){
		this.currPage = _currPage;
		this.size = _size;
	}
	
	/**
	 * 每页记录数
	 */
	private int size;
	/**
	 * 当前页
	 */
	private int currPage;
	/**
	 * 记录总条数
	 */
	private int count;
	/**
	 * 总页数
	 */
	private int total;
	/**
	 * 数据列表 
	 */
	private List<Object> data;
	
	/**
	 * @return the size
	 */
	public int getSize() {
		return size;
	}

	/**
	 * @param size the size to set
	 */
	public void setSize(int size) {
		this.size = size;
	}

	/**
	 * @return the currPage
	 */
	public int getCurrPage() {
		if(currPage <= 1){
			currPage = 1;
		}
		if(currPage >= count){
			currPage = count;
		}
		return currPage;
	}

	/**
	 * @param currPage the currPage to set
	 */
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	/**
	 * @return the count
	 */
	public int getCount() {
		return count;
	}

	/**
	 * @param count the count to set
	 */
	public void setCount(int count) {
		this.count = count;
	}

	/**
	 * @return the total
	 */
	public int getTotal() {
		if(size!=0){
			if(count%size==0){
				total = count / size;
			} else {
				total = count / size + 1;
			}
		}
		return total;
	}

	/**
	 * @param total the total to set
	 */
	public void setTotal(int total) {
		this.total = total;
	}

	/**
	 * @return the data
	 */
	public List<Object> getData() {
		return data;
	}

	/**
	 * @param data the data to set
	 */
	public void setData(List<Object> data) {
		this.data = data;
	}
	
}
