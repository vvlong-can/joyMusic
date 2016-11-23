//
//  Recommend.h
//  joyMusic
//
//  Created by vvlong on 16/9/30.
//  Copyright © 2016年 vvlong. All rights reserved.
//

#import "ViewModelClass.h"
#import "RecommendMusicModel.h"
@interface Recommend : ViewModelClass
//获取推荐音乐列表
-(void) fetchRecommendMusic;

//跳转到微博详情页
-(void) musicDetailWithRecommendMusicModel: (RecommendMusicModel *) publicModel WithViewController: (UIViewController *)superController;
@end
