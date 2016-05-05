//
//  ItemSelectViewController.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "ItemSelectViewController.h"

@interface ItemSelectViewController ()

@property (assign, nonatomic) BOOL multiple;
@property (strong, nonatomic) NSArray *items;
@property (strong, nonatomic) NSIndexPath *selectedRow;

@end

@implementation ItemSelectViewController

- (instancetype)initWithItems:(NSArray*)items multipleItems:(BOOL)multiple
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        self.multiple = multiple;
        self.items = items;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:28/255.0 green:27/255.0 blue:36/255.0 alpha:1.0];
    self.view.backgroundColor = [UIColor colorWithRed:28/255.0 green:27/255.0 blue:36/255.0 alpha:1.0];
    self.tableView.separatorColor = [UIColor colorWithRed:28/255.0 green:27/255.0 blue:36/255.0 alpha:1.0];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done)];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.tableView selectRowAtIndexPath:self.selectedRow animated:NO scrollPosition:UITableViewScrollPositionNone];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.backgroundColor = [UIColor colorWithRed:39/255.0 green:39/255.0 blue:47/255.0 alpha:1.0];
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    cell.accessoryType = UITableViewCellAccessoryNone;
    
    cell.textLabel.text = [self.items objectAtIndex:indexPath.row][@"name"];
    
    return cell;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSIndexPath *oldIndex = [self.tableView indexPathForSelectedRow];
    
    [self.tableView cellForRowAtIndexPath:oldIndex].accessoryType = UITableViewCellAccessoryNone;
    [self.tableView cellForRowAtIndexPath:indexPath].accessoryType = (oldIndex == indexPath) ? UITableViewCellAccessoryNone : UITableViewCellAccessoryCheckmark;
    
    self.selectedRow = (oldIndex == indexPath) ? nil : indexPath;
    
    return (oldIndex == indexPath) ? nil : indexPath;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (!indexPath) {
        self.itemsSelected = nil;
        return;
    }
    
    if (self.multiple) {
        self.itemsSelected = [[self.items objectAtIndex:indexPath.row][@"items"] copy];
    } else {
        self.itemsSelected = @[[[self.items objectAtIndex:indexPath.row][@"item"] copy]];
    }
}

#pragma mark - Dismiss view

- (void)done
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
