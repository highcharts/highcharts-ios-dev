//
//  main.m
//  js2json
//
//  Created by Sebastian Oleniacz on 09.06.2016.
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#ifdef DEBUG
        for (int i = 0; i < argc; i++)
        {
            NSString *str = [NSString stringWithUTF8String:argv[i]];
            NSLog(@"argv[%d] = '%@'", i, str);
        }
#endif
        if (argc != 3)
        {
            printf("Usage: js2json [file in] [file out] \n");
            exit(1);
        }
        
        NSString *fileIN =  [NSString stringWithUTF8String:argv[1]];
        NSString *fileOUT =  [NSString stringWithUTF8String:argv[2]];
        
        if (![[NSFileManager defaultManager] fileExistsAtPath:fileIN]) {
            printf("js2json: file dont exist!, %s \n", [fileIN cStringUsingEncoding:NSUTF8StringEncoding]);
            exit(1);
        }
        
        WebView *vw = [[WebView alloc] init];
        
        NSError *error = nil;
        NSString *contents = [NSString stringWithContentsOfFile:fileIN encoding:NSUTF8StringEncoding error:&error];
#ifdef DEBUG
        NSLog(@"\n%@\n", contents);
#endif
        NSString *script = [NSString stringWithFormat:@"JSON.stringify(%@, null, '    ');", contents];
        
        NSString *jsonString = [vw stringByEvaluatingJavaScriptFromString:script];
        
        if (!jsonString.length) {
            printf("js2json: parsing error on %s \n", [fileIN cStringUsingEncoding:NSUTF8StringEncoding]);
            exit(1);
        }
        
        [jsonString writeToFile:fileOUT atomically:YES encoding:NSUTF8StringEncoding error:nil];
    }
    return 0;
}
