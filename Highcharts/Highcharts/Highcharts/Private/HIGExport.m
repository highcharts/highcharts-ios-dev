//
//  HIGExporting.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGExport.h"

static NSString *const kHIGExportDirectoryName = @"com.highcharts.exports";

@interface HIGExport ()
@property (nonatomic, strong) NSURL *downloadURL;

- (NSString *)exportDirectoryPath;
- (void)clearExportDirectory;
@end

@implementation HIGExport

- (void)response:(NSString*)params filename:(NSString*)filename {
    NSError *error;
    BOOL isWrite = false;

    NSString *filePath;
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];

    NSString *fileName = filename ? filename : @"chart";

    if ([params hasPrefix:@"data:image/png"]) {
        filePath = [docPath stringByAppendingPathComponent:[fileName stringByAppendingString:@".png"]];

        NSString *imageBase64 = [params stringByReplacingOccurrencesOfString:@"data:image/png;base64," withString:@""];
        NSData *imageData = [[NSData alloc] initWithBase64EncodedString:imageBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];

        isWrite = [imageData writeToFile:filePath options:NSDataWritingAtomic error:&error];
    } else if ([params hasPrefix:@"data:application/pdf"]) {
        filePath = [docPath stringByAppendingPathComponent:[fileName stringByAppendingString:@".pdf"]];

        NSString *pdfBase64 = [params stringByReplacingOccurrencesOfString:@"data:application/pdf;filename=generated.pdf;base64," withString:@""];
        NSData *pdfData = [[NSData alloc] initWithBase64EncodedString:pdfBase64 options:NSDataBase64DecodingIgnoreUnknownCharacters];

        isWrite = [pdfData writeToFile:filePath options:NSDataWritingAtomic error:&error];
    } else if ([params hasPrefix:@"data:text/csv"]) {
        filePath = [docPath stringByAppendingPathComponent:[fileName stringByAppendingString:@".csv"]];

        NSString *csvContent = [params stringByReplacingOccurrencesOfString:@"data:text/csv;charset=utf-8," withString:@""];

        isWrite = [csvContent writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:&error];
    }

    if(!isWrite) {
      return;
    }

    [self action:@[[NSURL fileURLWithPath:filePath]]];
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

- (NSString *)exportDirectoryPath {
    NSString *path = [NSTemporaryDirectory() stringByAppendingPathComponent:kHIGExportDirectoryName];
    [[NSFileManager defaultManager] createDirectoryAtPath:path
                             withIntermediateDirectories:YES
                                             attributes:nil
                                                  error:NULL];
    return path;
}

- (void)clearExportDirectory {
    NSString *exportDirectory = [self exportDirectoryPath];
    NSArray<NSString *> *contents = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:exportDirectory error:NULL];
    
    for (NSString *file in contents) {
        [[NSFileManager defaultManager] removeItemAtPath:[exportDirectory stringByAppendingPathComponent:file] error:NULL];
    }
}

#pragma mark - WKDownloadDelegate

- (void)download:(WKDownload *)download decideDestinationUsingResponse:(NSURLResponse *)response suggestedFilename:(NSString *)suggestedFilename completionHandler:(void (^)(NSURL * _Nullable))completionHandler  API_AVAILABLE(ios(15.0)) {
    self.downloadURL = nil;
    [self clearExportDirectory];
    
    NSString *fileName = suggestedFilename.length > 0 ? suggestedFilename : @"chart";
    NSURL *url = [NSURL fileURLWithPath:[[self exportDirectoryPath] stringByAppendingPathComponent:fileName]];
    
    self.downloadURL = url;
    
    completionHandler(url);
}

- (void)downloadDidFinish:(WKDownload *)download  API_AVAILABLE(ios(15.0)) {
  if (!self.downloadURL) {
    return;
  }
  
  UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[self.downloadURL] applicationActivities:nil];
    
  if ([activityViewController respondsToSelector:@selector(popoverPresentationController)]) {
      activityViewController.popoverPresentationController.sourceView = self.viewController.view;
      activityViewController.popoverPresentationController.sourceRect = CGRectMake(self.viewController.view.center.x, self.viewController.view.center.x , 0, 0);
  }
  
  [self.viewController presentViewController:activityViewController animated:YES completion:nil];
}

@end
