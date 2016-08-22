//
//  DashsboardViewController.m
//  HighFit
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "DashboardViewController.h"
#import <Highcharts/Highcharts.h>
#import "OptionsProvider.h"

@interface DashboardViewController ()
@property (strong, nonatomic) NSMutableArray *dataSources;
@property (strong, nonatomic) NSString *dataName;
@property (strong, nonatomic) NSMutableArray *charts;
@end

@implementation DashboardViewController

+ (instancetype)sharedDashboard
{
    static DashboardViewController *sharedDashboard = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedDashboard = [[DashboardViewController alloc] initWithNibName:nil bundle:nil];
    });
    
    return sharedDashboard;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.title = @"Dashboard";
        
        self.tabBarItem.image = [UIImage imageNamed:@"ic_content_paste_white"];
        
        self.dataSources = [NSMutableArray array];
        
        self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
        
        self.tableView.rowHeight = 240.0f;
        
        self.tableView.tableHeaderView.hidden = YES;
        
        self.dataName = @"day";
        
        [self.segment addTarget:self action:@selector(actionSegment:) forControlEvents:UIControlEventValueChanged];
        
        self.tableView.tableHeaderView = nil;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.tableView.separatorColor = [UIColor clearColor];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSources.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HighFitCell"];
    
    // Configure the cell...
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"HighFitCell"];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 240.0f)];
        
        
        NSArray *series = [self.dataSources objectAtIndex:indexPath.row][self.dataName];
        
        chartView.options = [OptionsProvider provideOptionsChartForseries:series];
        
        [cell addSubview:chartView];
        
        [self.charts addObject:chartView];
    }
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

/*
// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
}
*/

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

#pragma mark - Additional methods

- (void)dataSource:(NSDictionary*)dataSource show:(BOOL)show
{
    if (![self.dataSources containsObject:dataSource] && show) {
        [self.dataSources addObject:dataSource];
    } else {
        [self.dataSources removeObject:dataSource];
    }
    
    if (self.dataSources.count > 0) {
        self.tableView.tableHeaderView.hidden = NO;
    } else {
        self.tableView.tableHeaderView.hidden = YES;
    }
}

- (IBAction)actionSegment:(UISegmentedControl*)sender
{
    NSString *dataName = @"day";
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            dataName = @"day";
            break;
        case 1:
            dataName = @"week";
            break;
        case 2:
            dataName = @"month";
            break;
        case 3:
            dataName = @"year";
            break;
        default:
            break;
    }
    
    self.dataName = dataName;
    
    [self.tableView reloadData];
    
    //    [self.chartView reload];
}

@end
