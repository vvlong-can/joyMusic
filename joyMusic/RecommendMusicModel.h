//
//  RecommendMusicModel.h
//  joyMusic
//
//  Created by vvlong on 16/9/30.
//  Copyright © 2016年 vvlong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RecommendMusicModel : NSObject
@property (strong, nonatomic) NSString *userId;
@property (strong, nonatomic) NSString *weiboId;
@property (strong, nonatomic) NSString *userName;
@property (strong, nonatomic) NSURL *imageUrl;
@property (strong, nonatomic) NSString *date;
@property (strong, nonatomic) NSString *text;
@end
