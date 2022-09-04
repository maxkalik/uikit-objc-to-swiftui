//
//  Coordinator.h
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Coordinator <NSObject>

@required
- (void)start;

@end

NS_ASSUME_NONNULL_END
