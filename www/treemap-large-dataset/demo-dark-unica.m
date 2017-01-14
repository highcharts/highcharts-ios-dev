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

    chartView.plugins = @[ @"heatmap", @"treemap" ];

    chartView.theme = @"dark-unica";
    
    chartView.options = @{
                            @"series": @[
                                @{
                                    @"type": @"treemap",
                                    @"layoutAlgorithm": @"squarified",
                                    @"allowDrillToNode": @true,
                                    @"animationLimit": @1000,
                                    @"dataLabels": @{
                                        @"enabled": @false
                                    },
                                    @"levelIsConstant": @false,
                                    @"levels": @[
                                        @{
                                            @"level": @1,
                                            @"dataLabels": @{
                                                @"enabled": @true
                                            },
                                            @"borderWidth": @3
                                        }
                                    ],
                                    @"data": [self data]
                                }
                            ],
                            @"subtitle": @{
                                @"text": @"Click points to drill down. Source: <a href=\"http://apps.who.int/gho/data/node.main.12?lang=en\">WHO</a>."
                            },
                            @"title": @{
                                @"text": @"Global Mortality Rate 2012, per 100 000 population"
                            }
                        };
    
    [self.view addSubview:chartView];
}

- (NSArray*)data {
return @[
            @{
                @"id": @"id_0_0",
                @"name": @"Sri Lanka",
                @"parent": @"id_0"
            },
            @{
                @"id": @"id_0_0_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_0_0",
                @"value": @76
            },
            @{
                @"id": @"id_0_0_1",
                @"name": @"Injuries",
                @"parent": @"id_0_0",
                @"value": @89
            },
            @{
                @"id": @"id_0_0_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_0_0",
                @"value": @501
            },
            @{
                @"id": @"id_0_1",
                @"name": @"Bangladesh",
                @"parent": @"id_0"
            },
            @{
                @"id": @"id_0_1_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_0_1",
                @"value": @549
            },
            @{
                @"id": @"id_0_1_1",
                @"name": @"Injuries",
                @"parent": @"id_0_1",
                @"value": @64
            },
            @{
                @"id": @"id_0_1_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_0_1",
                @"value": @235
            },
            @{
                @"id": @"id_0_2",
                @"name": @"Myanmar",
                @"parent": @"id_0"
            },
            @{
                @"id": @"id_0_2_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_0_2",
                @"value": @316
            },
            @{
                @"id": @"id_0_2_1",
                @"name": @"Injuries",
                @"parent": @"id_0_2",
                @"value": @102
            },
            @{
                @"id": @"id_0_2_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_0_2",
                @"value": @709
            },
            @{
                @"id": @"id_0_3",
                @"name": @"Maldives",
                @"parent": @"id_0"
            },
            @{
                @"id": @"id_0_3_0",
                @"name": @"Injuries",
                @"parent": @"id_0_3",
                @"value": @35
            },
            @{
                @"id": @"id_0_3_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_0_3",
                @"value": @487
            },
            @{
                @"id": @"id_0_3_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_0_3",
                @"value": @59
            },
            @{
                @"id": @"id_0_4",
                @"name": @"Democratic People's Republic of Korea",
                @"parent": @"id_0"
            },
            @{
                @"id": @"id_0_4_0",
                @"name": @"Injuries",
                @"parent": @"id_0_4",
                @"value": @92
            },
            @{
                @"id": @"id_0_4_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_0_4",
                @"value": @751
            },
            @{
                @"id": @"id_0_4_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_0_4",
                @"value": @117
            },
            @{
                @"id": @"id_0_5",
                @"name": @"Bhutan",
                @"parent": @"id_0"
            },
            @{
                @"id": @"id_0_5_0",
                @"name": @"Injuries",
                @"parent": @"id_0_5",
                @"value": @142
            },
            @{
                @"id": @"id_0_5_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_0_5",
                @"value": @573
            },
            @{
                @"id": @"id_0_5_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_0_5",
                @"value": @187
            },
            @{
                @"id": @"id_0_6",
                @"name": @"Thailand",
                @"parent": @"id_0"
            },
            @{
                @"id": @"id_0_6_0",
                @"name": @"Injuries",
                @"parent": @"id_0_6",
                @"value": @73
            },
            @{
                @"id": @"id_0_6_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_0_6",
                @"value": @123
            },
            @{
                @"id": @"id_0_6_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_0_6",
                @"value": @449
            },
            @{
                @"id": @"id_0_7",
                @"name": @"Nepal",
                @"parent": @"id_0"
            },
            @{
                @"id": @"id_0_7_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_0_7",
                @"value": @678
            },
            @{
                @"id": @"id_0_7_1",
                @"name": @"Injuries",
                @"parent": @"id_0_7",
                @"value": @89
            },
            @{
                @"id": @"id_0_7_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_0_7",
                @"value": @252
            },
            @{
                @"id": @"id_0_8",
                @"name": @"Timor-Leste",
                @"parent": @"id_0"
            },
            @{
                @"id": @"id_0_8_0",
                @"name": @"Injuries",
                @"parent": @"id_0_8",
                @"value": @69
            },
            @{
                @"id": @"id_0_8_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_0_8",
                @"value": @671
            },
            @{
                @"id": @"id_0_8_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_0_8",
                @"value": @344
            },
            @{
                @"id": @"id_0_9",
                @"name": @"India",
                @"parent": @"id_0"
            },
            @{
                @"id": @"id_0_9_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_0_9",
                @"value": @253
            },
            @{
                @"id": @"id_0_9_1",
                @"name": @"Injuries",
                @"parent": @"id_0_9",
                @"value": @116
            },
            @{
                @"id": @"id_0_9_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_0_9",
                @"value": @682
            },
            @{
                @"id": @"id_0_10",
                @"name": @"Indonesia",
                @"parent": @"id_0"
            },
            @{
                @"id": @"id_0_10_0",
                @"name": @"Injuries",
                @"parent": @"id_0_10",
                @"value": @49
            },
            @{
                @"id": @"id_0_10_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_0_10",
                @"value": @680
            },
            @{
                @"id": @"id_0_10_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_0_10",
                @"value": @162
            },
            @{
                @"id": @"id_0",
                @"name": @"South-East Asia",
                @"color": @"#7cb5ec",
                @"value": @889
            },
            @{
                @"id": @"id_1_0",
                @"name": @"Hungary",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_0_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_0",
                @"value": @17
            },
            @{
                @"id": @"id_1_0_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_0",
                @"value": @603
            },
            @{
                @"id": @"id_1_0_2",
                @"name": @"Injuries",
                @"parent": @"id_1_0",
                @"value": @44
            },
            @{
                @"id": @"id_1_1",
                @"name": @"Poland",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_1_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_1",
                @"value": @23
            },
            @{
                @"id": @"id_1_1_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_1",
                @"value": @495
            },
            @{
                @"id": @"id_1_1_2",
                @"name": @"Injuries",
                @"parent": @"id_1_1",
                @"value": @49
            },
            @{
                @"id": @"id_1_2",
                @"name": @"Israel",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_2_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_2",
                @"value": @31
            },
            @{
                @"id": @"id_1_2_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_2",
                @"value": @311
            },
            @{
                @"id": @"id_1_2_2",
                @"name": @"Injuries",
                @"parent": @"id_1_2",
                @"value": @21
            },
            @{
                @"id": @"id_1_3",
                @"name": @"France",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_3_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_3",
                @"value": @21
            },
            @{
                @"id": @"id_1_3_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_3",
                @"value": @313
            },
            @{
                @"id": @"id_1_3_2",
                @"name": @"Injuries",
                @"parent": @"id_1_3",
                @"value": @35
            },
            @{
                @"id": @"id_1_4",
                @"name": @"Turkey",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_4_0",
                @"name": @"Injuries",
                @"parent": @"id_1_4",
                @"value": @39
            },
            @{
                @"id": @"id_1_4_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_4",
                @"value": @44
            },
            @{
                @"id": @"id_1_4_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_4",
                @"value": @555
            },
            @{
                @"id": @"id_1_5",
                @"name": @"Kyrgyzstan",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_5_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_5",
                @"value": @66
            },
            @{
                @"id": @"id_1_5_1",
                @"name": @"Injuries",
                @"parent": @"id_1_5",
                @"value": @65
            },
            @{
                @"id": @"id_1_5_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_5",
                @"value": @835
            },
            @{
                @"id": @"id_1_6",
                @"name": @"Croatia",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_6_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_6",
                @"value": @12
            },
            @{
                @"id": @"id_1_6_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_6",
                @"value": @496
            },
            @{
                @"id": @"id_1_6_2",
                @"name": @"Injuries",
                @"parent": @"id_1_6",
                @"value": @40
            },
            @{
                @"id": @"id_1_7",
                @"name": @"Portugal",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_7_0",
                @"name": @"Injuries",
                @"parent": @"id_1_7",
                @"value": @25
            },
            @{
                @"id": @"id_1_7_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_7",
                @"value": @40
            },
            @{
                @"id": @"id_1_7_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_7",
                @"value": @343
            },
            @{
                @"id": @"id_1_8",
                @"name": @"Greece",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_8_0",
                @"name": @"Injuries",
                @"parent": @"id_1_8",
                @"value": @27
            },
            @{
                @"id": @"id_1_8_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_8",
                @"value": @365
            },
            @{
                @"id": @"id_1_8_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_8",
                @"value": @24
            },
            @{
                @"id": @"id_1_9",
                @"name": @"Italy",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_9_0",
                @"name": @"Injuries",
                @"parent": @"id_1_9",
                @"value": @20
            },
            @{
                @"id": @"id_1_9_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_9",
                @"value": @16
            },
            @{
                @"id": @"id_1_9_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_9",
                @"value": @304
            },
            @{
                @"id": @"id_1_10",
                @"name": @"Belgium",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_10_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_10",
                @"value": @28
            },
            @{
                @"id": @"id_1_10_1",
                @"name": @"Injuries",
                @"parent": @"id_1_10",
                @"value": @39
            },
            @{
                @"id": @"id_1_10_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_10",
                @"value": @357
            },
            @{
                @"id": @"id_1_11",
                @"name": @"Lithuania",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_11_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_11",
                @"value": @581
            },
            @{
                @"id": @"id_1_11_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_11",
                @"value": @26
            },
            @{
                @"id": @"id_1_11_2",
                @"name": @"Injuries",
                @"parent": @"id_1_11",
                @"value": @76
            },
            @{
                @"id": @"id_1_12",
                @"name": @"Uzbekistan",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_12_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_12",
                @"value": @86
            },
            @{
                @"id": @"id_1_12_1",
                @"name": @"Injuries",
                @"parent": @"id_1_12",
                @"value": @47
            },
            @{
                @"id": @"id_1_12_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_12",
                @"value": @811
            },
            @{
                @"id": @"id_1_13",
                @"name": @"Serbia",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_13_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_13",
                @"value": @19
            },
            @{
                @"id": @"id_1_13_1",
                @"name": @"Injuries",
                @"parent": @"id_1_13",
                @"value": @32
            },
            @{
                @"id": @"id_1_13_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_13",
                @"value": @658
            },
            @{
                @"id": @"id_1_14",
                @"name": @"Austria",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_14_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_14",
                @"value": @360
            },
            @{
                @"id": @"id_1_14_1",
                @"name": @"Injuries",
                @"parent": @"id_1_14",
                @"value": @31
            },
            @{
                @"id": @"id_1_14_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_14",
                @"value": @13
            },
            @{
                @"id": @"id_1_15",
                @"name": @"Bosnia and Herzegovina",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_15_0",
                @"name": @"Injuries",
                @"parent": @"id_1_15",
                @"value": @42
            },
            @{
                @"id": @"id_1_15_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_15",
                @"value": @513
            },
            @{
                @"id": @"id_1_15_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_15",
                @"value": @20
            },
            @{
                @"id": @"id_1_16",
                @"name": @"Slovakia",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_16_0",
                @"name": @"Injuries",
                @"parent": @"id_1_16",
                @"value": @39
            },
            @{
                @"id": @"id_1_16_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_16",
                @"value": @35
            },
            @{
                @"id": @"id_1_16_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_16",
                @"value": @533
            },
            @{
                @"id": @"id_1_17",
                @"name": @"The former Yugoslav republic of Macedonia",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_17_0",
                @"name": @"Injuries",
                @"parent": @"id_1_17",
                @"value": @24
            },
            @{
                @"id": @"id_1_17_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_17",
                @"value": @17
            },
            @{
                @"id": @"id_1_17_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_17",
                @"value": @637
            },
            @{
                @"id": @"id_1_18",
                @"name": @"Sweden",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_18_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_18",
                @"value": @19
            },
            @{
                @"id": @"id_1_18_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_18",
                @"value": @334
            },
            @{
                @"id": @"id_1_18_2",
                @"name": @"Injuries",
                @"parent": @"id_1_18",
                @"value": @26
            },
            @{
                @"id": @"id_1_19",
                @"name": @"Russian Federation",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_19_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_19",
                @"value": @790
            },
            @{
                @"id": @"id_1_19_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_19",
                @"value": @74
            },
            @{
                @"id": @"id_1_19_2",
                @"name": @"Injuries",
                @"parent": @"id_1_19",
                @"value": @103
            },
            @{
                @"id": @"id_1_20",
                @"name": @"Republic of Moldova",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_20_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_20",
                @"value": @788
            },
            @{
                @"id": @"id_1_20_1",
                @"name": @"Injuries",
                @"parent": @"id_1_20",
                @"value": @76
            },
            @{
                @"id": @"id_1_20_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_20",
                @"value": @45
            },
            @{
                @"id": @"id_1_21",
                @"name": @"Ireland",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_21_0",
                @"name": @"Injuries",
                @"parent": @"id_1_21",
                @"value": @32
            },
            @{
                @"id": @"id_1_21_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_21",
                @"value": @22
            },
            @{
                @"id": @"id_1_21_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_21",
                @"value": @344
            },
            @{
                @"id": @"id_1_22",
                @"name": @"Estonia",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_22_0",
                @"name": @"Injuries",
                @"parent": @"id_1_22",
                @"value": @47
            },
            @{
                @"id": @"id_1_22_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_22",
                @"value": @19
            },
            @{
                @"id": @"id_1_22_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_22",
                @"value": @511
            },
            @{
                @"id": @"id_1_23",
                @"name": @"Cyprus",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_23_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_23",
                @"value": @333
            },
            @{
                @"id": @"id_1_23_1",
                @"name": @"Injuries",
                @"parent": @"id_1_23",
                @"value": @27
            },
            @{
                @"id": @"id_1_23_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_23",
                @"value": @16
            },
            @{
                @"id": @"id_1_24",
                @"name": @"Kazakhstan",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_24_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_24",
                @"value": @950
            },
            @{
                @"id": @"id_1_24_1",
                @"name": @"Injuries",
                @"parent": @"id_1_24",
                @"value": @102
            },
            @{
                @"id": @"id_1_24_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_24",
                @"value": @55
            },
            @{
                @"id": @"id_1_25",
                @"name": @"Netherlands",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_25_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_25",
                @"value": @355
            },
            @{
                @"id": @"id_1_25_1",
                @"name": @"Injuries",
                @"parent": @"id_1_25",
                @"value": @22
            },
            @{
                @"id": @"id_1_25_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_25",
                @"value": @26
            },
            @{
                @"id": @"id_1_26",
                @"name": @"Finland",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_26_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_26",
                @"value": @367
            },
            @{
                @"id": @"id_1_26_1",
                @"name": @"Injuries",
                @"parent": @"id_1_26",
                @"value": @39
            },
            @{
                @"id": @"id_1_26_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_26",
                @"value": @9
            },
            @{
                @"id": @"id_1_27",
                @"name": @"Romania",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_27_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_27",
                @"value": @612
            },
            @{
                @"id": @"id_1_27_1",
                @"name": @"Injuries",
                @"parent": @"id_1_27",
                @"value": @41
            },
            @{
                @"id": @"id_1_27_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_27",
                @"value": @39
            },
            @{
                @"id": @"id_1_28",
                @"name": @"Albania",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_28_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_28",
                @"value": @672
            },
            @{
                @"id": @"id_1_28_1",
                @"name": @"Injuries",
                @"parent": @"id_1_28",
                @"value": @48
            },
            @{
                @"id": @"id_1_28_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_28",
                @"value": @47
            },
            @{
                @"id": @"id_1_29",
                @"name": @"Iceland",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_29_0",
                @"name": @"Injuries",
                @"parent": @"id_1_29",
                @"value": @29
            },
            @{
                @"id": @"id_1_29_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_29",
                @"value": @312
            },
            @{
                @"id": @"id_1_29_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_29",
                @"value": @14
            },
            @{
                @"id": @"id_1_30",
                @"name": @"Azerbaijan",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_30_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_30",
                @"value": @664
            },
            @{
                @"id": @"id_1_30_1",
                @"name": @"Injuries",
                @"parent": @"id_1_30",
                @"value": @34
            },
            @{
                @"id": @"id_1_30_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_30",
                @"value": @71
            },
            @{
                @"id": @"id_1_31",
                @"name": @"Tajikistan",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_31_0",
                @"name": @"Injuries",
                @"parent": @"id_1_31",
                @"value": @52
            },
            @{
                @"id": @"id_1_31_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_31",
                @"value": @148
            },
            @{
                @"id": @"id_1_31_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_31",
                @"value": @753
            },
            @{
                @"id": @"id_1_32",
                @"name": @"Bulgaria",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_32_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_32",
                @"value": @33
            },
            @{
                @"id": @"id_1_32_1",
                @"name": @"Injuries",
                @"parent": @"id_1_32",
                @"value": @36
            },
            @{
                @"id": @"id_1_32_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_32",
                @"value": @638
            },
            @{
                @"id": @"id_1_33",
                @"name": @"United Kingdom of Great Britain and Northern Ireland",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_33_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_33",
                @"value": @29
            },
            @{
                @"id": @"id_1_33_1",
                @"name": @"Injuries",
                @"parent": @"id_1_33",
                @"value": @22
            },
            @{
                @"id": @"id_1_33_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_33",
                @"value": @359
            },
            @{
                @"id": @"id_1_34",
                @"name": @"Spain",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_34_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_34",
                @"value": @19
            },
            @{
                @"id": @"id_1_34_1",
                @"name": @"Injuries",
                @"parent": @"id_1_34",
                @"value": @18
            },
            @{
                @"id": @"id_1_34_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_34",
                @"value": @323
            },
            @{
                @"id": @"id_1_35",
                @"name": @"Ukraine",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_35_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_35",
                @"value": @69
            },
            @{
                @"id": @"id_1_35_1",
                @"name": @"Injuries",
                @"parent": @"id_1_35",
                @"value": @67
            },
            @{
                @"id": @"id_1_35_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_35",
                @"value": @749
            },
            @{
                @"id": @"id_1_36",
                @"name": @"Norway",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_36_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_36",
                @"value": @337
            },
            @{
                @"id": @"id_1_36_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_36",
                @"value": @25
            },
            @{
                @"id": @"id_1_36_2",
                @"name": @"Injuries",
                @"parent": @"id_1_36",
                @"value": @26
            },
            @{
                @"id": @"id_1_37",
                @"name": @"Denmark",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_37_0",
                @"name": @"Injuries",
                @"parent": @"id_1_37",
                @"value": @23
            },
            @{
                @"id": @"id_1_37_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_37",
                @"value": @30
            },
            @{
                @"id": @"id_1_37_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_37",
                @"value": @406
            },
            @{
                @"id": @"id_1_38",
                @"name": @"Belarus",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_38_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_38",
                @"value": @683
            },
            @{
                @"id": @"id_1_38_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_38",
                @"value": @28
            },
            @{
                @"id": @"id_1_38_2",
                @"name": @"Injuries",
                @"parent": @"id_1_38",
                @"value": @91
            },
            @{
                @"id": @"id_1_39",
                @"name": @"Malta",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_39_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_39",
                @"value": @365
            },
            @{
                @"id": @"id_1_39_1",
                @"name": @"Injuries",
                @"parent": @"id_1_39",
                @"value": @19
            },
            @{
                @"id": @"id_1_39_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_39",
                @"value": @24
            },
            @{
                @"id": @"id_1_40",
                @"name": @"Latvia",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_40_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_40",
                @"value": @624
            },
            @{
                @"id": @"id_1_40_1",
                @"name": @"Injuries",
                @"parent": @"id_1_40",
                @"value": @55
            },
            @{
                @"id": @"id_1_40_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_40",
                @"value": @26
            },
            @{
                @"id": @"id_1_41",
                @"name": @"Turkmenistan",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_41_0",
                @"name": @"Injuries",
                @"parent": @"id_1_41",
                @"value": @93
            },
            @{
                @"id": @"id_1_41_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_41",
                @"value": @116
            },
            @{
                @"id": @"id_1_41_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_41",
                @"value": @1025
            },
            @{
                @"id": @"id_1_42",
                @"name": @"Switzerland",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_42_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_42",
                @"value": @15
            },
            @{
                @"id": @"id_1_42_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_42",
                @"value": @292
            },
            @{
                @"id": @"id_1_42_2",
                @"name": @"Injuries",
                @"parent": @"id_1_42",
                @"value": @25
            },
            @{
                @"id": @"id_1_43",
                @"name": @"Luxembourg",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_43_0",
                @"name": @"Injuries",
                @"parent": @"id_1_43",
                @"value": @31
            },
            @{
                @"id": @"id_1_43_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_43",
                @"value": @318
            },
            @{
                @"id": @"id_1_43_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_43",
                @"value": @21
            },
            @{
                @"id": @"id_1_44",
                @"name": @"Georgia",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_44_0",
                @"name": @"Injuries",
                @"parent": @"id_1_44",
                @"value": @32
            },
            @{
                @"id": @"id_1_44_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_44",
                @"value": @39
            },
            @{
                @"id": @"id_1_44_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_44",
                @"value": @615
            },
            @{
                @"id": @"id_1_45",
                @"name": @"Slovenia",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_45_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_45",
                @"value": @369
            },
            @{
                @"id": @"id_1_45_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_45",
                @"value": @15
            },
            @{
                @"id": @"id_1_45_2",
                @"name": @"Injuries",
                @"parent": @"id_1_45",
                @"value": @44
            },
            @{
                @"id": @"id_1_46",
                @"name": @"Montenegro",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_46_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_46",
                @"value": @19
            },
            @{
                @"id": @"id_1_46_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_46",
                @"value": @572
            },
            @{
                @"id": @"id_1_46_2",
                @"name": @"Injuries",
                @"parent": @"id_1_46",
                @"value": @41
            },
            @{
                @"id": @"id_1_47",
                @"name": @"Armenia",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_47_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_47",
                @"value": @848
            },
            @{
                @"id": @"id_1_47_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_47",
                @"value": @45
            },
            @{
                @"id": @"id_1_47_2",
                @"name": @"Injuries",
                @"parent": @"id_1_47",
                @"value": @49
            },
            @{
                @"id": @"id_1_48",
                @"name": @"Germany",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_48_0",
                @"name": @"Injuries",
                @"parent": @"id_1_48",
                @"value": @23
            },
            @{
                @"id": @"id_1_48_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_48",
                @"value": @22
            },
            @{
                @"id": @"id_1_48_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_48",
                @"value": @365
            },
            @{
                @"id": @"id_1_49",
                @"name": @"Czech Republic",
                @"parent": @"id_1"
            },
            @{
                @"id": @"id_1_49_0",
                @"name": @"Injuries",
                @"parent": @"id_1_49",
                @"value": @39
            },
            @{
                @"id": @"id_1_49_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_1_49",
                @"value": @461
            },
            @{
                @"id": @"id_1_49_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_1_49",
                @"value": @27
            },
            @{
                @"id": @"id_1",
                @"name": @"Europe",
                @"color": @"#434348",
                @"value": @601
            },
            @{
                @"id": @"id_2_0",
                @"name": @"Equatorial Guinea",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_0_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_0",
                @"value": @757
            },
            @{
                @"id": @"id_2_0_1",
                @"name": @"Injuries",
                @"parent": @"id_2_0",
                @"value": @134
            },
            @{
                @"id": @"id_2_0_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_0",
                @"value": @729
            },
            @{
                @"id": @"id_2_1",
                @"name": @"Madagascar",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_1_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_1",
                @"value": @649
            },
            @{
                @"id": @"id_2_1_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_1",
                @"value": @430
            },
            @{
                @"id": @"id_2_1_2",
                @"name": @"Injuries",
                @"parent": @"id_2_1",
                @"value": @89
            },
            @{
                @"id": @"id_2_2",
                @"name": @"Swaziland",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_2_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_2",
                @"value": @884
            },
            @{
                @"id": @"id_2_2_1",
                @"name": @"Injuries",
                @"parent": @"id_2_2",
                @"value": @120
            },
            @{
                @"id": @"id_2_2_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_2",
                @"value": @702
            },
            @{
                @"id": @"id_2_3",
                @"name": @"Congo",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_3_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_3",
                @"value": @632
            },
            @{
                @"id": @"id_2_3_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_3",
                @"value": @667
            },
            @{
                @"id": @"id_2_3_2",
                @"name": @"Injuries",
                @"parent": @"id_2_3",
                @"value": @89
            },
            @{
                @"id": @"id_2_4",
                @"name": @"Burkina Faso",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_4_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_4",
                @"value": @648
            },
            @{
                @"id": @"id_2_4_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_4",
                @"value": @784
            },
            @{
                @"id": @"id_2_4_2",
                @"name": @"Injuries",
                @"parent": @"id_2_4",
                @"value": @119
            },
            @{
                @"id": @"id_2_5",
                @"name": @"Guinea-Bissau",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_5_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_5",
                @"value": @870
            },
            @{
                @"id": @"id_2_5_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_5",
                @"value": @765
            },
            @{
                @"id": @"id_2_5_2",
                @"name": @"Injuries",
                @"parent": @"id_2_5",
                @"value": @112
            },
            @{
                @"id": @"id_2_6",
                @"name": @"Democratic Republic of the Congo",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_6_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_6",
                @"value": @724
            },
            @{
                @"id": @"id_2_6_1",
                @"name": @"Injuries",
                @"parent": @"id_2_6",
                @"value": @137
            },
            @{
                @"id": @"id_2_6_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_6",
                @"value": @921
            },
            @{
                @"id": @"id_2_7",
                @"name": @"Mozambique",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_7_0",
                @"name": @"Injuries",
                @"parent": @"id_2_7",
                @"value": @175
            },
            @{
                @"id": @"id_2_7_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_7",
                @"value": @594
            },
            @{
                @"id": @"id_2_7_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_7",
                @"value": @998
            },
            @{
                @"id": @"id_2_8",
                @"name": @"Central African Republic",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_8_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_8",
                @"value": @1212
            },
            @{
                @"id": @"id_2_8_1",
                @"name": @"Injuries",
                @"parent": @"id_2_8",
                @"value": @108
            },
            @{
                @"id": @"id_2_8_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_8",
                @"value": @551
            },
            @{
                @"id": @"id_2_9",
                @"name": @"United Republic of Tanzania",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_9_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_9",
                @"value": @570
            },
            @{
                @"id": @"id_2_9_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_9",
                @"value": @584
            },
            @{
                @"id": @"id_2_9_2",
                @"name": @"Injuries",
                @"parent": @"id_2_9",
                @"value": @129
            },
            @{
                @"id": @"id_2_10",
                @"name": @"Cameroon",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_10_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_10",
                @"value": @769
            },
            @{
                @"id": @"id_2_10_1",
                @"name": @"Injuries",
                @"parent": @"id_2_10",
                @"value": @106
            },
            @{
                @"id": @"id_2_10_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_10",
                @"value": @675
            },
            @{
                @"id": @"id_2_11",
                @"name": @"Togo",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_11_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_11",
                @"value": @679
            },
            @{
                @"id": @"id_2_11_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_11",
                @"value": @682
            },
            @{
                @"id": @"id_2_11_2",
                @"name": @"Injuries",
                @"parent": @"id_2_11",
                @"value": @93
            },
            @{
                @"id": @"id_2_12",
                @"name": @"Eritrea",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_12_0",
                @"name": @"Injuries",
                @"parent": @"id_2_12",
                @"value": @119
            },
            @{
                @"id": @"id_2_12_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_12",
                @"value": @506
            },
            @{
                @"id": @"id_2_12_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_12",
                @"value": @672
            },
            @{
                @"id": @"id_2_13",
                @"name": @"Namibia",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_13_0",
                @"name": @"Injuries",
                @"parent": @"id_2_13",
                @"value": @76
            },
            @{
                @"id": @"id_2_13_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_13",
                @"value": @580
            },
            @{
                @"id": @"id_2_13_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_13",
                @"value": @357
            },
            @{
                @"id": @"id_2_14",
                @"name": @"Senegal",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_14_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_14",
                @"value": @558
            },
            @{
                @"id": @"id_2_14_1",
                @"name": @"Injuries",
                @"parent": @"id_2_14",
                @"value": @89
            },
            @{
                @"id": @"id_2_14_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_14",
                @"value": @588
            },
            @{
                @"id": @"id_2_15",
                @"name": @"Chad",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_15_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_15",
                @"value": @1071
            },
            @{
                @"id": @"id_2_15_1",
                @"name": @"Injuries",
                @"parent": @"id_2_15",
                @"value": @115
            },
            @{
                @"id": @"id_2_15_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_15",
                @"value": @713
            },
            @{
                @"id": @"id_2_16",
                @"name": @"Benin",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_16_0",
                @"name": @"Injuries",
                @"parent": @"id_2_16",
                @"value": @98
            },
            @{
                @"id": @"id_2_16_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_16",
                @"value": @762
            },
            @{
                @"id": @"id_2_16_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_16",
                @"value": @577
            },
            @{
                @"id": @"id_2_17",
                @"name": @"Zimbabwe",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_17_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_17",
                @"value": @711
            },
            @{
                @"id": @"id_2_17_1",
                @"name": @"Injuries",
                @"parent": @"id_2_17",
                @"value": @83
            },
            @{
                @"id": @"id_2_17_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_17",
                @"value": @599
            },
            @{
                @"id": @"id_2_18",
                @"name": @"Rwanda",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_18_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_18",
                @"value": @585
            },
            @{
                @"id": @"id_2_18_1",
                @"name": @"Injuries",
                @"parent": @"id_2_18",
                @"value": @106
            },
            @{
                @"id": @"id_2_18_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_18",
                @"value": @402
            },
            @{
                @"id": @"id_2_19",
                @"name": @"Zambia",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_19_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_19",
                @"value": @587
            },
            @{
                @"id": @"id_2_19_1",
                @"name": @"Injuries",
                @"parent": @"id_2_19",
                @"value": @156
            },
            @{
                @"id": @"id_2_19_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_19",
                @"value": @764
            },
            @{
                @"id": @"id_2_20",
                @"name": @"Mali",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_20_0",
                @"name": @"Injuries",
                @"parent": @"id_2_20",
                @"value": @120
            },
            @{
                @"id": @"id_2_20_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_20",
                @"value": @588
            },
            @{
                @"id": @"id_2_20_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_20",
                @"value": @866
            },
            @{
                @"id": @"id_2_21",
                @"name": @"Ethiopia",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_21_0",
                @"name": @"Injuries",
                @"parent": @"id_2_21",
                @"value": @95
            },
            @{
                @"id": @"id_2_21_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_21",
                @"value": @559
            },
            @{
                @"id": @"id_2_21_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_21",
                @"value": @476
            },
            @{
                @"id": @"id_2_22",
                @"name": @"South Africa",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_22_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_22",
                @"value": @612
            },
            @{
                @"id": @"id_2_22_1",
                @"name": @"Injuries",
                @"parent": @"id_2_22",
                @"value": @104
            },
            @{
                @"id": @"id_2_22_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_22",
                @"value": @711
            },
            @{
                @"id": @"id_2_23",
                @"name": @"Burundi",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_23_0",
                @"name": @"Injuries",
                @"parent": @"id_2_23",
                @"value": @147
            },
            @{
                @"id": @"id_2_23_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_23",
                @"value": @705
            },
            @{
                @"id": @"id_2_23_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_23",
                @"value": @730
            },
            @{
                @"id": @"id_2_24",
                @"name": @"Cabo Verde",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_24_0",
                @"name": @"Injuries",
                @"parent": @"id_2_24",
                @"value": @54
            },
            @{
                @"id": @"id_2_24_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_24",
                @"value": @482
            },
            @{
                @"id": @"id_2_24_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_24",
                @"value": @142
            },
            @{
                @"id": @"id_2_25",
                @"name": @"Liberia",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_25_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_25",
                @"value": @657
            },
            @{
                @"id": @"id_2_25_1",
                @"name": @"Injuries",
                @"parent": @"id_2_25",
                @"value": @83
            },
            @{
                @"id": @"id_2_25_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_25",
                @"value": @609
            },
            @{
                @"id": @"id_2_26",
                @"name": @"Uganda",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_26_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_26",
                @"value": @664
            },
            @{
                @"id": @"id_2_26_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_26",
                @"value": @697
            },
            @{
                @"id": @"id_2_26_2",
                @"name": @"Injuries",
                @"parent": @"id_2_26",
                @"value": @167
            },
            @{
                @"id": @"id_2_27",
                @"name": @"Mauritius",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_27_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_27",
                @"value": @577
            },
            @{
                @"id": @"id_2_27_1",
                @"name": @"Injuries",
                @"parent": @"id_2_27",
                @"value": @44
            },
            @{
                @"id": @"id_2_27_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_27",
                @"value": @62
            },
            @{
                @"id": @"id_2_28",
                @"name": @"Algeria",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_28_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_28",
                @"value": @710
            },
            @{
                @"id": @"id_2_28_1",
                @"name": @"Injuries",
                @"parent": @"id_2_28",
                @"value": @54
            },
            @{
                @"id": @"id_2_28_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_28",
                @"value": @98
            },
            @{
                @"id": @"id_2_29",
                @"name": @"Côte d'Ivoire",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_29_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_29",
                @"value": @794
            },
            @{
                @"id": @"id_2_29_1",
                @"name": @"Injuries",
                @"parent": @"id_2_29",
                @"value": @124
            },
            @{
                @"id": @"id_2_29_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_29",
                @"value": @861
            },
            @{
                @"id": @"id_2_30",
                @"name": @"Malawi",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_30_0",
                @"name": @"Injuries",
                @"parent": @"id_2_30",
                @"value": @98
            },
            @{
                @"id": @"id_2_30_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_30",
                @"value": @778
            },
            @{
                @"id": @"id_2_30_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_30",
                @"value": @655
            },
            @{
                @"id": @"id_2_31",
                @"name": @"Botswana",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_31_0",
                @"name": @"Injuries",
                @"parent": @"id_2_31",
                @"value": @88
            },
            @{
                @"id": @"id_2_31_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_31",
                @"value": @612
            },
            @{
                @"id": @"id_2_31_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_31",
                @"value": @555
            },
            @{
                @"id": @"id_2_32",
                @"name": @"Guinea",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_32_0",
                @"name": @"Injuries",
                @"parent": @"id_2_32",
                @"value": @96
            },
            @{
                @"id": @"id_2_32_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_32",
                @"value": @681
            },
            @{
                @"id": @"id_2_32_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_32",
                @"value": @680
            },
            @{
                @"id": @"id_2_33",
                @"name": @"Ghana",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_33_0",
                @"name": @"Injuries",
                @"parent": @"id_2_33",
                @"value": @76
            },
            @{
                @"id": @"id_2_33_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_33",
                @"value": @670
            },
            @{
                @"id": @"id_2_33_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_33",
                @"value": @476
            },
            @{
                @"id": @"id_2_34",
                @"name": @"Kenya",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_34_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_34",
                @"value": @515
            },
            @{
                @"id": @"id_2_34_1",
                @"name": @"Injuries",
                @"parent": @"id_2_34",
                @"value": @101
            },
            @{
                @"id": @"id_2_34_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_34",
                @"value": @658
            },
            @{
                @"id": @"id_2_35",
                @"name": @"Gambia",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_35_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_35",
                @"value": @630
            },
            @{
                @"id": @"id_2_35_1",
                @"name": @"Injuries",
                @"parent": @"id_2_35",
                @"value": @96
            },
            @{
                @"id": @"id_2_35_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_35",
                @"value": @591
            },
            @{
                @"id": @"id_2_36",
                @"name": @"Angola",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_36_0",
                @"name": @"Injuries",
                @"parent": @"id_2_36",
                @"value": @138
            },
            @{
                @"id": @"id_2_36_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_36",
                @"value": @768
            },
            @{
                @"id": @"id_2_36_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_36",
                @"value": @873
            },
            @{
                @"id": @"id_2_37",
                @"name": @"Sierra Leone",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_37_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_37",
                @"value": @1327
            },
            @{
                @"id": @"id_2_37_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_37",
                @"value": @964
            },
            @{
                @"id": @"id_2_37_2",
                @"name": @"Injuries",
                @"parent": @"id_2_37",
                @"value": @150
            },
            @{
                @"id": @"id_2_38",
                @"name": @"Mauritania",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_38_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_38",
                @"value": @619
            },
            @{
                @"id": @"id_2_38_1",
                @"name": @"Injuries",
                @"parent": @"id_2_38",
                @"value": @83
            },
            @{
                @"id": @"id_2_38_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_38",
                @"value": @555
            },
            @{
                @"id": @"id_2_39",
                @"name": @"Comoros",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_39_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_39",
                @"value": @495
            },
            @{
                @"id": @"id_2_39_1",
                @"name": @"Injuries",
                @"parent": @"id_2_39",
                @"value": @132
            },
            @{
                @"id": @"id_2_39_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_39",
                @"value": @696
            },
            @{
                @"id": @"id_2_40",
                @"name": @"Gabon",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_40_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_40",
                @"value": @505
            },
            @{
                @"id": @"id_2_40_1",
                @"name": @"Injuries",
                @"parent": @"id_2_40",
                @"value": @77
            },
            @{
                @"id": @"id_2_40_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_40",
                @"value": @589
            },
            @{
                @"id": @"id_2_41",
                @"name": @"Niger",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_41_0",
                @"name": @"Injuries",
                @"parent": @"id_2_41",
                @"value": @98
            },
            @{
                @"id": @"id_2_41_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_41",
                @"value": @740
            },
            @{
                @"id": @"id_2_41_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_41",
                @"value": @649
            },
            @{
                @"id": @"id_2_42",
                @"name": @"Lesotho",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_42_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_42",
                @"value": @1111
            },
            @{
                @"id": @"id_2_42_1",
                @"name": @"Injuries",
                @"parent": @"id_2_42",
                @"value": @143
            },
            @{
                @"id": @"id_2_42_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_42",
                @"value": @672
            },
            @{
                @"id": @"id_2_43",
                @"name": @"Nigeria",
                @"parent": @"id_2"
            },
            @{
                @"id": @"id_2_43_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_2_43",
                @"value": @674
            },
            @{
                @"id": @"id_2_43_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_2_43",
                @"value": @866
            },
            @{
                @"id": @"id_2_43_2",
                @"name": @"Injuries",
                @"parent": @"id_2_43",
                @"value": @146
            },
            @{
                @"id": @"id_2",
                @"name": @"Africa",
                @"color": @"#90ed7d",
                @"value": @1443
            },
            @{
                @"id": @"id_3_0",
                @"name": @"Canada",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_0_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_0",
                @"value": @318
            },
            @{
                @"id": @"id_3_0_1",
                @"name": @"Injuries",
                @"parent": @"id_3_0",
                @"value": @31
            },
            @{
                @"id": @"id_3_0_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_0",
                @"value": @23
            },
            @{
                @"id": @"id_3_1",
                @"name": @"Bolivia (Plurinational State of)",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_1_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_1",
                @"value": @226
            },
            @{
                @"id": @"id_3_1_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_1",
                @"value": @635
            },
            @{
                @"id": @"id_3_1_2",
                @"name": @"Injuries",
                @"parent": @"id_3_1",
                @"value": @100
            },
            @{
                @"id": @"id_3_2",
                @"name": @"Haiti",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_2_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_2",
                @"value": @405
            },
            @{
                @"id": @"id_3_2_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_2",
                @"value": @725
            },
            @{
                @"id": @"id_3_2_2",
                @"name": @"Injuries",
                @"parent": @"id_3_2",
                @"value": @89
            },
            @{
                @"id": @"id_3_3",
                @"name": @"Belize",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_3_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_3",
                @"value": @471
            },
            @{
                @"id": @"id_3_3_1",
                @"name": @"Injuries",
                @"parent": @"id_3_3",
                @"value": @82
            },
            @{
                @"id": @"id_3_3_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_3",
                @"value": @105
            },
            @{
                @"id": @"id_3_4",
                @"name": @"Suriname",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_4_0",
                @"name": @"Injuries",
                @"parent": @"id_3_4",
                @"value": @71
            },
            @{
                @"id": @"id_3_4_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_4",
                @"value": @84
            },
            @{
                @"id": @"id_3_4_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_4",
                @"value": @375
            },
            @{
                @"id": @"id_3_5",
                @"name": @"Argentina",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_5_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_5",
                @"value": @69
            },
            @{
                @"id": @"id_3_5_1",
                @"name": @"Injuries",
                @"parent": @"id_3_5",
                @"value": @51
            },
            @{
                @"id": @"id_3_5_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_5",
                @"value": @467
            },
            @{
                @"id": @"id_3_6",
                @"name": @"Mexico",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_6_0",
                @"name": @"Injuries",
                @"parent": @"id_3_6",
                @"value": @63
            },
            @{
                @"id": @"id_3_6_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_6",
                @"value": @57
            },
            @{
                @"id": @"id_3_6_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_6",
                @"value": @468
            },
            @{
                @"id": @"id_3_7",
                @"name": @"Jamaica",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_7_0",
                @"name": @"Injuries",
                @"parent": @"id_3_7",
                @"value": @52
            },
            @{
                @"id": @"id_3_7_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_7",
                @"value": @97
            },
            @{
                @"id": @"id_3_7_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_7",
                @"value": @519
            },
            @{
                @"id": @"id_3_8",
                @"name": @"Peru",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_8_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_8",
                @"value": @364
            },
            @{
                @"id": @"id_3_8_1",
                @"name": @"Injuries",
                @"parent": @"id_3_8",
                @"value": @48
            },
            @{
                @"id": @"id_3_8_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_8",
                @"value": @121
            },
            @{
                @"id": @"id_3_9",
                @"name": @"Brazil",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_9_0",
                @"name": @"Injuries",
                @"parent": @"id_3_9",
                @"value": @80
            },
            @{
                @"id": @"id_3_9_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_9",
                @"value": @93
            },
            @{
                @"id": @"id_3_9_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_9",
                @"value": @514
            },
            @{
                @"id": @"id_3_10",
                @"name": @"Venezuela (Bolivarian Republic of)",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_10_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_10",
                @"value": @58
            },
            @{
                @"id": @"id_3_10_1",
                @"name": @"Injuries",
                @"parent": @"id_3_10",
                @"value": @103
            },
            @{
                @"id": @"id_3_10_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_10",
                @"value": @411
            },
            @{
                @"id": @"id_3_11",
                @"name": @"Paraguay",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_11_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_11",
                @"value": @486
            },
            @{
                @"id": @"id_3_11_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_11",
                @"value": @77
            },
            @{
                @"id": @"id_3_11_2",
                @"name": @"Injuries",
                @"parent": @"id_3_11",
                @"value": @68
            },
            @{
                @"id": @"id_3_12",
                @"name": @"Chile",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_12_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_12",
                @"value": @367
            },
            @{
                @"id": @"id_3_12_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_12",
                @"value": @36
            },
            @{
                @"id": @"id_3_12_2",
                @"name": @"Injuries",
                @"parent": @"id_3_12",
                @"value": @41
            },
            @{
                @"id": @"id_3_13",
                @"name": @"Trinidad and Tobago",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_13_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_13",
                @"value": @705
            },
            @{
                @"id": @"id_3_13_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_13",
                @"value": @80
            },
            @{
                @"id": @"id_3_13_2",
                @"name": @"Injuries",
                @"parent": @"id_3_13",
                @"value": @98
            },
            @{
                @"id": @"id_3_14",
                @"name": @"Colombia",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_14_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_14",
                @"value": @377
            },
            @{
                @"id": @"id_3_14_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_14",
                @"value": @55
            },
            @{
                @"id": @"id_3_14_2",
                @"name": @"Injuries",
                @"parent": @"id_3_14",
                @"value": @73
            },
            @{
                @"id": @"id_3_15",
                @"name": @"Cuba",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_15_0",
                @"name": @"Injuries",
                @"parent": @"id_3_15",
                @"value": @45
            },
            @{
                @"id": @"id_3_15_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_15",
                @"value": @422
            },
            @{
                @"id": @"id_3_15_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_15",
                @"value": @33
            },
            @{
                @"id": @"id_3_16",
                @"name": @"El Salvador",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_16_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_16",
                @"value": @475
            },
            @{
                @"id": @"id_3_16_1",
                @"name": @"Injuries",
                @"parent": @"id_3_16",
                @"value": @158
            },
            @{
                @"id": @"id_3_16_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_16",
                @"value": @96
            },
            @{
                @"id": @"id_3_17",
                @"name": @"Honduras",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_17_0",
                @"name": @"Injuries",
                @"parent": @"id_3_17",
                @"value": @81
            },
            @{
                @"id": @"id_3_17_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_17",
                @"value": @118
            },
            @{
                @"id": @"id_3_17_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_17",
                @"value": @442
            },
            @{
                @"id": @"id_3_18",
                @"name": @"Ecuador",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_18_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_18",
                @"value": @410
            },
            @{
                @"id": @"id_3_18_1",
                @"name": @"Injuries",
                @"parent": @"id_3_18",
                @"value": @84
            },
            @{
                @"id": @"id_3_18_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_18",
                @"value": @97
            },
            @{
                @"id": @"id_3_19",
                @"name": @"Costa Rica",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_19_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_19",
                @"value": @31
            },
            @{
                @"id": @"id_3_19_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_19",
                @"value": @392
            },
            @{
                @"id": @"id_3_19_2",
                @"name": @"Injuries",
                @"parent": @"id_3_19",
                @"value": @47
            },
            @{
                @"id": @"id_3_20",
                @"name": @"Dominican Republic",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_20_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_20",
                @"value": @396
            },
            @{
                @"id": @"id_3_20_1",
                @"name": @"Injuries",
                @"parent": @"id_3_20",
                @"value": @66
            },
            @{
                @"id": @"id_3_20_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_20",
                @"value": @77
            },
            @{
                @"id": @"id_3_21",
                @"name": @"Nicaragua",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_21_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_21",
                @"value": @75
            },
            @{
                @"id": @"id_3_21_1",
                @"name": @"Injuries",
                @"parent": @"id_3_21",
                @"value": @64
            },
            @{
                @"id": @"id_3_21_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_21",
                @"value": @547
            },
            @{
                @"id": @"id_3_22",
                @"name": @"Barbados",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_22_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_22",
                @"value": @405
            },
            @{
                @"id": @"id_3_22_1",
                @"name": @"Injuries",
                @"parent": @"id_3_22",
                @"value": @28
            },
            @{
                @"id": @"id_3_22_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_22",
                @"value": @61
            },
            @{
                @"id": @"id_3_23",
                @"name": @"Uruguay",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_23_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_23",
                @"value": @446
            },
            @{
                @"id": @"id_3_23_1",
                @"name": @"Injuries",
                @"parent": @"id_3_23",
                @"value": @54
            },
            @{
                @"id": @"id_3_23_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_23",
                @"value": @46
            },
            @{
                @"id": @"id_3_24",
                @"name": @"Panama",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_24_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_24",
                @"value": @86
            },
            @{
                @"id": @"id_3_24_1",
                @"name": @"Injuries",
                @"parent": @"id_3_24",
                @"value": @67
            },
            @{
                @"id": @"id_3_24_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_24",
                @"value": @373
            },
            @{
                @"id": @"id_3_25",
                @"name": @"Bahamas",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_25_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_25",
                @"value": @465
            },
            @{
                @"id": @"id_3_25_1",
                @"name": @"Injuries",
                @"parent": @"id_3_25",
                @"value": @46
            },
            @{
                @"id": @"id_3_25_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_25",
                @"value": @122
            },
            @{
                @"id": @"id_3_26",
                @"name": @"Guyana",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_26_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_26",
                @"value": @177
            },
            @{
                @"id": @"id_3_26_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_26",
                @"value": @1024
            },
            @{
                @"id": @"id_3_26_2",
                @"name": @"Injuries",
                @"parent": @"id_3_26",
                @"value": @150
            },
            @{
                @"id": @"id_3_27",
                @"name": @"United States of America",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_27_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_27",
                @"value": @413
            },
            @{
                @"id": @"id_3_27_1",
                @"name": @"Injuries",
                @"parent": @"id_3_27",
                @"value": @44
            },
            @{
                @"id": @"id_3_27_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_27",
                @"value": @31
            },
            @{
                @"id": @"id_3_28",
                @"name": @"Guatemala",
                @"parent": @"id_3"
            },
            @{
                @"id": @"id_3_28_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_3_28",
                @"value": @213
            },
            @{
                @"id": @"id_3_28_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_3_28",
                @"value": @409
            },
            @{
                @"id": @"id_3_28_2",
                @"name": @"Injuries",
                @"parent": @"id_3_28",
                @"value": @111
            },
            @{
                @"id": @"id_3",
                @"name": @"Americas",
                @"color": @"#f7a35c",
                @"value": @647
            },
            @{
                @"id": @"id_4_0",
                @"name": @"Egypt",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_0_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_0",
                @"value": @74
            },
            @{
                @"id": @"id_4_0_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_0",
                @"value": @782
            },
            @{
                @"id": @"id_4_0_2",
                @"name": @"Injuries",
                @"parent": @"id_4_0",
                @"value": @34
            },
            @{
                @"id": @"id_4_1",
                @"name": @"South Sudan",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_1_0",
                @"name": @"Injuries",
                @"parent": @"id_4_1",
                @"value": @143
            },
            @{
                @"id": @"id_4_1_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_1",
                @"value": @831
            },
            @{
                @"id": @"id_4_1_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_1",
                @"value": @623
            },
            @{
                @"id": @"id_4_2",
                @"name": @"Sudan",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_2_0",
                @"name": @"Injuries",
                @"parent": @"id_4_2",
                @"value": @134
            },
            @{
                @"id": @"id_4_2_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_2",
                @"value": @551
            },
            @{
                @"id": @"id_4_2_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_2",
                @"value": @495
            },
            @{
                @"id": @"id_4_3",
                @"name": @"Libya",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_3_0",
                @"name": @"Injuries",
                @"parent": @"id_4_3",
                @"value": @63
            },
            @{
                @"id": @"id_4_3_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_3",
                @"value": @550
            },
            @{
                @"id": @"id_4_3_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_3",
                @"value": @53
            },
            @{
                @"id": @"id_4_4",
                @"name": @"Jordan",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_4_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_4",
                @"value": @640
            },
            @{
                @"id": @"id_4_4_1",
                @"name": @"Injuries",
                @"parent": @"id_4_4",
                @"value": @54
            },
            @{
                @"id": @"id_4_4_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_4",
                @"value": @53
            },
            @{
                @"id": @"id_4_5",
                @"name": @"Pakistan",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_5_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_5",
                @"value": @296
            },
            @{
                @"id": @"id_4_5_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_5",
                @"value": @669
            },
            @{
                @"id": @"id_4_5_2",
                @"name": @"Injuries",
                @"parent": @"id_4_5",
                @"value": @99
            },
            @{
                @"id": @"id_4_6",
                @"name": @"Djibouti",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_6_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_6",
                @"value": @631
            },
            @{
                @"id": @"id_4_6_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_6",
                @"value": @626
            },
            @{
                @"id": @"id_4_6_2",
                @"name": @"Injuries",
                @"parent": @"id_4_6",
                @"value": @106
            },
            @{
                @"id": @"id_4_7",
                @"name": @"Syrian Arab Republic",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_7_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_7",
                @"value": @41
            },
            @{
                @"id": @"id_4_7_1",
                @"name": @"Injuries",
                @"parent": @"id_4_7",
                @"value": @308
            },
            @{
                @"id": @"id_4_7_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_7",
                @"value": @573
            },
            @{
                @"id": @"id_4_8",
                @"name": @"Morocco",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_8_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_8",
                @"value": @708
            },
            @{
                @"id": @"id_4_8_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_8",
                @"value": @132
            },
            @{
                @"id": @"id_4_8_2",
                @"name": @"Injuries",
                @"parent": @"id_4_8",
                @"value": @47
            },
            @{
                @"id": @"id_4_9",
                @"name": @"Yemen",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_9_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_9",
                @"value": @515
            },
            @{
                @"id": @"id_4_9_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_9",
                @"value": @627
            },
            @{
                @"id": @"id_4_9_2",
                @"name": @"Injuries",
                @"parent": @"id_4_9",
                @"value": @84
            },
            @{
                @"id": @"id_4_10",
                @"name": @"Bahrain",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_10_0",
                @"name": @"Injuries",
                @"parent": @"id_4_10",
                @"value": @34
            },
            @{
                @"id": @"id_4_10_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_10",
                @"value": @506
            },
            @{
                @"id": @"id_4_10_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_10",
                @"value": @49
            },
            @{
                @"id": @"id_4_11",
                @"name": @"United Arab Emirates",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_11_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_11",
                @"value": @547
            },
            @{
                @"id": @"id_4_11_1",
                @"name": @"Injuries",
                @"parent": @"id_4_11",
                @"value": @32
            },
            @{
                @"id": @"id_4_11_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_11",
                @"value": @36
            },
            @{
                @"id": @"id_4_12",
                @"name": @"Lebanon",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_12_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_12",
                @"value": @385
            },
            @{
                @"id": @"id_4_12_1",
                @"name": @"Injuries",
                @"parent": @"id_4_12",
                @"value": @41
            },
            @{
                @"id": @"id_4_12_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_12",
                @"value": @31
            },
            @{
                @"id": @"id_4_13",
                @"name": @"Saudi Arabia",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_13_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_13",
                @"value": @549
            },
            @{
                @"id": @"id_4_13_1",
                @"name": @"Injuries",
                @"parent": @"id_4_13",
                @"value": @41
            },
            @{
                @"id": @"id_4_13_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_13",
                @"value": @71
            },
            @{
                @"id": @"id_4_14",
                @"name": @"Iran (Islamic Republic of)",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_14_0",
                @"name": @"Injuries",
                @"parent": @"id_4_14",
                @"value": @75
            },
            @{
                @"id": @"id_4_14_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_14",
                @"value": @56
            },
            @{
                @"id": @"id_4_14_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_14",
                @"value": @569
            },
            @{
                @"id": @"id_4_15",
                @"name": @"Iraq",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_15_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_15",
                @"value": @87
            },
            @{
                @"id": @"id_4_15_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_15",
                @"value": @716
            },
            @{
                @"id": @"id_4_15_2",
                @"name": @"Injuries",
                @"parent": @"id_4_15",
                @"value": @129
            },
            @{
                @"id": @"id_4_16",
                @"name": @"Qatar",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_16_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_16",
                @"value": @28
            },
            @{
                @"id": @"id_4_16_1",
                @"name": @"Injuries",
                @"parent": @"id_4_16",
                @"value": @41
            },
            @{
                @"id": @"id_4_16_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_16",
                @"value": @407
            },
            @{
                @"id": @"id_4_17",
                @"name": @"Afghanistan",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_17_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_17",
                @"value": @363
            },
            @{
                @"id": @"id_4_17_1",
                @"name": @"Injuries",
                @"parent": @"id_4_17",
                @"value": @169
            },
            @{
                @"id": @"id_4_17_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_17",
                @"value": @846
            },
            @{
                @"id": @"id_4_18",
                @"name": @"Somalia",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_18_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_18",
                @"value": @551
            },
            @{
                @"id": @"id_4_18_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_18",
                @"value": @927
            },
            @{
                @"id": @"id_4_18_2",
                @"name": @"Injuries",
                @"parent": @"id_4_18",
                @"value": @189
            },
            @{
                @"id": @"id_4_19",
                @"name": @"Kuwait",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_19_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_19",
                @"value": @83
            },
            @{
                @"id": @"id_4_19_1",
                @"name": @"Injuries",
                @"parent": @"id_4_19",
                @"value": @25
            },
            @{
                @"id": @"id_4_19_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_19",
                @"value": @406
            },
            @{
                @"id": @"id_4_20",
                @"name": @"Oman",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_20_0",
                @"name": @"Injuries",
                @"parent": @"id_4_20",
                @"value": @53
            },
            @{
                @"id": @"id_4_20_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_20",
                @"value": @478
            },
            @{
                @"id": @"id_4_20_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_20",
                @"value": @84
            },
            @{
                @"id": @"id_4_21",
                @"name": @"Tunisia",
                @"parent": @"id_4"
            },
            @{
                @"id": @"id_4_21_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_4_21",
                @"value": @509
            },
            @{
                @"id": @"id_4_21_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_4_21",
                @"value": @65
            },
            @{
                @"id": @"id_4_21_2",
                @"name": @"Injuries",
                @"parent": @"id_4_21",
                @"value": @39
            },
            @{
                @"id": @"id_4",
                @"name": @"Eastern Mediterranean",
                @"color": @"#8085e9",
                @"value": @898
            },
            @{
                @"id": @"id_5_0",
                @"name": @"Mongolia",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_0_0",
                @"name": @"Injuries",
                @"parent": @"id_5_0",
                @"value": @69
            },
            @{
                @"id": @"id_5_0_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_0",
                @"value": @967
            },
            @{
                @"id": @"id_5_0_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_0",
                @"value": @83
            },
            @{
                @"id": @"id_5_1",
                @"name": @"Cambodia",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_1_0",
                @"name": @"Injuries",
                @"parent": @"id_5_1",
                @"value": @62
            },
            @{
                @"id": @"id_5_1_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_1",
                @"value": @228
            },
            @{
                @"id": @"id_5_1_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_1",
                @"value": @394
            },
            @{
                @"id": @"id_5_2",
                @"name": @"Japan",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_2_0",
                @"name": @"Injuries",
                @"parent": @"id_5_2",
                @"value": @41
            },
            @{
                @"id": @"id_5_2_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_2",
                @"value": @244
            },
            @{
                @"id": @"id_5_2_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_2",
                @"value": @34
            },
            @{
                @"id": @"id_5_3",
                @"name": @"Brunei Darussalam",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_3_0",
                @"name": @"Injuries",
                @"parent": @"id_5_3",
                @"value": @45
            },
            @{
                @"id": @"id_5_3_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_3",
                @"value": @475
            },
            @{
                @"id": @"id_5_3_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_3",
                @"value": @56
            },
            @{
                @"id": @"id_5_4",
                @"name": @"Solomon Islands",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_4_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_4",
                @"value": @231
            },
            @{
                @"id": @"id_5_4_1",
                @"name": @"Injuries",
                @"parent": @"id_5_4",
                @"value": @75
            },
            @{
                @"id": @"id_5_4_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_4",
                @"value": @710
            },
            @{
                @"id": @"id_5_5",
                @"name": @"Viet Nam",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_5_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_5",
                @"value": @96
            },
            @{
                @"id": @"id_5_5_1",
                @"name": @"Injuries",
                @"parent": @"id_5_5",
                @"value": @59
            },
            @{
                @"id": @"id_5_5_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_5",
                @"value": @435
            },
            @{
                @"id": @"id_5_6",
                @"name": @"Lao People's Democratic Republic",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_6_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_6",
                @"value": @329
            },
            @{
                @"id": @"id_5_6_1",
                @"name": @"Injuries",
                @"parent": @"id_5_6",
                @"value": @75
            },
            @{
                @"id": @"id_5_6_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_6",
                @"value": @680
            },
            @{
                @"id": @"id_5_7",
                @"name": @"China",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_7_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_7",
                @"value": @41
            },
            @{
                @"id": @"id_5_7_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_7",
                @"value": @576
            },
            @{
                @"id": @"id_5_7_2",
                @"name": @"Injuries",
                @"parent": @"id_5_7",
                @"value": @50
            },
            @{
                @"id": @"id_5_8",
                @"name": @"New Zealand",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_8_0",
                @"name": @"Injuries",
                @"parent": @"id_5_8",
                @"value": @33
            },
            @{
                @"id": @"id_5_8_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_8",
                @"value": @314
            },
            @{
                @"id": @"id_5_8_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_8",
                @"value": @18
            },
            @{
                @"id": @"id_5_9",
                @"name": @"Papua New Guinea",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_9_0",
                @"name": @"Injuries",
                @"parent": @"id_5_9",
                @"value": @100
            },
            @{
                @"id": @"id_5_9_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_9",
                @"value": @554
            },
            @{
                @"id": @"id_5_9_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_9",
                @"value": @693
            },
            @{
                @"id": @"id_5_10",
                @"name": @"Philippines",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_10_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_10",
                @"value": @226
            },
            @{
                @"id": @"id_5_10_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_10",
                @"value": @720
            },
            @{
                @"id": @"id_5_10_2",
                @"name": @"Injuries",
                @"parent": @"id_5_10",
                @"value": @54
            },
            @{
                @"id": @"id_5_11",
                @"name": @"Malaysia",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_11_0",
                @"name": @"Injuries",
                @"parent": @"id_5_11",
                @"value": @63
            },
            @{
                @"id": @"id_5_11_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_11",
                @"value": @563
            },
            @{
                @"id": @"id_5_11_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_11",
                @"value": @117
            },
            @{
                @"id": @"id_5_12",
                @"name": @"Australia",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_12_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_12",
                @"value": @14
            },
            @{
                @"id": @"id_5_12_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_12",
                @"value": @303
            },
            @{
                @"id": @"id_5_12_2",
                @"name": @"Injuries",
                @"parent": @"id_5_12",
                @"value": @28
            },
            @{
                @"id": @"id_5_13",
                @"name": @"Fiji",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_13_0",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_13",
                @"value": @804
            },
            @{
                @"id": @"id_5_13_1",
                @"name": @"Injuries",
                @"parent": @"id_5_13",
                @"value": @64
            },
            @{
                @"id": @"id_5_13_2",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_13",
                @"value": @105
            },
            @{
                @"id": @"id_5_14",
                @"name": @"Singapore",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_14_0",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_14",
                @"value": @66
            },
            @{
                @"id": @"id_5_14_1",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_14",
                @"value": @265
            },
            @{
                @"id": @"id_5_14_2",
                @"name": @"Injuries",
                @"parent": @"id_5_14",
                @"value": @18
            },
            @{
                @"id": @"id_5_15",
                @"name": @"Republic of Korea",
                @"parent": @"id_5"
            },
            @{
                @"id": @"id_5_15_0",
                @"name": @"Injuries",
                @"parent": @"id_5_15",
                @"value": @53
            },
            @{
                @"id": @"id_5_15_1",
                @"name": @"Communicable diseases",
                @"parent": @"id_5_15",
                @"value": @34
            },
            @{
                @"id": @"id_5_15_2",
                @"name": @"Non-communicable diseases",
                @"parent": @"id_5_15",
                @"value": @302
            },
            @{
                @"id": @"id_5",
                @"name": @"Western Pacific",
                @"color": @"#f15c80",
                @"value": @723
            }
        ];

}

@end
