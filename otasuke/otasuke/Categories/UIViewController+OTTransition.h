//
// Created by A12893 on 2014/09/29.
// Copyright (c) 2014 MockTechLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

static const double DefaultPopViewAnimationDuration = 0.5f;
static const enum UIViewAnimationOptions DefaultPushViewAnimationOptions = UIViewAnimationOptionTransitionFlipFromRight;
static const enum UIViewAnimationOptions DefaultPopViewAnimationOptions = UIViewAnimationOptionTransitionFlipFromLeft;

@interface UIViewController (OTTransition)
- (void)pushViewController:(UIViewController *)viewController;
- (void)pushViewController:(UIViewController *)viewController viewAnimationOptions:(enum UIViewAnimationOptions)viewAnimationOptions;
- (void)pushViewController:(UIViewController *)viewController viewAnimationOptions:(enum UIViewAnimationOptions)viewAnimationOptions duration:(double)duration;

- (void)popToRoot;
- (void)popToRoot:(enum UIViewAnimationOptions)uiViewAnimationOptions;
- (void)popToRoot:(enum UIViewAnimationOptions)uiViewAnimationOptions duration:(double)duration;

+ (id)viewControllerWithClass:(Class)clazz;


@end