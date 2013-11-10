//
//  UIViewController+States.h
//  IDMLoadingView
//
//  Created by Thiago Peres on 08/11/13.
//  Copyright (c) 2013 Ideais Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SAMLoadingView.h"

@interface UIViewController (States)

@property (nonatomic, readonly) SAMLoadingView *loadingView;

@end
