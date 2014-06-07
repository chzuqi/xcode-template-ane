/*
 * ___FILENAME___
 * ___PACKAGENAME___
 *
 * Created by ___FULLUSERNAME___ on ___DATE___.
 * Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
 */

#import "___FILEBASENAME___.h"

/* ___VARIABLE_productName:RFC1034Identifier___ExtInitializer()
 * The extension initializer is called the first time the ActionScript side of the extension
 * calls ExtensionContext.createExtensionContext() for any context.
 *
 * Please note: this should be same as the <initializer> specified in the extension.xml 
 */
void ___VARIABLE_productName:RFC1034Identifier___ExtInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet) 
{
    *extDataToSet = NULL;
    *ctxInitializerToSet = &___VARIABLE_productName:RFC1034Identifier___ContextInitializer;
    *ctxFinalizerToSet = &___VARIABLE_productName:RFC1034Identifier___ContextFinalizer;
}

/* ___VARIABLE_productName:RFC1034Identifier___ExtFinalizer()
 * The extension finalizer is called when the runtime unloads the extension. However, it may not always called.
 *
 * Please note: this should be same as the <finalizer> specified in the extension.xml 
 */
void ___VARIABLE_productName:RFC1034Identifier___ExtFinalizer(void* extData) 
{
    // Nothing to clean up.
    return;
}

/* ___VARIABLE_productName:RFC1034Identifier___ContextInitializer()
 * 创建Extionsion的时候会调用
 */
void ___VARIABLE_productName:RFC1034Identifier___ContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet)
{
    
    /* AS端需要调用的函数都在这里列出来
     */
    static FRENamedFunction func[] = 
    {
        MAP_FUNCTION(test, NULL),
    };
    
    *numFunctionsToTest = sizeof(func) / sizeof(FRENamedFunction);
    *functionsToSet = func;
}

/* ___VARIABLE_productName:RFC1034Identifier___ContextFinalizer()
 * Extension被垃圾回收后触发
 */
void ___VARIABLE_productName:RFC1034Identifier___ContextFinalizer(FREContext ctx)
{
    // Nothing to clean up.
    return;
}


ANE_FUNCTION(test)
{
	return NULL;
}

