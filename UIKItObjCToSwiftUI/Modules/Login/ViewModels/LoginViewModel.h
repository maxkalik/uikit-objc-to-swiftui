//
//  DetailsViewModel.h
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import <Foundation/Foundation.h>
#import "ObservableNSObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewModel : NSObject <ObservableNSObject>

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *buttonTitle;

- (void) buttonTapped;

@end

NS_ASSUME_NONNULL_END

