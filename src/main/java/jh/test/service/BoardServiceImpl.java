package jh.test.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.querydsl.core.QueryFactory;
import com.querydsl.jpa.impl.JPAQueryFactory;

import jh.test.entity.Board;
import jh.test.entity.QBoard;
import jh.test.entity.Search;
import jh.test.repository.BoardRepository;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardRepository boardRepository;
	
	 @PersistenceContext
	 private EntityManager entityManager;

	 private JPAQueryFactory queryFactory;
	 
	 @Autowired
	 public BoardServiceImpl(EntityManager entityManager) {
	     this.entityManager = entityManager;
	     this.queryFactory = new JPAQueryFactory(entityManager);
	 }
	 
	
	@Override
	public List<Board> getLists(Search search) {
		List<Board> list = boardRepository.findAll();
				//boardRepository.findAll();
		return list;
	}
	
	@Override
	public Long getListCnt(Search search) {
		return boardRepository.count();
	}
	
	@Override
	public Board detail(Long idx) {
		Optional<Board> vo =boardRepository.findById(idx);
		return vo.get();
	}
	
	

	@Override
	public Board tests(long idx) {
		QBoard board = QBoard.board;
        return queryFactory.selectFrom(board)
                .where(board.idx.eq(idx))
                .fetchOne();
	}
}
