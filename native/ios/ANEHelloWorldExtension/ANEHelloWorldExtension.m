#import "FlashRuntimeExtensions.h"

FREObject GetHelloWorld(FREContext ctx, void* funcData, uint32_t argc, FREObject argv[]) {
  
  const char *str = "HelloWorld";
  
  FREObject retStr;
  FRENewObjectFromUTF8(strlen(str)+1, (const uint8_t *)str, &retStr);
  
  return retStr;
}

void ContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx,
                        uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet) {
  *numFunctionsToTest = 1;
  FRENamedFunction* func = (FRENamedFunction*)malloc(sizeof(FRENamedFunction)*1);
  func[0].name = (const uint8_t*)"GetHelloWorld";
  func[0].functionData = NULL;
  func[0].function = &GetHelloWorld;
  
  *functionsToSet = func;
}

void ContextFinalizer(FREContext ctx) {
  return;
}

void ExtInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet,
                    FREContextFinalizer* ctxFinalizerToSet) {
  *extDataToSet = NULL;
  *ctxInitializerToSet = &ContextInitializer;
  *ctxFinalizerToSet = &ContextFinalizer;
}

void ExtFinalizer(void* extData) {
  return;
}