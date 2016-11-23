//
//  FirstViewController.m
//  joyMusic
//
//  Created by vvlong on 16/9/29.
//  Copyright © 2016年 vvlong. All rights reserved.
//

#import "FirstViewController.h"
#import"AFNetworking.h"
#import "UIKit+AFNetworking.h"
//#import "ReactiveCocoa/ReactiveCocoa.h"
#import "MainNavigationController.h"
#import "MenuViewController.h"
#import "MyMusicViewController.h"
#import "MusicShareViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Home Controller";
    //    UIButton *about = [[UIButton alloc]initWithFrame:CGRectMake(20, 20, 30, 30)];
    //    [about setTintColor:[UIColor blueColor]];
    //    [about setTitle:@"about" forState:UIControlStateApplication];
    //    [about addTarget:self action:@selector(showMenu) forControlEvents:UIControlEventTouchUpInside];
    //    [self.view addSubview:about];
    
    
    MusicShareViewController *musicShare=[[MusicShareViewController alloc]init];
    musicShare.tabBarItem.title=@"附近歌单";
    musicShare.tabBarItem.image = [UIImage imageNamed:@"first"];
//    c1.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"first"]];
    
    MyMusicViewController *myMusic=[[MyMusicViewController alloc]init];
    myMusic.tabBarItem.title=@"我的音乐";
    myMusic.tabBarItem.image = [UIImage imageNamed:@"second"];
//    c2.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"second"]];
    self.viewControllers=@[musicShare,myMusic];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
