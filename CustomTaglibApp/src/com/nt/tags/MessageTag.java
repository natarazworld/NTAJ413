package com.nt.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MessageTag extends TagSupport {
	
	@Override
	public int doStartTag() throws JspException {
		System.out.println("MessageTag.doStartTag()");
		JspWriter out=null;
		//get Out object
		out=pageContext.getOut();
		try {
			out.println("<h1> Prime number are </h1>");
		}
		catch(IOException ioe) {
			ioe.printStackTrace();
		}
		return SKIP_BODY;
	}//doStartTag()
	
	@Override
	public int doEndTag() throws JspException {
		System.out.println("MessageTag.doEndTag()");
		return EVAL_PAGE;
	}

}
