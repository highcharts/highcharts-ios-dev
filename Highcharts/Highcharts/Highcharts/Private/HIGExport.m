//
//  HIGExporting.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGExport.h"

@interface HIGExport ()

@end

@implementation HIGExport

- (void)response:(NSString*)params;
{
    NSString *imageBase64 = [params stringByReplacingOccurrencesOfString:@"data:image/png;base64," withString:@""];
    
    NSData *data = [[NSData alloc] initWithBase64EncodedString:imageBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    
    UIImage *image = [UIImage imageWithData:data];
    
    [self action:@[image]];
}

- (void)action:(NSArray*)objects;
{
    if (!objects) {
        return;
    }
    
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:objects applicationActivities:nil];
    
    if ([activityViewController respondsToSelector:@selector(popoverPresentationController)]) {
        activityViewController.popoverPresentationController.sourceView = self.viewController.view;
        activityViewController.popoverPresentationController.sourceRect = CGRectMake(self.viewController.view.center.x, self.viewController.view.center.x , 0, 0);
    }
    
    [self.viewController presentViewController:activityViewController animated:YES completion:nil];
}

@end
