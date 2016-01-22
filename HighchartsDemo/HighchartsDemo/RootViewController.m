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
#import "Demos.h"

@interface RootViewController ()
@property (strong, nonatomic) NSArray *demoControllers;
@property (strong, nonatomic) Demos *demos;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UITableView appearance] setSeparatorColor:[UIColor colorWithRed:28/255.0 green:27/255.0 blue:36/255.0 alpha:1.0]];
    [[UITableView appearance] setBackgroundColor:[UIColor colorWithRed:28/255.0 green:27/255.0 blue:36/255.0 alpha:1.0]];
    
    [[UITableViewCell appearance] setBackgroundColor:[UIColor colorWithRed:39/255.0 green:39/255.0 blue:47/255.0 alpha:1.0]];
    
    UIImageView *headerView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo.png"]];
    [headerView setContentMode:UIViewContentModeCenter];
    headerView.bounds = CGRectInset(headerView.frame, -25.0f,- 25.0f);
    [[UITableView appearance] setTableHeaderView:headerView];
    
    self.demos = [Demos new];
    
    [self setUpDemoOptions];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Demo View Controllers

- (void)setUpDemoOptions
{
    self.demoControllers = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Demos" ofType:@"plist"]];
}

#pragma mark - TableView Delegate Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.demoControllers.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *items = [[self.demoControllers objectAtIndex:section] objectForKey:@"items"];
    
    return items.count;
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
    
    NSDictionary *item = [self itemForIndexPath:indexPath];
    
    cell.textLabel.text = item[@"title"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    DemoViewController *demoViewController = [[DemoViewController alloc] init];
    
    NSDictionary *item = [self itemForIndexPath:indexPath];
    demoViewController.options  = [self.demos demoForName:item[@"options"]];
    
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:demoViewController];
    [navigation setModalPresentationStyle:UIModalPresentationFullScreen];
    
    [self presentViewController:navigation animated:YES completion:^(){
        
    }];
}

- (NSDictionary *)itemForIndexPath:(NSIndexPath *)indexPath
{
    NSArray *items = [[self.demoControllers objectAtIndex:indexPath.section] objectForKey:@"items"];
    NSDictionary *item = [items objectAtIndex:indexPath.row];
    
    return item;
}


@end
