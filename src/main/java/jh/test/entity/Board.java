package jh.test.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Entity
@Data
public class Board {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)  // AUTO DB에 맞게 자동증가
	private Long idx;
	private String title;
	
	@Column(length = 2000)
	private String content;
	
	@Column(updatable = false)
	private String writer;
	
	@Column(insertable=false, updatable = false, columnDefinition = "datetime default now()") // 컬럼에 대한 설정
	private Date indate;
	
	@Column(insertable=false, updatable = false, columnDefinition = "int default 0")
	private Long count;
	
	private String boardpass;

	@Override
	public String toString() {
		return "Board [idx=" + idx + ", title=" + title + ", content=" + content + ", writer=" + writer + ", indate="
				+ indate + ", count=" + count + ", boardpass=" + boardpass + "]";
	}
	
	
	
}
