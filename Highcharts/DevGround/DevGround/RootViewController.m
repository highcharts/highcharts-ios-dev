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
    _pickerData = @[@"Pie", @"Scatter", @"Polar", @"Area", @"Line", @"Bar", @"Column", @"Bubble", @"Funnel", @"Box plot", @"Waterfall", @"Error bar", @"Spline"];
    self.chartTypePicker.dataSource = self;
    self.chartTypePicker.delegate = self;
    
    [self.proceedButton addTarget:self action:@selector(proceedButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.chartView = [[HIGChartView alloc] initWithFrame:CGRectMake(self.myChartView.bounds.origin.x, self.myChartView.bounds.origin.y , self.myChartView.bounds.size.width, 300.0f)];
    
   // self.chartView.options = [ChartType getChartByType:self.chartType];
}

-(void)proceedButtonTapped:(UIButton *)sender {
    for (UIView* subView in self.myChartView.subviews) {
        [subView removeFromSuperview];
    }
    NSString *yourSelectedTitle = [_pickerData objectAtIndex:[self.chartTypePicker selectedRowInComponent:0]];
    self.chartView.options = [ChartType getChartByType: yourSelectedTitle];
    [self.myChartView addSubview:self.chartView];
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
