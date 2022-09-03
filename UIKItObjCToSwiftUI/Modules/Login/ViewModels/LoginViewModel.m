//
//  DetailsViewModel.m
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import "LoginViewModel.h"

@implementation LoginViewModel

@synthesize observedViewModelDelegate;

- (instancetype) init {
    self = [super init];
    if (!self) return nil;
    
    [self prepareViewModel];
    
    return self;
}

- (void)dealloc {
    NSLog(@"dealloc %@", self.description);
}

- (void) prepareViewModel {
    self.title = @"Hello from Objective-C!";
    self.buttonTitle = @"Sign In";
}

- (void)buttonTapped {
    [self setTitle:@"Update"];

    // Update view model
    [self.observedViewModelDelegate viewModelDidUpdate:self];
}



@end
