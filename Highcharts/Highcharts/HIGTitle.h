//
//  HIGTitle.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface HIGTitle : JSONModel

@property (strong, nonatomic) NSString *text;
@property (strong, nonatomic) NSNumber <Optional> *x;
@property (strong, nonatomic) NSNumber <Optional> *y;

@end
