//
//  OneOrderViewController.m
//  RoboNotification
//
//  Created by Kirill Tabasov on 17/08/2017.
//  Copyright © 2017 Kirill Tabasov. All rights reserved.
//

#import "OneOrderViewController.h"

@interface OneOrderViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@end

@implementation OneOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.nameLabel.text = @"self.name";
}

@end
