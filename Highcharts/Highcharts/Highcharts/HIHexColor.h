//
//  HexColor.h
//  Highcharts
//
//  Created by krzysiek on 14.02.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HIHexColor : NSObject

@property(nonatomic, readwrite) NSString *string;

-(instancetype)initWithString:(NSString *)string;
-(NSString *)getString;

@end
