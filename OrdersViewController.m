//
//  OrdersViewController.m
//  RoboNotification
//
//  Created by Kirill Tabasov on 17/08/2017.
//  Copyright © 2017 Kirill Tabasov. All rights reserved.
//

#import "OrdersViewController.h"
#import "OneOrderViewController.h"

@interface OrdersViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *tempOrder;
@property (nonatomic, strong) IBOutlet UITableView *tableView;
@end

@implementation OrdersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // достать текущие данные если есть
    // при переходе с пуша отрисовать данные
    
    self.tempOrder = [[NSMutableArray alloc] initWithObjects:@"order#1", @"order#2", @"order#3", nil];
}

#pragma mark TableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tempOrder.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
   
    //cell.textLabel.text = [NSString stringWithFormat:@"%@", [_tempOrder objectAtIndex:indexPath.row]];
    cell.textLabel.text = self.tempOrder[indexPath.row];
    
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"orderDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        NSString *name = self.tempOrder[indexPath.row];
        OneOrderViewController *vc = segue.destinationViewController;
        vc.name = name;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // програмный способ перехода в другой view
    // OneOrderViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"OneOrderViewController"];
    // vc.name = self.tempOrder[indexPath.row];
    // [self.navigationController pushViewController:vc animated:YES];

//    [self performSegueWithIdentifier:@"orderDetail" sender:self];
}

@end
