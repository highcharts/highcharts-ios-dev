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
    
    chartView.plugins = @[ @"drilldown" ];
    
    chartView.options = @{
                            @"chart": @{
                                @"plotBackgroundColor": [NSNull null],
                                @"plotBorderWidth": [NSNull null],
                                @"plotShadow": @false,
                                @"type": @"pie"
                            },
                            @"colors": @[
                                @{
                                    @"radialGradient": @{
                                        @"cx": @0.5,
                                        @"cy": @0.3,
                                        @"r": @0.7
                                    },
                                    @"stops": @[
                                        @[
                                            @0,
                                            @"#7cb5ec"
                                        ],
                                        @[
                                            @1,
                                            @"rgb(48,105,160)"
                                        ]
                                    ]
                                },
                                @{
                                    @"radialGradient": @{
                                        @"cx": @0.5,
                                        @"cy": @0.3,
                                        @"r": @0.7
                                    },
                                    @"stops": @[
                                        @[
                                            @0,
                                            @"#434348"
                                        ],
                                        @[
                                            @1,
                                            @"rgb(0,0,0)"
                                        ]
                                    ]
                                },
                                @{
                                    @"radialGradient": @{
                                        @"cx": @0.5,
                                        @"cy": @0.3,
                                        @"r": @0.7
                                    },
                                    @"stops": @[
                                        @[
                                            @0,
                                            @"#90ed7d"
                                        ],
                                        @[
                                            @1,
                                            @"rgb(68,161,49)"
                                        ]
                                    ]
                                },
                                @{
                                    @"radialGradient": @{
                                        @"cx": @0.5,
                                        @"cy": @0.3,
                                        @"r": @0.7
                                    },
                                    @"stops": @[
                                        @[
                                            @0,
                                            @"#f7a35c"
                                        ],
                                        @[
                                            @1,
                                            @"rgb(171,87,16)"
                                        ]
                                    ]
                                },
                                @{
                                    @"radialGradient": @{
                                        @"cx": @0.5,
                                        @"cy": @0.3,
                                        @"r": @0.7
                                    },
                                    @"stops": @[
                                        @[
                                            @0,
                                            @"#8085e9"
                                        ],
                                        @[
                                            @1,
                                            @"rgb(52,57,157)"
                                        ]
                                    ]
                                },
                                @{
                                    @"radialGradient": @{
                                        @"cx": @0.5,
                                        @"cy": @0.3,
                                        @"r": @0.7
                                    },
                                    @"stops": @[
                                        @[
                                            @0,
                                            @"#f15c80"
                                        ],
                                        @[
                                            @1,
                                            @"rgb(165,16,52)"
                                        ]
                                    ]
                                },
                                @{
                                    @"radialGradient": @{
                                        @"cx": @0.5,
                                        @"cy": @0.3,
                                        @"r": @0.7
                                    },
                                    @"stops": @[
                                        @[
                                            @0,
                                            @"#e4d354"
                                        ],
                                        @[
                                            @1,
                                            @"rgb(152,135,8)"
                                        ]
                                    ]
                                },
                                @{
                                    @"radialGradient": @{
                                        @"cx": @0.5,
                                        @"cy": @0.3,
                                        @"r": @0.7
                                    },
                                    @"stops": @[
                                        @[
                                            @0,
                                            @"#2b908f"
                                        ],
                                        @[
                                            @1,
                                            @"rgb(0,68,67)"
                                        ]
                                    ]
                                },
                                @{
                                    @"radialGradient": @{
                                        @"cx": @0.5,
                                        @"cy": @0.3,
                                        @"r": @0.7
                                    },
                                    @"stops": @[
                                        @[
                                            @0,
                                            @"#f45b5b"
                                        ],
                                        @[
                                            @1,
                                            @"rgb(168,15,15)"
                                        ]
                                    ]
                                },
                                @{
                                    @"radialGradient": @{
                                        @"cx": @0.5,
                                        @"cy": @0.3,
                                        @"r": @0.7
                                    },
                                    @"stops": @[
                                        @[
                                            @0,
                                            @"#91e8e1"
                                        ],
                                        @[
                                            @1,
                                            @"rgb(69,156,149)"
                                        ]
                                    ]
                                }
                            ],
                            @"title": @{
                                @"text": @"Browser market shares. January, 2015 to May, 2015"
                            },
                            @"tooltip": @{
                                @"pointFormat": @"{series.name}: <b>{point.percentage:.1f}%</b>"
                            },
                            @"plotOptions": @{
                                @"pie": @{
                                    @"allowPointSelect": @true,
                                    @"cursor": @"pointer",
                                    @"dataLabels": @{
                                        @"enabled": @true,
                                        @"format": @"<b>{point.name}</b>: {point.percentage:.1f} %",
                                        @"style": @{
                                            @"color": @"#F0F0F3"
                                        },
                                        @"connectorColor": @"silver"
                                    }
                                }
                            },
                            @"series": @[
                                @{
                                    @"name": @"Brands",
                                    @"data": @[
                                        @{
                                            @"name": @"Microsoft Internet Explorer",
                                            @"y": @56.33
                                        },
                                        @{
                                            @"name": @"Chrome",
                                            @"y": @24.03,
                                            @"sliced": @true,
                                            @"selected": @true
                                        },
                                        @{
                                            @"name": @"Firefox",
                                            @"y": @10.38
                                        },
                                        @{
                                            @"name": @"Safari",
                                            @"y": @4.77
                                        },
                                        @{
                                            @"name": @"Opera",
                                            @"y": @0.91
                                        },
                                        @{
                                            @"name": @"Proprietary or Undetectable",
                                            @"y": @0.2
                                        }
                                    ]
                                }
                            ]
                        };
    
    [self.view addSubview:chartView];
}

@end
