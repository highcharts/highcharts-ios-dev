//
//  ViewController.h
//  DevGround
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *typeButtons;
@property (strong, nonatomic) NSString *chartType;
@end

