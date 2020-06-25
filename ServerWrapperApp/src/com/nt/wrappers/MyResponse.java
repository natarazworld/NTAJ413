package com.nt.wrappers;

import java.io.CharArrayWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

public class MyResponse extends HttpServletResponseWrapper {
   private HttpServletResponse response;
   private CharArrayWriter writer;
	public MyResponse(HttpServletResponse response) {
		super(response);
		this.response=response;
		writer=new CharArrayWriter();
	}
	
	@Override
		public PrintWriter getWriter() throws IOException {
			PrintWriter pw=null;
			pw=new PrintWriter(writer);   // instread of response obj --we r linking Printwriter with CharArrayWriter  stream 
			return pw;
		}
	
	   @Override
		public String toString() {
			return writer.toString();  // given InMemory Char[] content given by pw.println(-) mehods of web comps
		}

}
