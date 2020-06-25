package com.nt.dao;

import java.sql.SQLException;
import java.util.List;

import com.nt.bo.BookBO;
import com.nt.dto.BookDTO;

public interface BookStoreDAO {
	
	public  List<BookBO>  findBooksByCategory(String cond)throws SQLException;

}
