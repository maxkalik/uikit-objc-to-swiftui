//
//  DetailsViewController.m
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (nonatomic, strong) LoginViewModel *viewModel;

@end


@implementation LoginViewController

- (id) initWithViewModel: (LoginViewModel *) viewModel {
    self = [super initWithNibName: nil bundle: nil];
    if (self) {
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.redColor;
}

@end
