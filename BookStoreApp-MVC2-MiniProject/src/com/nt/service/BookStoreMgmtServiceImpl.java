package com.nt.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.nt.bo.BookBO;
import com.nt.dao.BookStoreDAO;
import com.nt.dao.BookStoreDAOImpl;
import com.nt.dto.BookDTO;

public class BookStoreMgmtServiceImpl implements BookStoreMgmtService {
	private BookStoreDAO dao=null;
	 public BookStoreMgmtServiceImpl() {
		  dao=new BookStoreDAOImpl();
	}

	@Override
	public List<BookDTO> searchBooksByCategories(String[] categories) throws SQLException {
		 StringBuffer sb=null;
		 String cond=null;
		 List<BookBO> listBO=null;
		 List<BookDTO> listDTO=new ArrayList();
		//convert categories[] into  String condtion  like ('java','.net','php') and etc..
		 sb=new StringBuffer("(");
		 for(int i=0;i<categories.length;++i) {
			 if(i==categories.length-1)
				 sb.append("'"+categories[i]+"')");
			 else
				 sb.append("'"+categories[i]+"',");
		 }
		 //convert to String 
		 cond=sb.toString();
		 //use DAO
		 listBO=dao.findBooksByCategory(cond);
		 //convert listBO to listDTO
		 listBO.forEach(bo->{
			 //convert each bo to DTO
			 BookDTO dto=new BookDTO();
			 dto.setBookId(bo.getBookId());
			 dto.setBookName(bo.getBookName());
			 dto.setAuthor(bo.getAuthor());
			 dto.setPrice(bo.getPrice());
			 dto.setPublisher(bo.getPublisher());
			 dto.setStatus(bo.getStatus());
			 dto.setCategory(bo.getCategory());
			 dto.setSerialNo(listDTO.size()+1);
			 listDTO.add(dto);
		 });
		return listDTO;
	}//method
	
}//class
