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
    self.demos[@"line-basic"] = @{
                                  @"title" : @{
                                                @"text" : @"Monthly Average Temperature"
                                                },
                                  
                                  @"subTitle" : @{ @"text" : @"Source: WorldClimate.com" },
                                  @"xAxis" : @{ @"categories": @[ @"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"] },
                                  @"yAxis" : @{ @"title" : @{ @"text" : @"Temperature(°C)" },
                                              @"plotlines" : @[ @{ @"value" : @0, @"width" : @1, @"color" : @"#808080" } ]
                                              },
                                
                                @"series" : @[
                                                @{ @"name": @"Tokyo",
                                                   @"data" : @[ @7.0, @6.9, @9.5, @14.5, @18.2, @21.5, @25.2, @26.5, @23.3, @18.3, @13.9, @9.6 ]
                                                   },
                                               ]
                                };
    
    
    self.demos[@"area-basic"] = @{
                                  @"title" : @{
                                          @"text" : @"US and USSR nuclear stockpiles"
                                          },
                                  
                                  @"subTitle" : @{ @"text" : @"Source: <a href=\"http://thebulletin.metapress.com/content/c4120650912x74k7/fulltext.pdf\">thebulletin.metapress.com</a>" },
                                  
                                  @"xAxis" : @{ @"categories": @[ @"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"] },
                                  @"yAxis" : @{ @"title" : @{ @"text" : @"Temperature(°C)" },
                                                @"plotlines" : @[ @{ @"value" : @0, @"width" : @1, @"color" : @"#808080" } ]
                                                },
                                  
                                  @"series" : @[
                                          @{ @"name": @"Tokyo",
                                             @"data" : @[ @7.0, @6.9, @9.5, @14.5, @18.2, @21.5, @25.2, @26.5, @23.3, @18.3, @13.9, @9.6 ]
                                             },
                                          ]
                                  };

}

@end
