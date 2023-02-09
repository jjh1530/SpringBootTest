package jh.test.service;

import java.util.List;


import jh.test.entity.Board;
import jh.test.entity.Search;

public interface BoardService {
	
	public List<Board> getLists(Search search);
	
	public Long getListCnt(Search search);
	
	public Board detail(Long idx);
	
	public Board tests(long idx);

}
