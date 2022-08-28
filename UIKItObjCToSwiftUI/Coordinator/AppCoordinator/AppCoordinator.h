//
//  AppCoordinator.h
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import <UIKit/UIKit.h>
#import "Coordinator.h"
#import "HomeViewController.h"
#import "HomeViewModel.h"
#import "LoginViewModel.h"
#import "LoginViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppCoordinator: NSObject<Coordinator>

@property (nullable, nonatomic, weak) UINavigationController *navigationController;

- (instancetype)initWithNavigationController: (UINavigationController *) navigationController;

@end

NS_ASSUME_NONNULL_END
