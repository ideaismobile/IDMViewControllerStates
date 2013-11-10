//
//  UIViewController+States.m
//  IDMLoadingView
//
//  Created by Thiago Peres on 08/11/13.
//  Copyright (c) 2013 Ideais Mobile. All rights reserved.
//

#import "UIViewController+States.h"
#import "SAMLoadingView.h"

@implementation UIViewController (States)

- (CGRect)visibleRect
{
    return CGRectIntersection(self.view.bounds,
                              [[UIApplication sharedApplication] keyWindow].bounds);
}

- (SAMLoadingView*)loadingView
{
    static SAMLoadingView *_loadingView = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _loadingView = [[SAMLoadingView alloc] initWithFrame:[self visibleRect]];
        _loadingView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self.view addSubview:_loadingView];
    });
    
    return _loadingView;
}

@end
