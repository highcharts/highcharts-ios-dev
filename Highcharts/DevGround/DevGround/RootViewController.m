//
//  RootViewController.m
//  DevGround
//
//  Created by krzysiek on 22.02.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import "RootViewController.h"
#import <Highcharts/Highcharts.h>
#import "ChartType.h"


@interface RootViewController () {
    NSArray *_pickerData;
}

@end

@implementation RootViewController



-(void)viewDidLoad {
    [super viewDidLoad];
    _pickerData = @[@"Pie", @"Scatter", @"Polar", @"Area", @"Line", @"Bar", @"Column", @"Bubble", @"Box plot", @"Waterfall", @"Error bar", @"Spline",@"Columnrange",@"Gauge Solid",@"Combination",@"3D Column",@"3D Column Nullable",@"3D Column Grouped",@"3D Pie",@"3D Pie Donut",@"3D Scatter",@"Area Inverted",@"Area Missing",@"Area Negative",@"Area Stacked",@"Area Stacked Percent",@"Area Range",@"Area Range Line",@"Area Spline",@"Bar Stacked",@"Column Drilldown",@"Column Negative",@"Column Placement",@"Column Rotated Labels",@"Column Stacked",@"Column Stacked & Grouped",@"Column Stacked Percent",@"Combination Dual Axes",@"Combination Multi Axes",@"Combination Regression",@"Gauge Dual",@"Gauge Speedometer",@"Gauge VU-meter",@"Line Labels",@"Line Log Axis",@"Line Time Series",@"Pie Donut",@"Pie Drilldown", @"Pie Gradient", @"Pie Legend", @"Pie Monochrome",@"Pie Semi-circle", @"Polar Spider",@"Polygon", @"Spline Irregular Time",@"Spline Plot Bands", @"Spline Symbols", @"Pyramid", @"Funnel", @"Heatmap", @"Treemap Color Axis", @"Treemap With Levels", @"Treemap Large Dataset" ]; // no charts
    
    NSArray *sortedArray = [_pickerData sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    _pickerData = sortedArray;
    
    self.chartTypePicker.dataSource = self;
    self.chartTypePicker.delegate = self;
    
    [self.proceedButton addTarget:self action:@selector(proceedButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    //Initializing chartView with defined frame
    self.chartView = [[HIChartView alloc] initWithFrame:CGRectMake(self.myChartView.bounds.origin.x, self.myChartView.bounds.origin.y , self.myChartView.bounds.size.width, 300.0f)];
    
    // Here you add additional plugins - if you use one of the charts listed below, you should add plugin before addSubview
    // In demo app we add all of them, because we use all types of charts. Remember that Pyramid also uses funnel plugin.
    self.chartView.plugins = @[ @"heatmap", @"treemap", @"funnel", @"solid-gauge", @"drilldown" ];
    
    // Here we use our helper class method to get options for chart name
    self.chartView.options = [ChartType getChartByType:@"3D Column"];
    
    // Adding chartView as subview to our controller.
    [self.myChartView addSubview:self.chartView];
    
}

-(void)proceedButtonTapped:(UIButton *)sender {
    NSString *yourSelectedTitle = [_pickerData objectAtIndex:[self.chartTypePicker selectedRowInComponent:0]];
    self.chartView.options = [ChartType getChartByType: yourSelectedTitle];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _pickerData[row];
}

    

@end
