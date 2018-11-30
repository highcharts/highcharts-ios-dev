//
//  HIClassJSMethods.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2018 Highsoft AS. All rights reserved.
//

#import "HIClassJSMethods.h"

@implementation HIClassJSMethods

+ (NSString *)getJCClassMethodString:(NSDictionary *)dict {
    NSDictionary *functions = @{
                                @"Series":
                                    @{
                                        @"show": [NSString stringWithFormat:@"(function hideSeries(wrapperID) { chart.series.forEach(function(serie) { if (serie.options._wrapperID === wrapperID) { serie.show(); return; } }); })(\"%@\")", dict[@"id"]],
                                        @"hide": [NSString stringWithFormat:@"(function hideSeries(wrapperID) { chart.series.forEach(function(serie) { if (serie.options._wrapperID === wrapperID) { serie.hide(); return; } }); })(\"%@\")", dict[@"id"]]
                                        },
                                @"Point":
                                    @{
                                        @"hide": @"rwerwerw"
                                        }
                                };
    
    return functions[dict[@"class"]][dict[@"method"]];
}

@end
