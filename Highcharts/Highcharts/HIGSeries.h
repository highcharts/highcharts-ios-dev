//
//  HIGSeries.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HIGSeries : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSArray <NSNumber *> *data;

@end
