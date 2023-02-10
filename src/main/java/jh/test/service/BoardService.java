package jh.test.service;

import java.util.List;


import jh.test.entity.Board;
import jh.test.entity.Search;

public interface BoardService {
	
	
	public int getListCnt(Search search);
	
	public Board detail(Long idx);
	
	public List<Board> tests(Search search);
	
	public void write(Board vo);
	
	public void delete(Long idx);
	
	public void modify(Board vo);

}
