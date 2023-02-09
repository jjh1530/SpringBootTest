package jh.test.entity;

import lombok.Data;

@Data
public class Pagination {

	private int listSize = 10; //초기값
	
	private int rangeSize = 10; //초기값 페이지 개수
	
	private int page; 
	
	private int range;
	
	private Long listCnt;
	
	private int pageCnt;
	
	private int startPage;
	
	private int startList;
	
	private int endPage;
	
	private boolean prev;
	
	private boolean next;
	
	public void pageInfo(int page, int range, Long listCnt) {
		this.page = page;
		this.range = range;
		this.listCnt = listCnt;
		this.pageCnt = (int)Math.ceil(listCnt/listSize)+1;
		this.startPage = (range-1) * rangeSize +1;
		this.endPage = range * rangeSize;
		this.startList = (page-1) * listSize;
		this.prev = range ==1 ? false: true;
		this.next = endPage > pageCnt? false: true;
		
		if(this.endPage >this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next = false;
		}
		
	}
}
