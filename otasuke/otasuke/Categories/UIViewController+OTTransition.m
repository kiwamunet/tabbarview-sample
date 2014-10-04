//
// Created by A12893 on 2014/09/29.
// Copyright (c) 2014 MockTechLab. All rights reserved.
//

#import "UIViewController+OTTransition.h"


@implementation UIViewController (OTTransition)
- (void)pushViewController:(UIViewController *)viewController {
    [self pushViewController:viewController viewAnimationOptions:DefaultPushViewAnimationOptions];
}

- (void)pushViewController:(UIViewController *)viewController viewAnimationOptions:(enum UIViewAnimationOptions)viewAnimationOptions {
    [self pushViewController:viewController viewAnimationOptions:viewAnimationOptions duration:DefaultPopViewAnimationDuration];
}

- (void)pushViewController:(UIViewController *)viewController viewAnimationOptions:(enum UIViewAnimationOptions)viewAnimationOptions duration:(double)duration {
    [UIView transitionWithView:self.navigationController.view
                      duration:duration
                       options:viewAnimationOptions
                    animations:^{
                        [self.navigationController pushViewController:viewController animated:NO];
                    }
                    completion:nil];
}

- (void)popToRoot {
    [self popToRoot:DefaultPopViewAnimationOptions];
}

- (void)popToRoot:(enum UIViewAnimationOptions)uiViewAnimationOptions {
    [self popToRoot:uiViewAnimationOptions duration:DefaultPopViewAnimationDuration];
}

- (void)popToRoot:(enum UIViewAnimationOptions)uiViewAnimationOptions duration:(double)duration {
    [UIView transitionWithView:self.navigationController.view
                      duration:duration
                       options:uiViewAnimationOptions
                    animations:^{
                        [self.navigationController popToRootViewControllerAnimated:NO];
                    }
                    completion:nil];
}

+ (id)viewControllerWithClass:(Class)clazz {
    if (![clazz isSubclassOfClass:[UIViewController class]]) {
        [NSException raise:@"%@ is not a subclass of %@" format:[clazz description], [UIViewController class]];
    }
    NSString *name = NSStringFromClass(clazz);
    UIViewController *viewController = (UIViewController *) [clazz alloc];
    return [viewController initWithNibName:name bundle:nil];
}


@end