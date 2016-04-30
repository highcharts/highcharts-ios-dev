//
//  ItemSelectViewController.h
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemSelectViewController : UITableViewController

@property (strong, nonatomic) NSArray *itemsSelected;

- (instancetype)initWithItems:(NSArray*)items multipleItems:(BOOL)multiple;

@end
