//
//  ViewController.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "RootViewController.h"
#import <Highcharts/Highcharts.h>
#import "DemoViewController.h"

@interface RootViewController ()
@property (strong, nonatomic) NSArray *demoControllers;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UITableView appearance] setSeparatorColor:[UIColor colorWithRed:28/255.0 green:27/255.0 blue:36/255.0 alpha:1.0]];
    [[UITableView appearance] setBackgroundColor:[UIColor colorWithRed:28/255.0 green:27/255.0 blue:36/255.0 alpha:1.0]];
    [[UITableViewCell appearance] setBackgroundColor:[UIColor colorWithRed:39/255.0 green:39/255.0 blue:47/255.0 alpha:1.0]];
    [[UITableViewCell appearance] setTextColor:[UIColor whiteColor]];
    
    UIImageView *logo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo.png"]];
    [logo setContentMode:UIViewContentModeCenter];
    logo.bounds = CGRectInset(logo.frame, -25.0f,- 25.0f);
    [[UITableView appearance] setTableHeaderView:logo];
    
    [self setUpDemoControllers];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Demo View Controllers

- (void)setUpDemoControllers
{
    NSMutableArray *controllers = [NSMutableArray array];
    
    for (int index = 0; index < 100; index++) {
        DemoViewController *controller = [DemoViewController new];
        controller.title = @"line";
        [controllers addObject:controller];
    }

    
    self.demoControllers = [controllers copy];
}


#pragma mark - TableView Delegate Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.demoControllers.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    DemoViewController *controller = (DemoViewController*)[self.demoControllers objectAtIndex:indexPath.row];
    
    cell.textLabel.text = controller.title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
