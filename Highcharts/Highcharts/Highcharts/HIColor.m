//
//  HIColor.m
//  Highcharts
//
//  Created by krzysiek on 27.02.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HIColor.h"

@implementation HIColor

-(instancetype)initWithHexValue:(NSString *)hex {
    if (self = [super init]) {
        self.string = [NSString stringWithFormat:@"#%@", hex];
        return self;
    }
    else {
        return nil;
    }
}

-(instancetype)initWithRGB:(int)red green:(int)green blue:(int)blue {
    if (self = [super init]) {
        self.string = [NSString stringWithFormat:@"rgb(%d, %d, %d)", red, green, blue];
        return self;
    }
    else {
        return nil;
    }
}

-(instancetype)initWithRGBA:(int)red green:(int)green blue:(int)blue alpha:(double)alpha {
    if (self = [super init]) {
        if (alpha >= 0.0 && alpha <= 1.0) {
            self.string = [NSString stringWithFormat:@"rgba(%d, %d, %d,%f)", red, green, blue, alpha];
        }
        else {
            self.string = [NSString stringWithFormat:@"rgba(%d, %d, %d,%f)", red, green, blue, 1.0];
        }
        return self;
    }
    else {
        return nil;
    }
}

-(instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        self.string = name;
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