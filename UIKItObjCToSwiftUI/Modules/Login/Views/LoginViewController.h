//
//  DetailsViewController.h
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import <UIKit/UIKit.h>
#import "LoginViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : UIViewController

- (id) initWithViewModel: (LoginViewModel *) viewModel;

@end

NS_ASSUME_NONNULL_END
