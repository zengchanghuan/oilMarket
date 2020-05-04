//
//  COTabBarViewController.m
//  CrudeOilMarket
//
//  Created by ZengChanghuan on 2020/5/4.
//  Copyright © 2020年 ZengChanghuan. All rights reserved.
//

#import "COTabBarViewController.h"
#import "CONavigationController.h"
#import "MeViewController.h"
#import "AddCreditsViewController.h"
#import "MarketViewController.h"
#import "GasStationViewController.h"
@interface COTabBarViewController ()

@end

@implementation COTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    GasStationViewController *gasStation = [GasStationViewController new];
    MarketViewController *market = [MarketViewController new];
    AddCreditsViewController *addCtedits = [AddCreditsViewController new];
    MeViewController *me = [MeViewController new];
    UINavigationController *gasStationNav = [[UINavigationController alloc] initWithRootViewController:gasStation];
    UINavigationController *marketNav = [[UINavigationController alloc] initWithRootViewController:market];
    UINavigationController *addCteditsNav = [[UINavigationController alloc] initWithRootViewController:addCtedits];
    UINavigationController *meNav = [[UINavigationController alloc] initWithRootViewController:me];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
