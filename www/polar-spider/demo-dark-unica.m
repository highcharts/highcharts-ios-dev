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
        @"polar": @true,
        @"type": @"line"
    },
    @"title": @{
        @"text": @"Budget vs spending",
        @"x": @-80
    },
    @"pane": @{
        @"size": @"80%"
    },
    @"xAxis": @{
        @"categories": @[
            @"Sales",
            @"Marketing",
            @"Development",
            @"Customer Support",
            @"Information Technology",
            @"Administration"
        ],
        @"tickmarkPlacement": @"on",
        @"lineWidth": @0
    },
    @"yAxis": @{
        @"gridLineInterpolation": @"polygon",
        @"lineWidth": @0,
        @"min": @0
    },
    @"tooltip": @{
        @"shared": @true,
        @"pointFormat": @"<span style=\"color:{series.color}\">{series.name}: <b>${point.y:,.0f}</b><br/>"
    },
    @"legend": @{
        @"align": @"right",
        @"verticalAlign": @"top",
        @"y": @70,
        @"layout": @"vertical"
    },
    @"series": @[
        @{
            @"name": @"Allocated Budget",
            @"data": @[
                @43000,
                @19000,
                @60000,
                @35000,
                @17000,
                @10000
            ],
            @"pointPlacement": @"on"
        },
        @{
            @"name": @"Actual Spending",
            @"data": @[
                @50000,
                @39000,
                @42000,
                @31000,
                @26000,
                @14000
            ],
            @"pointPlacement": @"on"
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end