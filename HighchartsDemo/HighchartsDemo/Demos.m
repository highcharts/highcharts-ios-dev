//
//  Demos.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "Demos.h"

@interface Demos ()
@property (strong, nonatomic) NSMutableDictionary *demos;
@end

@implementation Demos

#pragma mark - init

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.demos = [NSMutableDictionary dictionary];
        
        [self initDemos];
    }
    return self;
}

- (NSDictionary *)demoForName:(NSString*)name
{
    return self.demos[name];
}

#pragma mark - Demos 


- (void)initDemos
{
    
    // line-basic
    self.demos[@"line-basic"] = @{
                                  @"chart" : @{
                                          @"renderTo" : @"container",
                                          },
                                    @"title" : @{
                                                    @"text" : @"Monthly Average Temperature"
                                                    
                                                    },
                                    
                                    @"subTitle" : @{ @"text" : @"Source: WorldClimate.com" },
                                    
                                    @"xAxis" : @{ @"categories": @[ @"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"] },
                                    
                                    @"yAxis" : @{
                                                    @"title" : @{ @"text" : @"Temperature(°C)" },
                                                    @"plotlines" : @[
                                                                        @{ @"value" : @0, @"width" : @1, @"color" : @"#808080" }
                                                                    ]
                                                    },
                                    
                                    @"series" : @[
                                                    @{
                                                        @"name": @"Tokyo",
                                                        @"data" : @[ @7.0, @6.9, @9.5, @14.5, @18.2, @21.5, @25.2, @26.5, @23.3, @18.3, @13.9, @9.6 ]
                                                        
                                                        },
                                                    
                                                    @{
                                                        @"name": @"New York",
                                                        @"data": @[@-0.2, @0.8, @5.7, @11.3, @17.0, @22.0, @24.8, @24.1, @20.1, @14.1, @8.6, @2.5]
                                                        
                                                        },
                                                    
                                                    @{
                                                        @"name" : @"Berlin",
                                                        @"data": @[@-0.9, @0.6, @3.5, @8.4, @13.5, @17.0, @18.6, @17.9, @14.3, @9.0, @3.9, @1.0]
                                                        
                                                        },
                                                    
                                                    @{
                                                        @"name": @"London",
                                                        @"data": @[@3.9, @4.2, @5.7, @8.5, @11.9, @15.2, @17.0, @16.6, @14.2, @10.3, @6.6, @4.8]
                                                        
                                                        }
                                                   ]
                                };
    
    
    
    
    self.demos[@"line-random"] = @{
                                   
                                   @"chart" : @{
                                           @"renderTo" : @"container",
                                   @"type": @"spline",
                                   @"events" : @{
                                   @"load" : @" function () { var series = this.series[0]; setInterval(function () { var x = (new Date()).getTime(), y = Math.random(); series.addPoint([x, y], true, true); }, 1000); }"
                                   }
                                   },
                                   
                                   
                                   
                                  @"title" : @{
                                          @"text" : @"Random data"
                                          
                                          },
                                  @"xAxis" : @{ @"categories": @[ @"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"] },
                                  
                                  @"yAxis" : @{
                                          @"title" : @{ @"text" : @"Value" },
                                          @"plotlines" : @[
                                                  @{ @"value" : @0, @"width" : @1, @"color" : @"#808080" }
                                                  ]
                                          },
                                  
                                  @"series" : @[
                                          @{
                                              @"name": @"Rndom data",
                                              @"data" : @"(function () { \
                                              var data = [],\
                                              time = (new Date()).getTime(),\
                                              i;\
                                              \
                                              for (i = -19; i <= 0; i += 1) {\
                                                  data.push({\
                                                  x: time + i * 1000,\
                                                  y: Math.random()\
                                                  });\
                                              }\
                                              return data;\
                                              }())"
                                              
                                              },
                                          
                                          ]
                                  };

}

@end
