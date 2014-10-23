
#import <Cordova/CDV.h>
#import "Rapture.h"


@interface Rapture () {}
@end

@implementation Rapture

- (void)captureScreen:(CDVInvokedUrlCommand*)command
{
    UIWindow* win = self.webView.window;
    
    UIGraphicsBeginImageContext(win.bounds.size);
    [win.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"All is good!"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

@end