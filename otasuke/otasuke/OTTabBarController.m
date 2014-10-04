//
//  OTTabbarController.m
//  otasuke
//
//  Created by suzuki_kiwamu on 10/5/14.
//  Copyright (c) 2014 suzuki_kiwamu. All rights reserved.
//

#import "OTTabBarController.h"
#import "OTSettingViewController.h"
#import "OTCourceViewController.h"
#import "UIViewController+OTTransition.h"


@interface OTTabBarController (){
    OTMainViewController *mainViewController;
    OTCourceViewController *courceViewController;
    OTSettingViewController *settingViewController;
  
}


@end

@implementation OTTabBarController


- (id)init {
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    mainViewController = (OTMainViewController *) [UIViewController viewControllerWithClass:[OTMainViewController class]];
    mainViewController.delegate = self;
    courceViewController = (OTCourceViewController *) [UIViewController viewControllerWithClass:[OTCourceViewController class]];
    settingViewController = (OTSettingViewController *) [UIViewController viewControllerWithClass:[OTSettingViewController class]];
    NSArray *viewControllers = @[mainViewController,courceViewController,settingViewController];
    [self setViewControllers:viewControllers animated:YES];
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
