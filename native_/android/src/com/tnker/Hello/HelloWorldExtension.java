package com.tnker.Hello;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

public class HelloWorldExtension implements FREExtension {

	@Override
	public FREContext createContext(String arg0) {
		// TODO Auto-generated method stub
		FREContext context = new HelloWorldContext();
		return context;
	}

	@Override
	public void dispose() {
		// TODO Auto-generated method stub

	}
	
	@Override
	public void initialize() {
		// TODO Auto-generated method stub
		
	}

}
