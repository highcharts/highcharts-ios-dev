//
//  HIColor.h
//  Highcharts
//
//  Created by krzysiek on 27.02.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HIColor : NSObject

@property(nonatomic, readwrite) NSString *string;
@property(nonatomic, readwrite) NSDictionary *dictionary;
/** 
 * Standard hex color value, for example FFFFFF for black and 000000 for white
 */
-(instancetype)initWithHexValue:(NSString *)string;
/**
 * Values of red, green and blue color in RGB standard: values 0-255
 */
-(instancetype)initWithRGB:(int)red green:(int)green blue:(int)blue;
/**
 * Values of red, green and blue color in RGBa standard. Values for colors: 0-255, alpha: 0-1
 */
-(instancetype)initWithRGBA:(int)red green:(int)green blue:(int)blue alpha:(double)alpha;
/**
 * Standard color names: red, green, black etc.
 */
-(instancetype)initWithName:(NSString *)name;
/**
 * CSS-style linear gradient
 */
-(instancetype)initWithLinearGradient:(NSDictionary *)gradient stops:(NSArray *)stops;
/**
 * CSS-style radial gradient
 */
-(instancetype)initWithRadialGradient:(NSDictionary *)gradient stops:(NSArray *)stops;

-(id)getData;

@end
