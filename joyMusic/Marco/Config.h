//
//  Config.h
//  joyMusic
//
//  Created by vvlong on 16/9/29.
//  Copyright © 2016年 vvlong. All rights reserved.
//

#ifndef Config_h
#define Config_h
#import <Foundation/Foundation.h>

//定义返回请求数据的block类型
typedef void (^ReturnValueBlock) (id returnValue);
typedef void (^ErrorCodeBlock) (id errorCode);
typedef void (^FailureBlock)();
typedef void (^NetWorkBlock)(BOOL netConnetState);

#define DDLog(xx, ...)  NSLog(@"%s(%d): " xx, __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

//accessToken
#define ACCESSTOKEN @"2.00NofgBD0L1k4pc584f79cc48SKGdD"

//请求公共微博的网络接口
#define REQUESTPUBLICURL @"https://api.weibo.com/2/statuses/public_timeline.json"

#define SOURCE @"source"
#define TOKEN @"access_token"
#define COUNT @"count"

#define STATUSES @"statuses"
#define CREATETIME @"created_at"
#define WEIBOID @"id"
#define WEIBOTEXT @"text"
#define USER @"user"
#define UID @"id"
#define HEADIMAGEURL @"profile_image_url"
#define USERNAME @"screen_name"

#endif /* Config_h */
