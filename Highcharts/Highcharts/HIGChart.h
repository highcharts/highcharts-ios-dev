//
//  HIGChart.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HIGAxis.h"
#import "HIGSeries.h"

@interface HIGChart : NSObject

@property (strong, nonatomic) NSString *type;
//@property (strong, nonatomic) HIGAxis *xAxis;
//@property (strong, nonatomic) HIGAxis *yAxis;
@property (strong, nonatomic) NSArray <HIGSeries *> *series;

@end
