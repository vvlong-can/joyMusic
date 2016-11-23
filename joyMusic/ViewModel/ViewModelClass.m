//
//  ViewModelClass.m
//  joyMusic
//
//  Created by vvlong on 16/9/29.
//  Copyright © 2016年 vvlong. All rights reserved.
//

#import "ViewModelClass.h"

@implementation ViewModelClass
#pragma 获取网络可到达状态
-(void) netWorkStateWithNetConnectBlock: (NetWorkBlock) netConnectBlock WithURlStr: (NSString *) strURl;
{
    BOOL netState = [NetRequestClass netWorkReachabilityWithURLString:strURl];
    netConnectBlock(netState);
}

#pragma 接收穿过来的block
-(void) setBlockWithReturnBlock: (ReturnValueBlock) returnBlock
                 WithErrorBlock: (ErrorCodeBlock) errorBlock
               WithFailureBlock: (FailureBlock) failureBlock
{
    _returnBlock = returnBlock;
    _errorBlock = errorBlock;
    _failureBlock = failureBlock;
}
@end
