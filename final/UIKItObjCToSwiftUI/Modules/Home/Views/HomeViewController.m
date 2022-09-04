//
//  ViewController.m
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@property (nonatomic, strong) HomeViewModel *viewModel;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *button;

@end


@implementation HomeViewController

- (id)initWithViewModel: (HomeViewModel *) viewModel {
    self = [super initWithNibName: nil bundle: nil];
    if (self) {
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = UIColor.whiteColor;
    [self setupViews];
}

- (void)setupViews {
    
#pragma mark - Setup Greeting Label
    
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.textColor = UIColor.blackColor;
    self.titleLabel.font = [UIFont systemFontOfSize:17 weight: UIFontWeightBold];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.titleLabel setHidden: YES];

#pragma mark - Setup SignIn Button
    
    self.button = [UIButton buttonWithType: UIButtonTypeSystem];
    self.button.layer.cornerRadius = 10;
    self.button.backgroundColor = UIColor.blackColor;
    self.button.translatesAutoresizingMaskIntoConstraints = NO;
    self.button.titleLabel.font = [UIFont systemFontOfSize: 17 weight: UIFontWeightBold];
    [self.button setTitleColor: UIColor.whiteColor forState: UIControlStateNormal];
    [self.button setTitle: self.viewModel.buttonTitle forState: UIControlStateNormal];
    [self.button addTarget: self action: @selector(signInTap) forControlEvents: UIControlEventTouchUpInside];
    
#pragma mark - Setup constrains
    
    [self.view addSubview: self.titleLabel];
    [self.view addSubview: self.button];
    
    [NSLayoutConstraint activateConstraints: @[
        // Sign In Button
        [self.button.widthAnchor constraintEqualToConstant: 150],
        [self.button.heightAnchor constraintEqualToConstant: 50],
        [self.button.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor],
        [self.button.centerYAnchor constraintEqualToAnchor: self.view.centerYAnchor],
        
        // Greeting Label
        [self.titleLabel.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.titleLabel.bottomAnchor constraintEqualToAnchor:self.button.topAnchor constant:-20]
    ]];
}

- (void)signInTap {
    [self.viewModel signInTap];
}

@end
