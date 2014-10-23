#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface Rapture : CDVPlugin
{}

- (void)captureScreen:(CDVInvokedUrlCommand*)command;

@end