//
//  ViewController.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";
    
    chartView.options = @{
    @"chart": @{
        @"type": @"spline"
    },
    @"title": @{
        @"text": @"Snow depth at Vikjafjellet, Norway"
    },
    @"subtitle": @{
        @"text": @"Irregular time data in Highcharts JS"
    },
    @"xAxis": @{
        @"type": @"datetime",
        @"dateTimeLabelFormats": @{
            @"month": @"%e. %b",
            @"year": @"%b"
        },
        @"title": @{
            @"text": @"Date"
        }
    },
    @"yAxis": @{
        @"title": @{
            @"text": @"Snow depth (m)"
        },
        @"min": @0
    },
    @"tooltip": @{
        @"headerFormat": @"<b>{series.name}</b><br>",
        @"pointFormat": @"{point.x:%e. %b}: {point.y:.2f} m"
    },
    @"plotOptions": @{
        @"spline": @{
            @"marker": @{
                @"enabled": @true
            }
        }
    },
    @"series": @[
        @{
            @"name": @"Winter 2012-2013",
            @"data": @[
                @[
                    @25315200000,
                    @0
                ],
                @[
                    @26524800000,
                    @0.28
                ],
                @[
                    @26956800000,
                    @0.25
                ],
                @[
                    @28512000000,
                    @0.2
                ],
                @[
                    @28944000000,
                    @0.28
                ],
                @[
                    @31017600000,
                    @0.28
                ],
                @[
                    @31276800000,
                    @0.47
                ],
                @[
                    @32400000000,
                    @0.79
                ],
                @[
                    @33696000000,
                    @0.72
                ],
                @[
                    @34387200000,
                    @1.02
                ],
                @[
                    @35078400000,
                    @1.12
                ],
                @[
                    @36288000000,
                    @1.2
                ],
                @[
                    @37497600000,
                    @1.18
                ],
                @[
                    @40176000000,
                    @1.19
                ],
                @[
                    @41904000000,
                    @1.85
                ],
                @[
                    @42249600000,
                    @2.22
                ],
                @[
                    @43459200000,
                    @1.15
                ],
                @[
                    @44755200000,
                    @0
                ]
            ]
        },
        @{
            @"name": @"Winter 2013-2014",
            @"data": @[
                @[
                    @26006400000,
                    @0
                ],
                @[
                    @26956800000,
                    @0.4
                ],
                @[
                    @28857600000,
                    @0.25
                ],
                @[
                    @31536000000,
                    @1.66
                ],
                @[
                    @32313600000,
                    @1.8
                ],
                @[
                    @35769600000,
                    @1.76
                ],
                @[
                    @38707200000,
                    @2.62
                ],
                @[
                    @40867200000,
                    @2.41
                ],
                @[
                    @41817600000,
                    @2.05
                ],
                @[
                    @43027200000,
                    @1.7
                ],
                @[
                    @43891200000,
                    @1.1
                ],
                @[
                    @45360000000,
                    @0
                ]
            ]
        },
        @{
            @"name": @"Winter 2014-2015",
            @"data": @[
                @[
                    @28339200000,
                    @0
                ],
                @[
                    @29289600000,
                    @0.25
                ],
                @[
                    @30499200000,
                    @1.41
                ],
                @[
                    @30931200000,
                    @1.64
                ],
                @[
                    @31795200000,
                    @1.6
                ],
                @[
                    @32918400000,
                    @2.55
                ],
                @[
                    @33523200000,
                    @2.62
                ],
                @[
                    @34473600000,
                    @2.5
                ],
                @[
                    @35337600000,
                    @2.42
                ],
                @[
                    @37065600000,
                    @2.74
                ],
                @[
                    @37756800000,
                    @2.62
                ],
                @[
                    @38620800000,
                    @2.6
                ],
                @[
                    @39398400000,
                    @2.81
                ],
                @[
                    @40262400000,
                    @2.63
                ],
                @[
                    @41644800000,
                    @2.77
                ],
                @[
                    @42249600000,
                    @2.68
                ],
                @[
                    @42681600000,
                    @2.56
                ],
                @[
                    @43113600000,
                    @2.39
                ],
                @[
                    @43545600000,
                    @2.3
                ],
                @[
                    @44928000000,
                    @2
                ],
                @[
                    @45360000000,
                    @1.85
                ],
                @[
                    @45792000000,
                    @1.49
                ],
                @[
                    @46483200000,
                    @1.08
                ]
            ]
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end
