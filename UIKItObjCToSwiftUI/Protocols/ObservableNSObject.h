//
//  ObservableNSObject.h
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 9/3/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark - ObservableNSObjectDelegate

@protocol ObservableNSObject;
@protocol ObservableNSObjectDelegate <NSObject>

@required
- (void)viewModelDidUpdate:(id<ObservableNSObject>)viewModel;

@end

#pragma mark - ObservableNSObject

@protocol ObservableNSObject <NSObject>

@required
@property (nonatomic, weak) id <ObservableNSObjectDelegate> observedViewModelDelegate;

@end

NS_ASSUME_NONNULL_END
