package com.tnker.Hello;

import java.util.HashMap;
import java.util.Map;


import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.tnker.Hello.functions.GetHelloWorldFunction;

public class HelloWorldContext extends FREContext {

	@Override
	public void dispose() {
		// TODO Auto-generated method stub

	}

	@Override
	public Map<String, FREFunction> getFunctions() {
		HashMap<String, FREFunction> result = new HashMap<String, FREFunction>();
		result.put("GetHelloWorld",new GetHelloWorldFunction());
		return result;
	}

}
