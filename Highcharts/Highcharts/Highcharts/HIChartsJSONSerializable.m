//
//  HIChartsJSONSerializable.m
//  Highcharts
//
//  Created by krzysiek on 20.02.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import "HIChartsJSONSerializable.h"
#import "HIChartsJSONSerializableSubclass.h"

@interface HIChartsJSONSerializable ()
@property (nonatomic, assign) BOOL isUpdated;
@property (nonatomic, strong) NSMutableSet *setUppedAttributes;
@property (nonatomic, strong) NSMutableArray *currentObservers;
@end

@implementation HIChartsJSONSerializable

-(instancetype)init {
    if (self = [super init]) {
        self.setUppedAttributes = [[NSMutableSet alloc] init];
        self.currentObservers = [[NSMutableArray alloc] init];
        self.uuid = [[[NSUUID UUID] UUIDString] componentsSeparatedByString:@"-"][0];
        return self;
    }
    return nil;
}

- (void)dealloc {
    [self removeObservers];
}

-(void)removeObservers {
    for (id object in self.currentObservers) {
        [object removeObserver:self forKeyPath:@"isUpdated"];
        [object removeObserver:self forKeyPath:@"jsClassMethod"];
    }
}

-(NSDictionary *)getParams {
    return [[NSDictionary alloc] init];
}

#pragma mark - Update functions

-(void)setUpdated:(BOOL)update {
    [self willChangeValueForKey:@"isUpdated"];
    self.isUpdated = update;
    [self didChangeValueForKey:@"isUpdated"];
}

-(void)updateHIObject:(HIChartsJSONSerializable *)oldValue newValue:(HIChartsJSONSerializable *)newValue propertyName:(NSString *)propertyName {
    if (oldValue) {
        [oldValue removeObserver:self forKeyPath:@"isUpdated"];
        [oldValue removeObserver:self forKeyPath:@"jsClassMethod"];
        [self.currentObservers removeObject:oldValue];
        
        [self setUpdated:YES];
        
        if (newValue) {
            [newValue addObserver:self forKeyPath:@"jsClassMethod" options:NSKeyValueObservingOptionNew context:NULL];
            [newValue addObserver:self forKeyPath:@"isUpdated" options:NSKeyValueObservingOptionNew context:NULL];
            [self.currentObservers addObject:newValue];
        }
    }
    else if (newValue) {
        if ([self.setUppedAttributes containsObject:propertyName]) {
            [self setUpdated:YES];
        }
        
        [self.setUppedAttributes addObject:propertyName];
        
        [newValue addObserver:self forKeyPath:@"isUpdated" options:NSKeyValueObservingOptionNew context:NULL];
        [newValue addObserver:self forKeyPath:@"jsClassMethod" options:NSKeyValueObservingOptionNew context:NULL];
        [self.currentObservers addObject:newValue];
    }
    
    [self setUpdated:NO];
}

-(void)updateNSObject:(NSObject *)oldValue newValue:(NSObject *)newValue propertyName:(NSString *)propertyName {
    if ([self.setUppedAttributes containsObject:propertyName]) {
        if (![oldValue isEqual:newValue]) {
            [self setUpdated:YES];
        }
    }
    else {
        [self.setUppedAttributes addObject:propertyName];
    }
    
    [self setUpdated:NO];
}

-(void)updateArrayObject:(NSArray<NSObject *> *)oldValue newValue:(NSArray<NSObject *> *)newValue propertyName:(NSString *)propertyName {
    if (oldValue) {
        for (id object in oldValue) {
            if ([object isKindOfClass:[HIChartsJSONSerializable class]]) {
                [object removeObserver:self forKeyPath:@"isUpdated"];
                [object removeObserver:self forKeyPath:@"jsClassMethod"];
                [self.currentObservers removeObject:object];
            }
        }
        
        [self setUpdated:YES];
        
        if (newValue) {
            for (id object in newValue) {
                if ([object isKindOfClass:[HIChartsJSONSerializable class]]) {
                    [object addObserver:self forKeyPath:@"isUpdated" options:NSKeyValueObservingOptionNew context:NULL];
                    [object addObserver:self forKeyPath:@"jsClassMethod" options:NSKeyValueObservingOptionNew context:NULL];
                    [self.currentObservers addObject:object];
                }
            }
        }
    }
    else if (newValue) {
        if ([self.setUppedAttributes containsObject:propertyName]) {
            [self setUpdated:YES];
        }
        
        [self.setUppedAttributes addObject:propertyName];
        
        for (id object in newValue) {
            if ([object isKindOfClass:[HIChartsJSONSerializable class]]) {
                [object addObserver:self forKeyPath:@"isUpdated" options:NSKeyValueObservingOptionNew context:NULL];
                [object addObserver:self forKeyPath:@"jsClassMethod" options:NSKeyValueObservingOptionNew context:NULL];
                [self.currentObservers addObject:object];
            }
        }
    }
    
    [self setUpdated:NO];
}

#pragma mark - NSKeyValueObserving

+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key {
    return NO;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"jsClassMethod"]) {
        NSDictionary *kChangeNew = [change valueForKey:@"new"];
        NSLog(@"IT IS jsClassMethod FROM KVO : %@", kChangeNew);
        NSLog(@"MY PRIVATE ID IS : %@", self.uuid);
        [self setJsClassMethod:kChangeNew];
    }
    else {
        NSString *kChangeNew = [change valueForKey:@"new"];
        BOOL value = kChangeNew.boolValue;
        [self setUpdated:value];
    }
}

- (void)setJsClassMethod:(NSDictionary *)jsClassMethod {
    [self willChangeValueForKey:@"jsClassMethod"];
    _jsClassMethod = jsClassMethod;
    [self didChangeValueForKey:@"jsClassMethod"];
}

- (id)copyWithZone:(NSZone *)zone {
    HIChartsJSONSerializable *copy = [[HIChartsJSONSerializable alloc] init];
    return copy;
}

@end
