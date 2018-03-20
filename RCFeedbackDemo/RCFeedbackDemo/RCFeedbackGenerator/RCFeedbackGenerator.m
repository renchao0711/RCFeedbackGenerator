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
        NSLog(@"YES");
        return YES;
    }else {
        NSLog(@"NO");
        return NO;
    }
}

+ (NSString *)judgeDeviceModel {
    
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *phoneType = [NSString stringWithCString: systemInfo.machine encoding:NSASCIIStringEncoding];
    NSLog(@"----%@",phoneType);
    
    if([phoneType  isEqualToString:@"iPhone1,1"])  return@"iPhone 2G";
    
    if([phoneType  isEqualToString:@"iPhone1,2"])  return@"iPhone 3G";
    
    if([phoneType  isEqualToString:@"iPhone2,1"])  return@"iPhone 3GS";
    
    if([phoneType  isEqualToString:@"iPhone3,1"])  return@"iPhone 4";
    
    if([phoneType  isEqualToString:@"iPhone3,2"])  return@"iPhone 4";
    
    if([phoneType  isEqualToString:@"iPhone3,3"])  return@"iPhone 4";
    
    if([phoneType  isEqualToString:@"iPhone4,1"])  return@"iPhone 4S";
    
    if([phoneType  isEqualToString:@"iPhone5,1"])  return@"iPhone 5";
    
    if([phoneType  isEqualToString:@"iPhone5,2"])  return@"iPhone 5";
    
    if([phoneType  isEqualToString:@"iPhone5,3"])  return@"iPhone 5c";
    
    if([phoneType  isEqualToString:@"iPhone5,4"])  return@"iPhone 5c";
    
    if([phoneType  isEqualToString:@"iPhone6,1"])  return@"iPhone 5s";
    
    if([phoneType  isEqualToString:@"iPhone6,2"])  return@"iPhone 5s";
    
    if([phoneType  isEqualToString:@"iPhone7,1"])  return@"iPhone 6 Plus";
    
    if([phoneType  isEqualToString:@"iPhone7,2"])  return@"iPhone 6";
    
    if([phoneType  isEqualToString:@"iPhone8,1"])  return@"iPhone 6s";
    
    if([phoneType  isEqualToString:@"iPhone8,2"])  return@"iPhone 6s Plus";
    
    if([phoneType  isEqualToString:@"iPhone8,4"])  return@"iPhone SE";
    
    if([phoneType  isEqualToString:@"iPhone9,1"])  return@"iPhone 7";
    
    if([phoneType  isEqualToString:@"iPhone9,3"])  return@"iPhone 7";

    if([phoneType  isEqualToString:@"iPhone9,2"])  return@"iPhone 7 Plus";
    
    if([phoneType  isEqualToString:@"iPhone9,4"])  return@"iPhone 7 Plus";

    if([phoneType  isEqualToString:@"iPhone10,1"]) return@"iPhone 8";
    
    if([phoneType  isEqualToString:@"iPhone10,4"]) return@"iPhone 8";
    
    if([phoneType  isEqualToString:@"iPhone10,2"]) return@"iPhone 8 Plus";
    
    if([phoneType  isEqualToString:@"iPhone10,5"]) return@"iPhone 8 Plus";
    
    if([phoneType  isEqualToString:@"iPhone10,3"]) return@"iPhone X";
    
    if([phoneType  isEqualToString:@"iPhone10,6"]) return@"iPhone X";
    
    else{   NSLog(@"机型无法判断");                  return nil;}
}

+ (void)startFeedBackwithLevel:(RCFeedbackLevelType)rcFeedbackLevelType; {   //开启反馈
    
    NSLog(@"%@",[self judgeDeviceModel]);
    
    NSString *deviceType = [self judgeDeviceModel];
    
    if ([deviceType isEqualToString:@"iPhone 7"] || [deviceType isEqualToString:@"iPhone 7 Plus"] ||
        [deviceType isEqualToString:@"iPhone 8"] || [deviceType isEqualToString:@"iPhone 8 Plus"] ||
        [deviceType isEqualToString:@"iPhone X"]) {
        
        if (rcFeedbackLevelType == 0 ) {
            NSLog(@"UIImpactFeedbackStyleLight");
            UIImpactFeedbackGenerator *impact = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleLight];
            [impact impactOccurred];
        }
        else if (rcFeedbackLevelType == 1) {
            NSLog(@"UIImpactFeedbackStyleMedium");
            UIImpactFeedbackGenerator *impact = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleMedium];
            [impact impactOccurred];
        }
        else if (rcFeedbackLevelType == 2) {
            NSLog(@"UIImpactFeedbackStyleHeavy");
            
            UIImpactFeedbackGenerator *impact = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleHeavy];
            [impact impactOccurred];
        }
    }
    else if ([deviceType isEqualToString:@"iPhone 6s"] || [deviceType isEqualToString:@"iPhone 6s Plus"]) {
        
        if (rcFeedbackLevelType == 0 ) {
            NSLog(@"AudioServicesPlaySystemSound(1519)");
            AudioServicesPlaySystemSound(1519);
        }
        
        else if (rcFeedbackLevelType == 1) {
            NSLog(@"AudioServicesPlaySystemSound(1520)");
            AudioServicesPlaySystemSound(1520);
        }
        
        else if (rcFeedbackLevelType == 2) {
            NSLog(@"AudioServicesPlaySystemSound(1521)");
            AudioServicesPlaySystemSound(1520);
        }
    }
    else {
        NSLog(@"系统无法为旧设备提供震动反馈");
    }
}


@end
