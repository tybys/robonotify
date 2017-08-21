//
//  LoginViewController.m
//  RoboNotification
//
//  Created by Kirill Tabasov on 21/08/2017.
//  Copyright © 2017 Kirill Tabasov. All rights reserved.
//

#import "LoginViewController.h"
#import "OrdersViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

// Клик по кнопке авторизации
- (IBAction)didPressLogin:(UIButton *)sender {
    OrdersViewController *ordersVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"OrdersViewController"];

    [self presentViewController:ordersVC animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

@end
