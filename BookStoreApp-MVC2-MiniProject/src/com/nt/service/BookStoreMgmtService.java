package com.nt.service;

import java.sql.SQLException;
import java.util.List;

import com.nt.dto.BookDTO;

public interface BookStoreMgmtService {
	public  List<BookDTO>  searchBooksByCategories(String[] categories)throws SQLException;

}
