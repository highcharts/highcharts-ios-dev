//
//  HIColor.m
//  Highcharts
//
//  Created by krzysiek on 27.02.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HIColor.h"
#import "HIChartsJSONSerializableSubclass.h"

@interface HIColor()
@property(nonatomic, readwrite) NSString *string;
@property(nonatomic, readwrite) NSDictionary *dictionary;
@end

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

- (instancetype)initWithUIColor:(UIColor *)color {
    CGFloat r,g,b,a;
    [color getRed:&r green:&g blue:&b alpha:&a];
    int red = (int) r * 255,
        green = (int) g * 255,
        blue = (int) b * 255,
        alpha = (int) a * 255;

    return [self initWithRGBA:red green:green blue:blue alpha:alpha];
}

# pragma mark - Setters/Getters

-(void)setString:(NSString *)string {
    NSString *oldValue = _string;
    _string = string;
    [self updateNSObject:oldValue newValue:string propertyName:@"string"];
}

-(void)setDictionary:(NSDictionary *)dictionary {
    NSDictionary *oldValue = _dictionary;
    _dictionary = dictionary;
    [self updateNSObject:oldValue newValue:dictionary propertyName:@"dictionary"];
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

-(id)copyWithZone:(NSZone *)zone {
    [super copyWithZone:zone];
    HIColor *copyColor = [[HIColor allocWithZone: zone] init];
    copyColor.string = [self.string copyWithZone:zone];
    copyColor.dictionary = [self.dictionary copyWithZone:zone];
    return copyColor;
}

@end
