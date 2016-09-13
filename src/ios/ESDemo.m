#import "ESDemo.h"
#import <Cordova/CDVPlugin.h>


@implementation ESDemo

- (void)greet:(CDVInvokedUrlCommand*)command {
    NSString *message = command.arguments[0];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"" message:message preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:okAction];

    UIViewController *rootController = [UIApplication sharedApplication].delegate.window.rootViewController;
    [rootController presentViewController:alertController animated:YES completion:nil];
}

@end