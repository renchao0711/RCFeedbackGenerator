//
//  ViewController.m
//  RCFeedbackDemo
//
//  Created by apple on 2018/3/16.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>
#import "RCFeedbackGenerator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(0, 70, self.view.frame.size.width, 50);
    [button1 setTitle:@"UIImpactFeedbackGenerator -- light" forState:UIControlStateNormal];
    button1.tintColor = [UIColor whiteColor];
    button1.backgroundColor = [UIColor grayColor];
    [button1 addTarget:self action:@selector(button1Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(0, 130, self.view.frame.size.width, 50);
    [button2 setTitle:@"UIImpactFeedbackGenerator -- medium" forState:UIControlStateNormal];
    button2.tintColor = [UIColor whiteColor];
    button2.backgroundColor = [UIColor grayColor];
    [button2 addTarget:self action:@selector(button2Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3.frame = CGRectMake(0, 190, self.view.frame.size.width, 50);
    [button3 setTitle:@"UIImpactFeedbackGenerator -- heavy" forState:UIControlStateNormal];
    button3.tintColor = [UIColor whiteColor];
    button3.backgroundColor = [UIColor grayColor];
    [button3 addTarget:self action:@selector(button3Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button4.frame = CGRectMake(0, 250, self.view.frame.size.width, 50);
    [button4 setTitle:@"UISelectionFeedbackGenerator" forState:UIControlStateNormal];
    button4.tintColor = [UIColor whiteColor];
    button4.backgroundColor = [UIColor grayColor];
    [button4 addTarget:self action:@selector(button4Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button4];
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button5.frame = CGRectMake(0, 310, self.view.frame.size.width, 50);
    [button5 setTitle:@"UINotificationFeedbackGenerator -- success" forState:UIControlStateNormal];
    button5.tintColor = [UIColor whiteColor];
    button5.backgroundColor = [UIColor grayColor];
    [button5 addTarget:self action:@selector(button5Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button5];
    
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button6.frame = CGRectMake(0, 370, self.view.frame.size.width, 50);
    [button6 setTitle:@"UINotificationFeedbackGenerator -- warning" forState:UIControlStateNormal];
    button6.tintColor = [UIColor whiteColor];
    button6.backgroundColor = [UIColor grayColor];
    [button6 addTarget:self action:@selector(button6Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button6];
    
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button7.frame = CGRectMake(0, 430, self.view.frame.size.width, 50);
    [button7 setTitle:@"UINotificationFeedbackGenerator -- error" forState:UIControlStateNormal];
    button7.tintColor = [UIColor whiteColor];
    button7.backgroundColor = [UIColor grayColor];
    [button7 addTarget:self action:@selector(button7Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button7];
    
    UIButton *button8 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button8.frame = CGRectMake(0, 490, self.view.frame.size.width, 50);
    [button8 setTitle:@"ip7以下机型 AudioServicesPlaySystemSound(1519)" forState:UIControlStateNormal];
    button8.tintColor = [UIColor whiteColor];
    button8.backgroundColor = [UIColor grayColor];
    [button8 addTarget:self action:@selector(button8Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button8];
    
    UIButton *button9 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button9.frame = CGRectMake(0, 550, self.view.frame.size.width, 50);
    [button9 setTitle:@"ip7以下机型 AudioServicesPlaySystemSound(1520)" forState:UIControlStateNormal];
    button9.tintColor = [UIColor whiteColor];
    button9.backgroundColor = [UIColor grayColor];
    [button9 addTarget:self action:@selector(button9Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button9];
    
    UIButton *button10 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button10.frame = CGRectMake(0, 610, self.view.frame.size.width, 50);
    [button10 setTitle:@"ip7以下机型 AudioServicesPlaySystemSound(1521)" forState:UIControlStateNormal];
    button10.tintColor = [UIColor whiteColor];
    button10.backgroundColor = [UIColor grayColor];
    [button10 addTarget:self action:@selector(button10Action) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button10];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)button1Action {
    [RCFeedbackGenerator startFeedBackwithLevel:RCFeedbackLevelLight];
}

- (void)button2Action {
    [RCFeedbackGenerator startFeedBackwithLevel:RCFeedbackLevelMedium];
}

- (void)button3Action {
    [RCFeedbackGenerator startFeedBackwithLevel:RCFeedbackLevelHeavy];
}

- (void)button4Action {
    UISelectionFeedbackGenerator *select = [[UISelectionFeedbackGenerator alloc]init];
    [select selectionChanged];
}

- (void)button5Action {
    UINotificationFeedbackGenerator *notifi = [[UINotificationFeedbackGenerator alloc]init];
    [notifi notificationOccurred:UINotificationFeedbackTypeSuccess];
}

- (void)button6Action {
    UINotificationFeedbackGenerator *notifi = [[UINotificationFeedbackGenerator alloc]init];
    [notifi notificationOccurred:UINotificationFeedbackTypeWarning];
}

- (void)button7Action {
    UINotificationFeedbackGenerator *notifi = [[UINotificationFeedbackGenerator alloc]init];
    [notifi notificationOccurred:UINotificationFeedbackTypeError];
}

- (void)button8Action {
    AudioServicesPlaySystemSound(1519);
}

- (void)button9Action {
    AudioServicesPlaySystemSound(1520);
}

- (void)button10Action {
    AudioServicesPlaySystemSound(1521);
}

@end
