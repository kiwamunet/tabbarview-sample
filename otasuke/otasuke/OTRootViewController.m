//
//  ViewController.m
//  otasuke
//
//  Created by suzuki_kiwamu on 10/5/14.
//  Copyright (c) 2014 suzuki_kiwamu. All rights reserved.
//

#import "OTRootViewController.h"
#import "OTTabbarController.h"

@interface OTRootViewController ()

@end

@implementation OTRootViewController


+ (OTRootViewController *)newInstance {
    OTTabBarController *tabBarController = [OTTabBarController new];
    OTRootViewController *rootViewController = [[OTRootViewController alloc] initWithRootViewController:tabBarController];
    rootViewController.navigationBarHidden = YES;
    return rootViewController;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
