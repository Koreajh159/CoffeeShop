package com.coffee.common.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class Pager {
	private int currentPage = 1; // ���� ������ ���� �ִ� ������
	private int totalRecord; //�� ���ڵ� ��
	private int pageSize; // �� �������� ������ ���ڵ� ��
	private int totalPage; // �� ������ ��
	private int blockSize; // �������� ���� �帣�°� �����ϱ� ���� ������ �ѹ��� ũ�⸦ ���ϴ� ��
	private int firstPage; // ������ �ѹ� ������ ó��
	private int lastPage; // ������ �ѹ� ������ ������
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
