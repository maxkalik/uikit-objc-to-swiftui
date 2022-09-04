//
//  ViewController.h
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import <UIKit/UIKit.h>
#import "HomeViewModel.h"

@interface HomeViewController : UIViewController

- (id) initWithViewModel: (HomeViewModel *) viewModel;

@end
