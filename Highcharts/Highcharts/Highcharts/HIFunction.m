//
//  HIFunction.m
//  Highcharts
//
//  Created by Ihnat Moisieiev on 24.10.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HIFunction.h"

@implementation HIFunction

-(instancetype)initWithFunction:(NSString *)function {
    if (self = [super init]) {
        self.function = function;
        return self;
    }
    else {
        return nil;
    }
}

- (void)setFunction:(NSString *)function {
    if (function) {
        _function = [NSString stringWithFormat: @"__xx__%@__xx__", function];
    }
    else{
        _function = nil;
    }
}

-(id)getFunction {
    if (self.function) {
        return self.function;
    }
    else {
        return nil;
    }
}

@end
