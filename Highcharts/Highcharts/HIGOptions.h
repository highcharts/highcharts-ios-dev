//
//  HIGOptions.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "HIGChart.h"
#import "HIGTitle.h"
#import "HIGAxis.h"
#import "HIGSeries.h"

@interface HIGOptions : JSONModel

@property (strong, nonatomic) HIGChart <Optional> *chart;
@property (strong, nonatomic) HIGTitle <Optional> *title;
@property (strong, nonatomic) HIGTitle <Optional> *subtitle;
@property (strong, nonatomic) HIGAxis <Optional> *xAxis;
@property (strong, nonatomic) HIGAxis <Optional> *yAxis;
@property (strong, nonatomic) NSArray <HIGSeries, Optional> *series;

@end
