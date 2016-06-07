//
//  {{CLASS_NAME}}.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OptionsProtocol.h"

@interface {{CLASS_NAME}} : NSObject <OptionsProtocol>

@end

@implementation {{CLASS_NAME}}

+ (NSDictionary*)options {
    
    return {{OPTIONS}}
}

@end