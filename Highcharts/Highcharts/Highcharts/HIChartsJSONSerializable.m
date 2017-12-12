//
//  HIChartsJSONSerializable.m
//  Highcharts
//
//  Created by krzysiek on 20.02.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import "HIChartsJSONSerializable.h"

@implementation HIChartsJSONSerializable

-(instancetype)init {
    if (self = [super init]) {
        self.setUppedAttributes = [[NSMutableSet alloc] init];
        self.currentObservers = [[NSMutableArray alloc] init];
        return self;
    }
    return nil;
}

- (void)dealloc {
    [self removeObservers];
    NSLog(@"DEALLOC!!!!!!!!!");
}

-(void)removeObservers {
    for (NSString *keyPath in self.currentObservers) {
        [self removeObserver:self forKeyPath:keyPath];
        NSLog(@"********* Remove observer for : %@", keyPath);
    }
}

-(NSDictionary *)getParams
{
    return [[NSDictionary alloc] init];
}

#pragma mark - Update functions

-(void)update:(BOOL)update {
    [self willChangeValueForKey:@"isUpdated"];
    self.isUpdated = update;
    [self didChangeValueForKey:@"isUpdated"];
}

-(void)updateHIObject:(HIChartsJSONSerializable *)oldValue newValue:(HIChartsJSONSerializable *)newValue propertyName:(NSString *)propertyName {
    NSString *keyPath = [NSString stringWithFormat:@"%@.isUpdated", propertyName];
    if (oldValue) {
        NSLog(@"HIOPTIONS -- UPDATED %@ OBJECT!", propertyName);
        [self update:YES];
        
        if (newValue) {
            NSLog(@"HIOPTIONS -- %@ -- ADD OBSERVER", keyPath);
            [self addObserver:self forKeyPath:keyPath options:NSKeyValueObservingOptionNew context:NULL];
        }
        else {
            [self.currentObservers removeObject:keyPath];
            NSLog(@"HIOPTIONS -- %@ -- REMOVE OBSERVER", keyPath);
        }
    }
    else if (newValue) {
        if ([self.setUppedAttributes containsObject:propertyName]) {
            NSLog(@"HIOPTIONS -- UPDATED %@ OBJECT!", propertyName);
            [self update:YES];
        }
        
        [self.setUppedAttributes addObject:propertyName];
        [self.currentObservers addObject:keyPath];
        [self addObserver:self forKeyPath:keyPath options:NSKeyValueObservingOptionNew context:NULL];
        NSLog(@"HIOPTIONS -- %@ -- ADD OBSERVER", keyPath);
    }
    
    [self update:NO];
}

-(void)updateNSObject:(NSString *)propertyName {
    if([self.setUppedAttributes containsObject:propertyName]) {
        NSLog(@"%@ -- IT IS NEW TEXT! UPDATED!", [propertyName uppercaseString]);
        [self update:YES];
    }
    else {
        [self.setUppedAttributes addObject:propertyName];
        NSLog(@"%@ -- FIRST SET! ADDED TO SETUPPED ATTRIBUTES SET!", [propertyName uppercaseString]);
    }
    
    [self update:NO];
}

-(void)updateArrayObject:(NSArray<NSObject *> *)oldValue newValue:(NSArray<NSObject *> *)newValue propertyName:(NSString *)propertyName {
    if ([self.setUppedAttributes containsObject:propertyName]) {
        if (![oldValue isEqualToArray:newValue]) {
            NSLog(@"%@ -- UPDATED ARRAY OBJECT!", [propertyName uppercaseString]);
            [self update:YES];
        }
    }
    else {
        [self.setUppedAttributes addObject:propertyName];
        NSLog(@"%@ -- FIRST SET ARRAY OBJECT!", [propertyName uppercaseString]);
    }
    
    [self update:NO];
}

#pragma mark - NSKeyValueObserving

+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key {
    return NO;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSString *kChangeNew = [change valueForKey:@"new"];
    BOOL value = kChangeNew.boolValue;
    NSLog(@"OBSERVER UPDATED %@! TO %@", keyPath, kChangeNew);
    [self update:value];
}

@end
