//
//  DetailViewController.h
//  IDMLoadingView
//
//  Created by Thiago Peres on 08/11/13.
//  Copyright (c) 2013 Ideais Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
