/*
 * ___PACKAGENAME___
 *
 * Created by ___FULLUSERNAME___ on ___DATE___.
 * Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
*/

#import <Foundation/Foundation.h>
#import "FlashRuntimeExtensions.h"

#define ANE_FUNCTION(f) FREObject (f)(FREContext ctx, void *data, uint32_t argc, FREObject argv[])
#define MAP_FUNCTION(f, data) { (const uint8_t*)(#f), (data), &(f) }
#define DISPATCH_STATUS_EVENT(extensionContext, code, status) FREDispatchStatusEventAsync((extensionContext), (uint8_t*)code, (uint8_t*)status)

/* ___VARIABLE_productName:RFC1034Identifier___ExtInitializer()
 * The extension initializer is called the first time the ActionScript side of the extension
 * calls ExtensionContext.createExtensionContext() for any context.
 *
 * Please note: this should be same as the <initializer> specified in the extension.xml 
*/
void ___VARIABLE_productName:RFC1034Identifier___ExtInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet);

/* ___VARIABLE_productName:RFC1034Identifier___ExtFinalizer()
 * The extension finalizer is called when the runtime unloads the extension. However, it may not always called.
 *
 * Please note: this should be same as the <finalizer> specified in the extension.xml 
*/
void ___VARIABLE_productName:RFC1034Identifier___ExtFinalizer(void* extData);

/* ___VARIABLE_productName:RFC1034Identifier___ContextInitializer()
 * 创建Extionsion的时候会调用
*/
void ___VARIABLE_productName:RFC1034Identifier___ContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet);

/* ___VARIABLE_productName:RFC1034Identifier___ContextFinalizer()
 * Extension被垃圾回收后触发
*/
void ___VARIABLE_productName:RFC1034Identifier___ContextFinalizer(FREContext ctx);


ANE_FUNCTION(test);
