//
//  HIGAxis.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <JSONModel/JSONModel.h>
#import "HIGTitle.h"

@interface HIGAxis : JSONModel

@property (strong, nonatomic) HIGTitle <Optional> *title;
@property (strong, nonatomic) NSArray *categories;

@end
