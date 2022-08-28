//
//  AppCoordinator.m
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import "AppCoordinator.h"

@interface AppCoordinator () <HomeViewModelCoordinatorDelegate>

@end

@implementation AppCoordinator

- (instancetype)initWithNavigationController: (UINavigationController *) navigationController {
    self = [super init];
    if (!self) return nil;
    
    self.navigationController = navigationController;
    
    return self;
}

- (void)start {
    HomeViewModel *viewModel = [[HomeViewModel alloc] init];
    [viewModel setCoordinatorDelegate: self];
    HomeViewController *viewController = [[HomeViewController alloc] initWithViewModel: viewModel];
    [self.navigationController pushViewController: viewController animated: YES];
}

- (void)showLogin {
    LoginViewModel *viewModel = [[LoginViewModel alloc] init];
    LoginViewController *viewController = [[LoginViewController alloc] initWithViewModel: viewModel];
    [self.navigationController presentViewController: viewController animated: true completion: nil];
}

#pragma mark - HomeViewModelCoordinatorDelegate

- (void)homeViewModelLoginDidTap:(HomeViewModel *)homeViewModel {
    [self showLogin];
}

@end


