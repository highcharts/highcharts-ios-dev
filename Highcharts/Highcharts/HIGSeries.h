//
//  HIGSeries.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol HIGSeries
@end

@interface HIGSeries : JSONModel

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSArray *data;

@end
