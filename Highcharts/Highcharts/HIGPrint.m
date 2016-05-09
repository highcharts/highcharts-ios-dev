//
//  HIGPrint.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGPrint.h"

@interface HIGPrint ()

@property (weak, nonatomic) UIViewController *viewController;

@end

@implementation HIGPrint

- (void)response:(NSDictionary*)params;
{
    NSString *imageBase64 = [params[@"image"] stringByReplacingOccurrencesOfString:@"data:image/png;base64," withString:@""];
    
    NSData *data = [[NSData alloc] initWithBase64EncodedString:imageBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    
    UIImage *image = [UIImage imageWithData:data];
    
    [self action:@[image]];
}

- (void)action:(NSArray*)objects;
{
    if (!objects) {
        return;
    }
    
    UIPrintInteractionController *pc = [UIPrintInteractionController sharedPrintController];
    
    [pc setPrintingItem:objects.firstObject];
    
    UIPrintInteractionCompletionHandler completionHandler = ^(UIPrintInteractionController *printController, BOOL completed, NSError *error) {
        if(!completed && error){
            NSLog(@"Print failed - domain: %@ error code %u", error.domain,
                 error.code);
        }
    };
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        [pc presentFromRect:CGRectMake(self.viewController.view.center.x, self.viewController.view.center.x , 0, 0) inView:self.viewController.view animated:YES completionHandler:completionHandler];
    } else {
        [pc presentAnimated:YES completionHandler:completionHandler];
    }
}

@end
