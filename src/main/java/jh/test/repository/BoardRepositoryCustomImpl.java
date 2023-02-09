package jh.test.repository;

import java.util.List;

import com.querydsl.core.types.EntityPath;
import com.querydsl.jpa.impl.JPAQueryFactory;

import jh.test.entity.Board;
import jh.test.entity.QBoard;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class BoardRepositoryCustomImpl implements BoardRepositoryCustom{

	 private final JPAQueryFactory queryFactory;
	 

}
