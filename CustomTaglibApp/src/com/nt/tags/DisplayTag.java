package com.nt.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class DisplayTag extends TagSupport {
	private  String font;
	private int size=20;
	
	public void setFont(String font) {
		System.out.println("DisplayTag.setFont()");
		this.font = font;
	}

	public void setSize(int size) {
		System.out.println("DisplayTag.setSize()");
		this.size = size;
	}

	@Override
	public int doStartTag() throws JspException {
		System.out.println("DisplayTag.doStartTag()");
		JspWriter out=null;
		//get out object
		out=pageContext.getOut();
		try {
			out.println("<span style='font-family:"+font+";font-size:"+size+"px;'>");
		}
		catch(IOException ioe) {
			ioe.printStackTrace();
		}
		return EVAL_BODY_INCLUDE;
	}
	
	@Override
	public int doEndTag() throws JspException {
		System.out.println("DisplayTag.doEndTag()");
		JspWriter out=null;
		out=pageContext.getOut();
		try {
			out.println("</span>");
		}
		catch(IOException ioe) {
			ioe.printStackTrace();
		}
		return EVAL_PAGE;
	}

}
