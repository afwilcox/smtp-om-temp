package com.smtp.webservice;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

@Path("/")

public class GlccValidationImpl {
	@Path("/glCodecombinations")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public GlccValidationResponse getGlcc(@QueryParam("") GlccValidationRequest getGlcc){
		System.out.println("Inside glCodecombinations ::: "+getGlcc );
		return null; 
	}

}
