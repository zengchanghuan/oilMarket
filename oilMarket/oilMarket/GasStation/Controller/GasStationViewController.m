//
//  GasStationViewController.m
//  CrudeOilMarket
//
//  Created by ZengChanghuan on 2020/5/4.
//  Copyright © 2020年 ZengChanghuan. All rights reserved.
//

#import "GasStationViewController.h"
#import "NYSegmentedControl.h"
@interface GasStationViewController ()

@end

@implementation GasStationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NYSegmentedControl *seq = [self blueSegmentedControl];
    seq.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width-80, 44);
    self.navigationItem.titleView = seq;
    [seq addTarget:self action:@selector(selectItem:) forControlEvents:UIControlEventValueChanged];
}

- (NYSegmentedControl *)blueSegmentedControl {
    NYSegmentedControl *blueSegmentedControl = [[NYSegmentedControl alloc] initWithItems:@[@"默认通道", @"柴油通道"]];
    blueSegmentedControl.titleTextColor = [UIColor colorWithRed:0.38f green:0.68f blue:0.93f alpha:1.0f];
    blueSegmentedControl.selectedTitleTextColor = [UIColor whiteColor];
    blueSegmentedControl.segmentIndicatorBackgroundColor = [UIColor colorWithRed:0.38f green:0.68f blue:0.93f alpha:1.0f];
    blueSegmentedControl.backgroundColor = [UIColor colorWithRed:0.31f green:0.53f blue:0.72f alpha:1.0f];
    blueSegmentedControl.borderWidth = 0.0f;
    blueSegmentedControl.segmentIndicatorBorderWidth = 0.0f;
    blueSegmentedControl.segmentIndicatorInset = 2.0f;
    blueSegmentedControl.segmentIndicatorBorderColor = self.view.backgroundColor;
    blueSegmentedControl.cornerRadius = blueSegmentedControl.intrinsicContentSize.height / 2.0f;
    blueSegmentedControl.usesSpringAnimations = YES;
    return blueSegmentedControl;
}

- (void)selectItem:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        NSLog(@"默认通道");
    } else {
        NSLog(@"柴油通道");
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
