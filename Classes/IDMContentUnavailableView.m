//
//  ACOMPlaceholderView.m
//  Americanas
//
//  Created by Rodrigo Fontes on 1/7/14.
//  Copyright (c) 2014 Ideais. All rights reserved.
//

#import "IDMContentUnavailableView.h"

@implementation IDMContentUnavailableView

- (id)initWithFrame:(CGRect)frame
{
    UINib *nib = [UINib nibWithNibName:@"IDMContentUnavailableView" bundle:nil];
    NSArray *array = [nib instantiateWithOwner:self options:nil];
    self = [array firstObject];
    self.frame = frame;
    return self;
}

- (IBAction)reloadButtonTouched
{
    if (self.reloadButtonPressedBlock)
    {
        self.reloadButtonPressedBlock();
    }
}

- (void)setSuperviewScrollEnabled:(BOOL)enabled
{
    if ([self.superview isKindOfClass:[UIScrollView class]])
    {
        UIScrollView *scrollView = (UIScrollView*)self.superview;
        [scrollView setScrollEnabled:enabled];
    }
}

- (void)showWithTitle:(NSString*)title
              message:(NSString*)message
reloadButtonPressedBlock:(IDMReloadButtonPressedBlock)block
{
    self.titleLabel.text = title;
    self.messageLabel.text = message;
    if (block == nil)
    {
        [self.reloadButton setHidden:YES];
    }
    else
    {
        self.reloadButtonPressedBlock = [block copy];
    }
    [self show];
}

- (void)show
{
    [self setHidden:NO];
    [self.superview bringSubviewToFront:self];
    [self setSuperviewScrollEnabled:NO];
}

- (void)dismiss
{
    [self setHidden:YES];
    [self setSuperviewScrollEnabled:YES];
}

@end
