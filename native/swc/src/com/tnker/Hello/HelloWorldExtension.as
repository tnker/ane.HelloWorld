package com.tnker.Hello
{
	import flash.external.ExtensionContext;

	public class HelloWorldExtension
	{
		private static const EXTENSION_ID:String = "com.tnker.ane";
		private var context:ExtensionContext;
		
		public function HelloWorldExtension()
		{
			context = ExtensionContext.createExtensionContext(EXTENSION_ID,null);
		}
		public function getHelloWorld():String
		{
			return context.call("GetHelloWorld") as String;
		}
		public function dispose():void
		{
			return context.dispose();
		}
	}
}