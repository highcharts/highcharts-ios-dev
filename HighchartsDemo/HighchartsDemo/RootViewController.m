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
#import "OptionsProtocol.h"

@interface RootViewController ()

@property (strong, nonatomic) NSArray *demoControllers;
@property (strong, nonatomic) NSArray *themes;
@property (strong, nonatomic) UISegmentedControl *themeSelect;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:28/255.0 green:27/255.0 blue:36/255.0 alpha:1.0];
    
    [[UITableView appearance] setSeparatorColor:[UIColor colorWithRed:28/255.0 green:27/255.0 blue:36/255.0 alpha:1.0]];
    
    [[UITableViewCell appearance] setBackgroundColor:[UIColor colorWithRed:39/255.0 green:39/255.0 blue:47/255.0 alpha:1.0]];
    
    UIImageView *headerView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo.png"]];
    [headerView setContentMode:UIViewContentModeCenter];
    headerView.bounds = CGRectInset(headerView.frame, -25.0f, -75.0f);
    [[UITableView appearance] setTableHeaderView:headerView];
    
    [self setUpDemoThemes];
    
    [[UISegmentedControl appearance] setTintColor:[UIColor whiteColor]];
    
    self.themeSelect = [[UISegmentedControl alloc] init];
    NSUInteger index = 0;
    for (NSDictionary *theme in self.themes) {
        [self.themeSelect insertSegmentWithTitle:theme[@"name"] atIndex:index animated:NO];
        index++;
    }
    [headerView addSubview:self.themeSelect];
    [self.themeSelect setSelectedSegmentIndex:0];
    
    [self setUpDemoOptions];
    
    [self viewWillTransitionToSize:self.view.frame.size withTransitionCoordinator:self.transitionCoordinator];
    headerView.userInteractionEnabled = YES;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    [self.themeSelect setFrame:CGRectMake((size.width-360-40)/2.0, 50, 360.0f, 40.0f)];
}

#pragma mark - Demo View Controllers

- (void)setUpDemoOptions
{
    self.demoControllers = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Demos" ofType:@"plist"]];
}

- (void)setUpDemoThemes
{
    self.themes = @[ @{ @"name": @"Default" }, @{ @"name": @"Dark Unica", @"theme": @"dark-unica" }, @{ @"name": @"Sand Signika", @"theme": @"sand-signika" }, @{ @"name": @"Grid Light", @"theme": @"grid-light" } ];
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
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    NSDictionary *item = [self.demoControllers objectAtIndex:indexPath.row];
    
    cell.textLabel.text = item[@"title"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSDictionary *item = [self.demoControllers objectAtIndex:indexPath.row];
    
    DemoViewController *demoViewController = [[DemoViewController alloc] init];
    
    NSDictionary *theme = self.themes[self.themeSelect.selectedSegmentIndex];
    demoViewController.theme = theme[@"theme"];
    demoViewController.options = [NSClassFromString(item[@"class"]) options];
    
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:demoViewController];
    [navigation setModalPresentationStyle:UIModalPresentationFullScreen];
    
    [self presentViewController:navigation animated:YES completion:^(){
        
    }];
}

@end
