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

    chartView.theme = @"dark-unica";
    
    chartView.options = @{
    @"chart": @{
        @"type": @"boxplot"
    },
    @"title": @{
        @"text": @"Highcharts Box Plot Example"
    },
    @"legend": @{
        @"enabled": @false
    },
    @"xAxis": @{
        @"categories": @[
            @"1",
            @"2",
            @"3",
            @"4",
            @"5"
        ],
        @"title": @{
            @"text": @"Experiment No."
        }
    },
    @"yAxis": @{
        @"title": @{
            @"text": @"Observations"
        },
        @"plotLines": @[
            @{
                @"value": @932,
                @"color": @"red",
                @"width": @1,
                @"label": @{
                    @"text": @"Theoretical mean: 932",
                    @"align": @"center",
                    @"style": @{
                        @"color": @"gray"
                    }
                }
            }
        ]
    },
    @"series": @[
        @{
            @"name": @"Observations",
            @"data": @[
                @[
                    @760,
                    @801,
                    @848,
                    @895,
                    @965
                ],
                @[
                    @733,
                    @853,
                    @939,
                    @980,
                    @1080
                ],
                @[
                    @714,
                    @762,
                    @817,
                    @870,
                    @918
                ],
                @[
                    @724,
                    @802,
                    @806,
                    @871,
                    @950
                ],
                @[
                    @834,
                    @836,
                    @864,
                    @882,
                    @910
                ]
            ],
            @"tooltip": @{
                @"headerFormat": @"<em>Experiment No {point.key}</em><br/>"
            }
        },
        @{
            @"name": @"Outlier",
            @"color": @"#7cb5ec",
            @"type": @"scatter",
            @"data": @[
                @[
                    @0,
                    @644
                ],
                @[
                    @4,
                    @718
                ],
                @[
                    @4,
                    @951
                ],
                @[
                    @4,
                    @969
                ]
            ],
            @"marker": @{
                @"fillColor": @"white",
                @"lineWidth": @1,
                @"lineColor": @"#7cb5ec"
            },
            @"tooltip": @{
                @"pointFormat": @"Observation: {point.y}"
            }
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end
