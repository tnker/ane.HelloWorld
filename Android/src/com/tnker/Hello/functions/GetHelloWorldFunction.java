package com.tnker.Hello.functions;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;

public class GetHelloWorldFunction implements FREFunction {

	@Override
	public FREObject call(FREContext arg0, FREObject[] arg1) {
		try {
			return FREObject.newObject("Hello World");
		} catch (FREWrongThreadException e) {
			e.printStackTrace();
			return null;
		}
	}

}
