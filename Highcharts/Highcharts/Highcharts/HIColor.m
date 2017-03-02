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

-(instancetype)initWithString:(NSString *)string {
    if (self = [super init]) {
        self.string = string;
        self.dictionary = nil;
        return self;
    }
    else {
        return nil;
    }
}

-(instancetype)initWithDictionary:(NSDictionary *)dict {
    if (self = [super init]) {
        self.string = nil;
        self.dictionary = dict;
        return self;
    }
    else {
        return nil;
    }
}

-(instancetype)initWithHexValue:(NSString *)hex {
    return [self initWithString:[NSString stringWithFormat:@"#%@", hex]];
}

-(instancetype)initWithRGB:(int)red green:(int)green blue:(int)blue {
    return [self initWithString:self.string = [NSString stringWithFormat:@"rgb(%d, %d, %d)", red, green, blue]];
}

-(instancetype)initWithRGBA:(int)red green:(int)green blue:(int)blue alpha:(double)alpha {
    return [self initWithString:[NSString stringWithFormat:@"rgba(%d, %d, %d,%f)", red, green, blue, alpha]];
}

-(instancetype)initWithName:(NSString *)name {
    return [self initWithString:name];
}

-(instancetype)initWithLinearGradient:(NSDictionary *)gradient stops:(NSArray *)stops {
    return [self initWithDictionary:[NSDictionary dictionaryWithObjectsAndKeys:gradient, @"linearGradient", stops, @"stops", nil]];
}

-(instancetype)initWithRadialGradient:(NSDictionary *)gradient stops:(NSArray *)stops {
    return [self initWithDictionary:[NSDictionary dictionaryWithObjectsAndKeys:gradient, @"radialGradient", stops, @"stops", nil]];
}

-(id)getData {
    if (self.dictionary) {
        return self.dictionary;
    }
    else if (self.string) {
        return self.string;
    }
    else {
        return nil;
    }
}

@end
