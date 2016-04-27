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

@property (strong, nonatomic) NSArray *demos;
@property (strong, nonatomic) NSString *theme;
@property (strong, nonatomic) NSString *plugin;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:28/255.0 green:27/255.0 blue:36/255.0 alpha:1.0];
    self.view.backgroundColor = [UIColor colorWithRed:28/255.0 green:27/255.0 blue:36/255.0 alpha:1.0];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo.png"]];
    
    [[UITableView appearance] setSeparatorColor:[UIColor colorWithRed:28/255.0 green:27/255.0 blue:36/255.0 alpha:1.0]];
    [[UITableViewCell appearance] setBackgroundColor:[UIColor colorWithRed:39/255.0 green:39/255.0 blue:47/255.0 alpha:1.0]];
    
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Theme" style:UIBarButtonItemStyleDone target:self action:@selector(presentThemeSelector)];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Plugin" style:UIBarButtonItemStyleDone target:self action:@selector(presentPluginSelector)];
    
    self.demos = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Demos" ofType:@"plist"]];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - TableView Delegate Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.demos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    cell.textLabel.text = [self.demos objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
 
    NSString *demo = [self.demos objectAtIndex:indexPath.row];
    
    [self presentDemo:demo];
}

- (void)presentDemo:(NSString*)demo
{
    DemoViewController *demoViewController = [[DemoViewController alloc] init];
    demoViewController.options = [self optionsForDemoName:demo];
    demoViewController.theme = @"gray";
    demoViewController.plugin = @"exporting";
    
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:demoViewController];
    [navigation setModalPresentationStyle:UIModalPresentationFullScreen];
    
    [self presentViewController:navigation animated:YES completion:nil];
}

- (NSDictionary*)optionsForDemoName:(NSString*)demoName
{
    NSString *demoClass = [demoName stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    return [NSClassFromString(demoClass) options];
}

@end
