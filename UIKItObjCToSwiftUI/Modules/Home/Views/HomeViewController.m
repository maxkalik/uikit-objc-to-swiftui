//
//  ViewController.m
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@property (nonatomic, strong) HomeViewModel *viewModel;
@property (nonatomic, strong) UILabel *greetingLabel;
@property (nonatomic, strong) UIButton *signInButton;

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
    
    self.greetingLabel = [[UILabel alloc] init];
    self.greetingLabel.textColor = UIColor.blackColor;
    self.greetingLabel.font = [UIFont systemFontOfSize:17 weight: UIFontWeightBold];
    self.greetingLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.greetingLabel setHidden: YES];

#pragma mark - Setup SignIn Button
    
    self.signInButton = [UIButton buttonWithType: UIButtonTypeSystem];
    self.signInButton.layer.cornerRadius = 10;
    self.signInButton.backgroundColor = UIColor.blackColor;
    self.signInButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.signInButton.titleLabel.font = [UIFont systemFontOfSize: 17 weight: UIFontWeightBold];
    [self.signInButton setTitleColor: UIColor.whiteColor forState: UIControlStateNormal];
    [self.signInButton setTitle: self.viewModel.buttonTitle forState: UIControlStateNormal];
    [self.signInButton addTarget: self action: @selector(signInTap) forControlEvents: UIControlEventTouchUpInside];
    
#pragma mark - Setup constrains
    
    [self.view addSubview: self.greetingLabel];
    [self.view addSubview: self.signInButton];
    
    [NSLayoutConstraint activateConstraints: @[
        // Sign In Button
        [self.signInButton.widthAnchor constraintEqualToConstant: 150],
        [self.signInButton.heightAnchor constraintEqualToConstant: 50],
        [self.signInButton.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor],
        [self.signInButton.centerYAnchor constraintEqualToAnchor: self.view.centerYAnchor],
        
        // Greeting Label
        [self.greetingLabel.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.greetingLabel.bottomAnchor constraintEqualToAnchor:self.signInButton.topAnchor constant:-20]
    ]];
}

- (void)signInTap {
    [self.viewModel signInTap];
}

@end
