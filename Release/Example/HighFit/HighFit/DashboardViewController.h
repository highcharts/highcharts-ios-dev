//
//  DashsboardViewController.h
//  HighFit
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardViewController : UITableViewController

+ (id)sharedDashboard;

- (void)dataSource:(NSDictionary*)dataSource show:(BOOL)show;

@end
