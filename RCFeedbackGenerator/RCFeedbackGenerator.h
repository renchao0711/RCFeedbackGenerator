//
//  RCFeedbackGenerator.h
//  RCFeedbackDemo
//
//  Created by apple on 2018/3/16.
//  Copyright © 2018年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, RCFeedbackLevelType) {
    RCFeedbackLevelLight,    //0
    RCFeedbackLevelMedium,   //1
    RCFeedbackLevelHeavy     //2
};

@interface RCFeedbackGenerator : NSObject

- (instancetype)initWithFeedBackwithLevel:(RCFeedbackLevelType)rcFeedbackLevelType;

- (BOOL)isiOS10andUp;             //判断系统版本是否是iOS10以上

- (NSString *)judgeDeviceModel;   //判断手机设备型号

- (void)fire;                     //开启反馈

@end
