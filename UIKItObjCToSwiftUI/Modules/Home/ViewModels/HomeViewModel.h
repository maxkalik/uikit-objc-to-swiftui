//
//  HomeViewModel.h
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Delegates

@class HomeViewModel;

@protocol HomeViewModelCoordinatorDelegate <NSObject>

- (void)homeViewModelLoginDidTap:(HomeViewModel *)sender;

@end

#pragma mark - Header

@interface HomeViewModel : NSObject

@property (nonatomic, retain) id <HomeViewModelCoordinatorDelegate> coordinatorDelegate;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *buttonTitle;

- (void) signInTap;

@end

NS_ASSUME_NONNULL_END
