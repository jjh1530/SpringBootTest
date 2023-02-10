package jh.test.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import jh.test.entity.Board;

@Repository
public interface BoardRepository  extends JpaRepository<Board, Long> {

}
