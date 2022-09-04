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
    // Show SwiftUI LoginView
}

#pragma mark - HomeViewModelCoordinatorDelegate

- (void)homeViewModelLoginDidTap:(HomeViewModel *)homeViewModel {
    [self showLogin];
}

@end


