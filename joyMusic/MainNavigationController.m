//
//  MainNavigationController.m
//  Amazing
//
//  Created by vvlong on 16/9/13.
//  Copyright © 2016年 vvlong. All rights reserved.
//
#define VVScreenWidth       [UIScreen mainScreen].bounds.size.width
#define VVScreenHeight      [UIScreen mainScreen].bounds.size.height
#import "MainNavigationController.h"
#import "MenuViewController.h"
#import "UIViewController+REFrostedViewController.h"

@interface MainNavigationController ()

@property (strong, readwrite, nonatomic) MenuViewController *menuViewController;

@end

@implementation MainNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UIButton *about = [[UIButton alloc]initWithFrame:CGRectMake(20, 30, 55, 25)];
    [about setTintColor:[UIColor blueColor]];
    [about setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [about setImage:[UIImage imageNamed:@"IQButtonBarArrowLeft@3x"] forState:UIControlStateNormal];
    about.titleLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    [about setTitle:@"about" forState:UIControlStateNormal];
    [about addTarget:self action:@selector(showMenu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:about];
    
    
    UIButton *logout = [[UIButton alloc]initWithFrame:CGRectMake(VVScreenWidth-10-55, 30, 55, 25)];
    [logout setTintColor:[UIColor blueColor]];
    [logout setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [logout setImage:[UIImage imageNamed:@"IQButtonBarArrowLeft@3x"] forState:UIControlStateNormal];
    logout.titleLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    [logout setTitle:@"注销" forState:UIControlStateNormal];
    [logout addTarget:self action:@selector(logout) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:logout];
    
//    右滑手势
    [self.view addGestureRecognizer:[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureRecognized:)]];
    [self.frostedViewController presentMenuViewController];
}

- (void)showMenu
{
    // Dismiss keyboard (optional)
    //
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    
    // Present the view controller
    //
    [self.frostedViewController presentMenuViewController];
}

-(void)logout {
    
}
#pragma mark -
#pragma mark Gesture recognizer

- (void)panGestureRecognized:(UIPanGestureRecognizer *)sender
{
    // Dismiss keyboard (optional)
    //
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    
    // Present the view controller
    //
    [self.frostedViewController panGestureRecognized:sender];
}

@end
