//
//  HIFunction.m
//  Highcharts
//
//  Created by Ihnat Moisieiev on 24.10.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HIFunction.h"
#import "HIFunctionSubclass.h"
#import "HIChartsJSONSerializableSubclass.h"

@implementation HIFunction

-(instancetype)initWithJSFunction:(NSString *)jsFunction {
    if (self = [super init]) {
        self.jsFunction = jsFunction;
        return self;
    }
    else {
        return nil;
    }
}

-(instancetype)initWithClosure:(HIClosure)closure {
    if (self = [super init]) {
        self.closure = closure;
        return self;
    }
    else {
        return nil;
    }
}

-(instancetype)initWithClosure:(HIClosure)closure properties:(NSArray<NSString *> *)properties {
    if (self = [super init]) {
        self.properties = properties;
        self.closure = closure;
        return self;
    }
    else {
        return nil;
    }
}

# pragma mark - Setters/Getters

-(void)setFunction:(NSString *)function {
    _function = [NSString stringWithFormat: @"__xx__%@__xx__", function];
}

-(void)setJsFunction:(NSString *)jsFunction {
    if (jsFunction) {
        self.function = jsFunction;
        _jsFunction = jsFunction;
    }
    else {
        _jsFunction = nil;
    }
    [self updateNSObject:@"jsFunction"];
}

-(void)setClosure:(HIClosure)closure {
    if (closure) {
        _closure = closure;
        _uuid = [[[NSUUID UUID] UUIDString] componentsSeparatedByString:@"-"][0];
        NSString *neededProperties = [NSString stringWithFormat:@"dictionary['uuid'] = '%@'; ", self.uuid];
        for (NSString* property in self.properties) {
            NSString *param = [NSString stringWithFormat:@"dictionary['%1$@'] = this.%1$@; ", property];
            neededProperties = [neededProperties stringByAppendingString:param];
        }
        self.function = [NSString stringWithFormat:@"function() { var dictionary = {}; %@ iOSEventHandler(dictionary); }", neededProperties];
    }
    else {
        _closure = nil;
    }
    [self updateNSObject:@"closure"];
}

-(void)setProperties:(NSArray<NSString *> *)properties {
    if (![self.properties isEqualToArray:properties]) {
        _properties = properties;
        [self setClosure:self.closure];
    }
}

-(id)getFunction {
    if (self.function) {
        return self;
    }
    else {
        return nil;
    }
}

@end
