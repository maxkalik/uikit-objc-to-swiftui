//
//  HomeViewModel.m
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import "HomeViewModel.h"

@implementation HomeViewModel
@synthesize coordinatorDelegate;

- (instancetype) init {
    self = [super init];
    if (!self) return nil;
    
    [self prepareViewModel];
    
    return self;
}

- (void) prepareViewModel {
    self.buttonTitle = @"Sign In";

}

- (void) signInTap {
    [coordinatorDelegate homeViewModelLoginDidTap: self];
}

@end
