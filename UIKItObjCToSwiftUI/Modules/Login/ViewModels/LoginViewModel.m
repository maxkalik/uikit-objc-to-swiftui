//
//  DetailsViewModel.m
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import "LoginViewModel.h"

@implementation LoginViewModel

- (instancetype) init {
    self = [super init];
    if (!self) return nil;
    
    [self prepareViewModel];
    
    return self;
}

- (void) prepareViewModel {
    self.title = @"Hello from Objective-C!";
    self.buttonTitle = @"Sign In";
}

- (void)buttonTapped {
    self.title = @"Updated";
}

@end
