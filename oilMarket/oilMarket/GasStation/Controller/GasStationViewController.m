//
//  GasStationViewController.m
//  CrudeOilMarket
//
//  Created by ZengChanghuan on 2020/5/4.
//  Copyright © 2020年 ZengChanghuan. All rights reserved.
//

#import "GasStationViewController.h"

@interface GasStationViewController ()

@end

@implementation GasStationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    
   
}

- (void)selectItem:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        NSLog(@"正在销售");
    } else {
        NSLog(@"已下架");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
