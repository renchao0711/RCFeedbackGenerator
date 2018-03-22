//
//  RCFeedbackGenerator.m
//  RCFeedbackDemo
//
//  Created by apple on 2018/3/16.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "RCFeedbackGenerator.h"
#import <UIKit/UIKit.h>
#import <sys/utsname.h>
#import <AudioToolbox/AudioToolbox.h>

@implementation RCFeedbackGenerator

+ (BOOL)isiOS10andUp {
    if (@available(iOS 11.0,*)) {
        NSLog(@"iOS10及以上机型");
        return YES;
    }else {
        NSLog(@"iOS10以下机型");
        return NO;
    }
}

+ (NSString *)judgeDeviceModel {
    
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *phoneType = [NSString stringWithCString: systemInfo.machine encoding:NSASCIIStringEncoding];
    NSLog(@"phoneType:%@",phoneType);
    
    if ([phoneType isEqualToString:@"iPhone1,1"]) {
        return @"iPhone 2G";
    } else if ([phoneType isEqualToString:@"iPhone1,2"]) {
        return @"iPhone 3G";
    } else if ([phoneType isEqualToString:@"iPhone2,1"]) {
        return @"iPhone 3GS";
    } else if ([phoneType isEqualToString:@"iPhone3,1"]) {
        return @"iPhone 4";
    } else if ([phoneType isEqualToString:@"iPhone3,2"]) {
        return @"iPhone 4";
    } else if ([phoneType isEqualToString:@"iPhone3,3"]) {
        return @"iPhone 4";
    } else if ([phoneType isEqualToString:@"iPhone4,1"]) {
        return @"iPhone 4S";
    } else if ([phoneType isEqualToString:@"iPhone5,1"]) {
        return @"iPhone 5";
    } else if ([phoneType isEqualToString:@"iPhone5,2"]) {
        return @"iPhone 5";
    } else if ([phoneType isEqualToString:@"iPhone5,3"]) {
        return @"iPhone 5c";
    } else if ([phoneType isEqualToString:@"iPhone5,4"]) {
        return @"iPhone 5c";
    } else if ([phoneType isEqualToString:@"iPhone6,1"]) {
        return @"iPhone 5s";
    } else if ([phoneType isEqualToString:@"iPhone6,2"]) {
        return @"iPhone 5s";
    } else if ([phoneType isEqualToString:@"iPhone7,1"]) {
        return @"iPhone 6 Plus";
    } else if ([phoneType isEqualToString:@"iPhone7,2"]) {
        return @"iPhone 6";
    } else if ([phoneType isEqualToString:@"iPhone8,1"]) {
        return @"iPhone 6s";
    } else if ([phoneType isEqualToString:@"iPhone8,2"]) {
        return @"iPhone 6s Plus";
    } else if ([phoneType isEqualToString:@"iPhone8,4"]) {
        return @"iPhone SE";
    } else if ([phoneType isEqualToString:@"iPhone9,1"]) {
        return @"iPhone 7";
    } else if ([phoneType isEqualToString:@"iPhone9,3"]) {
        return @"iPhone 7";
    } else if ([phoneType isEqualToString:@"iPhone9,2"]) {
        return @"iPhone 7 Plus";
    } else if ([phoneType isEqualToString:@"iPhone9,4"]) {
        return @"iPhone 7 Plus";
    } else if ([phoneType isEqualToString:@"iPhone10,1"]) {
        return @"iPhone 8";
    } else if ([phoneType isEqualToString:@"iPhone10,4"]) {
        return @"iPhone 8";
    } else if ([phoneType isEqualToString:@"iPhone10,2"]) {
        return @"iPhone 8 Plus";
    } else if ([phoneType isEqualToString:@"iPhone10,5"]) {
        return @"iPhone 8 Plus";
    } else if ([phoneType isEqualToString:@"iPhone10,3"]) {
        return @"iPhone X";
    } else if ([phoneType isEqualToString:@"iPhone10,6"]) {
        return @"iPhone X";
    } else {
        NSLog(@"机型无法判断");
        return nil;
    }
}

+ (void)startFeedBackwithLevel:(RCFeedbackLevelType)rcFeedbackLevelType {
    
    NSLog(@"%@",[self judgeDeviceModel]);
    NSString *deviceType = [self judgeDeviceModel];
    
    if ([deviceType isEqualToString:@"iPhone 7"]
        || [deviceType isEqualToString:@"iPhone 7 Plus"]
        || [deviceType isEqualToString:@"iPhone 8"]
        || [deviceType isEqualToString:@"iPhone 8 Plus"]
        || [deviceType isEqualToString:@"iPhone X"]) {
        
        if (0 == rcFeedbackLevelType) {
            NSLog(@"UIImpactFeedbackStyleLight");
            UIImpactFeedbackGenerator *impact = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleLight];
            [impact impactOccurred];
        } else if (1 == rcFeedbackLevelType) {
            NSLog(@"UIImpactFeedbackStyleMedium");
            UIImpactFeedbackGenerator *impact = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleMedium];
            [impact impactOccurred];
        } else if (2 == rcFeedbackLevelType) {
            NSLog(@"UIImpactFeedbackStyleHeavy");
            UIImpactFeedbackGenerator *impact = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleHeavy];
            [impact impactOccurred];
        }
    }
    else if ([deviceType isEqualToString:@"iPhone 6s"]
             || [deviceType isEqualToString:@"iPhone 6s Plus"]) {
        
        if (0 == rcFeedbackLevelType) {
            NSLog(@"AudioServicesPlaySystemSound(1519)");
            AudioServicesPlaySystemSound(1519);
        } else if (1 == rcFeedbackLevelType) {
            NSLog(@"AudioServicesPlaySystemSound(1520)");
            AudioServicesPlaySystemSound(1520);
        } else if (2 == rcFeedbackLevelType) {
            NSLog(@"AudioServicesPlaySystemSound(1521)");
            AudioServicesPlaySystemSound(1520);
        }
    }
    else {
        NSLog(@"系统无法为旧设备提供震动反馈");
    }
}

@end
