package jh.test.entity;

import lombok.Data;

@Data
public class Search extends Pagination{

	private String searchType;
	private String keyword;
}
