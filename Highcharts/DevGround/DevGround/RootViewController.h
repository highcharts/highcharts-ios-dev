//
//  RootViewController.h
//  DevGround
//
//  Created by krzysiek on 22.02.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>


@interface RootViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *typeButtons;
@property (weak, nonatomic) IBOutlet UIPickerView *chartTypePicker;
@property (weak, nonatomic) IBOutlet UIButton *proceedButton;
@property (weak, nonatomic) IBOutlet UIView *myChartView;
@property (strong, nonatomic) HIGChartView *chartView;

@end
