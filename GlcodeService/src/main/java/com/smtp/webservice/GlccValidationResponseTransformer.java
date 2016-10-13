package com.smtp.webservice;

import org.apache.camel.Body;
import org.apache.camel.Exchange;



public class GlccValidationResponseTransformer {
	
		public void ReponseMapper(@Body GlccValidationRequest request, Exchange exchange){
			GlccValidationResponse response = new GlccValidationResponse();
			String validglcc = "010.000.000.000.000";
			if (request.getGlcc().equals(validglcc)) {
			    response.setResult("Valid");
			    exchange.getIn().setBody(response.getResult()); }  
			else {
				   response.setResult("InValid"+request.getGlcc());
			       exchange.getIn().setBody(response.getResult());	}  	   
			System.out.println("Inside ReponseMapper ::: "+exchange);
		}

} 