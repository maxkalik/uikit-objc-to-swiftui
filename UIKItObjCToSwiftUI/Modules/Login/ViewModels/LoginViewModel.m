//
//  DetailsViewModel.m
//  UIKItObjCToSwiftUI
//
//  Created by Maksim Kalik on 8/28/22.
//

#import "LoginViewModel.h"

@interface LoginViewModel ()

- (void)prepareTitleWithName:(NSString *)name;

@end

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
    [self prepareTitleWithName:@""];
    self.buttonTitle = @"Sign In";
}

- (void)prepareTitleWithName:(NSString *)name {
    self.title = [NSString stringWithFormat:@"Hello, %@", name];
}

-(void)setName:(NSString *)name {
    if (_name != name) {
        _name = name;
        [self prepareTitleWithName:name];
        [self.observedViewModelDelegate viewModelDidUpdate:self];
    }
}

- (void)buttonTapped {
    [self setTitle:@"Signed in"];

    // Update view model
    [self.observedViewModelDelegate viewModelDidUpdate:self];
}

@end
