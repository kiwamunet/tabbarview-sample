//
//  OTMainViewController.h
//  otasuke
//
//  Created by suzuki_kiwamu on 10/5/14.
//  Copyright (c) 2014 suzuki_kiwamu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OTMainViewController;

@protocol OTMainViewControllerDelegate
//- (void)setAlarmButtonClicked:(SAMainViewController *)viewController;
//- (void)exerciseButtonClicked:(SAMainViewController *)viewController;
@end

@interface OTMainViewController : UIViewController
@property (nonatomic) id <OTMainViewControllerDelegate> delegate;

@end
