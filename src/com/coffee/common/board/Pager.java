package com.coffee.common.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class Pager {
	private int currentPage = 1; // 현재 유저가 보고 있는 페이지
	private int totalRecord; //총 레코드 수
	private int pageSize; // 한 페이지에 보여질 레코드 수
	private int totalPage; // 총 페이지 수
	private int blockSize; // 페이지가 넘쳐 흐르는걸 방지하기 위해 페이지 넘버의 크기를 정하는 수
	private int firstPage; // 페이지 넘버 범위의 처음
	private int lastPage; // 페이지 넘버 범위의 마지막
	private int curPos; // 
	private int num; // no.
	
	public void init(HttpServletRequest request, List list, int pageSize, int blockSize) {
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		totalRecord = list.size();
		this.pageSize = pageSize;
		totalPage = (int)Math.ceil((float)totalRecord/this.pageSize);
		this.blockSize = blockSize;
		firstPage = currentPage - ((currentPage-1)%this.blockSize);
		lastPage = firstPage + this.blockSize - 1;
		curPos = (currentPage - 1) * this.pageSize;
		num = totalRecord - curPos;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getBlockSize() {
		return blockSize;
	}

	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}

	public int getFirstPage() {
		return firstPage;
	}

	public void setFirstPage(int firstPage) {
		this.firstPage = firstPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public int getCurPos() {
		return curPos;
	}

	public void setCurPos(int curPos) {
		this.curPos = curPos;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	
}
