//
//  OneOrderViewController.m
//  RoboNotification
//
//  Created by Kirill Tabasov on 17/08/2017.
//  Copyright © 2017 Kirill Tabasov. All rights reserved.
//

#import "OneOrderViewController.h"

@interface OneOrderViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelLabel;
@end

@implementation OneOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.labelLabel.text = self.name;
}

@end
