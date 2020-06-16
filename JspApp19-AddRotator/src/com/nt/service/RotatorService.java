package com.nt.service;

import java.util.Random;

public class RotatorService {
	private String images[]=new String[] {"images/raymonds.jpg","images/siyarams.jpg","images/arvind.jpg","images/vimal.jpg","images/blackberry.jpg"};
    private String links[]=new String[] {"https://www.raymond.in/",
    		                                                       "https://www.siyaram.com/",
    		                                                       "https://www.arvind.com/",
    		                                                       "https://onlyvimal.co.in/",
    		                                                       "https://blackberrys.com/"};
     private  int counter=0;
     public void nextAdvertisement() {
    	 counter=new Random().nextInt(5);
     }
     
     public  String  getLink() {
    	 return links[counter];
     }
     
     public   String getImage() {
    	 return images[counter];
     }
}
