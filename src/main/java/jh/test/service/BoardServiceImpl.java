package jh.test.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.querydsl.core.types.dsl.BooleanExpression;
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
	public int getListCnt(Search search) {
		QBoard board = QBoard.board;
		BooleanExpression searchExpression = null;

		if(search.getSearchType().equals("title") && search.getKeyword() != null && !search.getKeyword().isEmpty()) {
		    searchExpression = board.title.like(search.getKeyword());
		}

		if(search.getSearchType().equals("content") && search.getKeyword() != null && !search.getKeyword().isEmpty()) {
		    searchExpression = board.content.like(search.getKeyword());
		}
	    return  (int) queryFactory.selectFrom(board)
	    		.where(searchExpression)
	            .fetchCount();
	}
	
	@Override
	public Board detail(Long idx) {
		Optional<Board> vo =boardRepository.findById(idx);
		return vo.get();
	}
	
	

	@Override
	public List<Board> tests(Search search) {
		QBoard board = QBoard.board;
		BooleanExpression searchExpression = null;

		if(search.getSearchType().equals("title") && search.getKeyword() != null && !search.getKeyword().isEmpty()) {
		    searchExpression = board.title.like(search.getKeyword());
		}

		if(search.getSearchType().equals("content") && search.getKeyword() != null && !search.getKeyword().isEmpty()) {
		    searchExpression = board.content.like(search.getKeyword());
		}
        return  queryFactory.selectFrom(board)
        		.where(searchExpression)
                .orderBy(board.idx.asc())
                .offset(search.getStartList())
                .limit(search.getListSize())
                .fetch();
	}
	
	@Override
	public void write(Board vo) {
			boardRepository.save(vo);
	}
	
	@Override
	public void delete(Long idx) {
		boardRepository.deleteById(idx);
	}
	
	@Override
	public void modify(Board vo) {
		boardRepository.save(vo);
	}
}
