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

@interface HIFunction ()
@property (nonatomic, assign) BOOL both;
@property (nonatomic, strong) NSString *closureJSBody;
@end

@implementation HIFunction

-(instancetype)initWithJSFunction:(NSString *)jsFunction {
    if (self = [super init]) {
        self.both = NO;
        self.jsFunction = jsFunction;
        return self;
    }
    else {
        return nil;
    }
}

-(instancetype)initWithClosure:(HIClosure)closure {
    if (self = [super init]) {
        self.both = NO;
        self.closure = closure;
        return self;
    }
    else {
        return nil;
    }
}

-(instancetype)initWithClosure:(HIClosure)closure properties:(NSArray<NSString *> *)properties {
    if (self = [super init]) {
        self.both = NO;
        self.properties = properties;
        self.closure = closure;
        return self;
    }
    else {
        return nil;
    }
}

-(instancetype)initWithClosure:(HIClosure)closure jsFunction:(NSString *)jsFunction {
    if (self = [super init]) {
        self.both = YES;
        self.closure = closure;
        self.jsFunction = jsFunction;
        return self;
    }
    else {
        return nil;
    }
}

-(instancetype)initWithClosure:(HIClosure)closure jsFunction:(NSString *)jsFunction properties:(NSArray<NSString *> *)properties {
    if (self = [super init]) {
        self.both = YES;
        self.properties = properties;
        self.closure = closure;
        self.jsFunction = jsFunction;
        return self;
    }
    else {
        return nil;
    }
}

# pragma mark - Setters/Getters

-(void)setClosureJSBody:(NSString *)closureJSBody {
    if(closureJSBody) {
        _closureJSBody = closureJSBody;
        if(!self.both) {
            self.function = [NSString stringWithFormat:@"function() { %@ }", closureJSBody];
        }
        else if(self.jsFunction) {
            [self setFunction:self.jsFunction];
        }
    }
    else {
        _closureJSBody = nil;
    }
}

-(void)setFunction:(NSString *)function {
    if(self.both && self.closureJSBody) {
        _function = [NSString stringWithFormat: @"__xx__function(event) { %@ return ((%@).bind(this))(event); }__xx__", self.closureJSBody, function];
    }
    else {
        _function = [NSString stringWithFormat: @"__xx__%@__xx__", function];
    }
}

-(void)setJsFunction:(NSString *)jsFunction {
    NSString *oldValue = _jsFunction;
    if (jsFunction) {
        _jsFunction = jsFunction;
        self.function = jsFunction;
    }
    else {
        _jsFunction = nil;
    }
    [self updateNSObject:oldValue newValue:jsFunction propertyName:@"jsFunction"];
}

-(void)setClosure:(HIClosure)closure {
    HIClosure oldValue = _closure;
    if (closure) {
        _closure = closure;
        NSString *neededProperties = [NSString stringWithFormat:@"dictionary['uuid'] = '%@'; ", self.uuid];
        for (NSString* property in self.properties) {
            NSString *param = [NSString stringWithFormat:@"dictionary['%1$@'] = %1$@; ", property];
            neededProperties = [neededProperties stringByAppendingString:param];
        }
        self.closureJSBody = [NSString stringWithFormat:@"var dictionary = {}; %@ iOSEventHandler(dictionary);", neededProperties];
    }
    else {
        _closure = nil;
    }
    [self updateNSObject:oldValue newValue:closure propertyName:@"closure"];
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

-(id)copyWithZone:(NSZone *)zone {
    [super copyWithZone:zone];
    HIFunction *copyFunction = [[HIFunction allocWithZone: zone] init];
    [copyFunction setBoth:self.both];
    copyFunction.closureJSBody = [self.closureJSBody copyWithZone:zone];
    copyFunction.function = [self.function copyWithZone:zone];
    copyFunction.jsFunction = [self.jsFunction copyWithZone:zone];
    copyFunction.closure = [self.closure copyWithZone:zone];
    copyFunction.properties = [self.properties copyWithZone:zone];
    return copyFunction;
}

@end
