//
//  HexColor.m
//  Highcharts
//
//  Created by krzysiek on 14.02.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HIHexColor.h"

@implementation HIHexColor

-(instancetype)initWithString:(NSString *)string {
    if (self = [super init]) {
        self.string = string;
        return self;
    }
    else {
        return nil;
    }
}

-(NSString *)getString {
    return self.string;
}

@end
