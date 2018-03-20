# RCFeedbackGenerator

本接口适用于button敲击的振动反馈效果。

#### Usage

```objective-c
typedef NS_ENUM(NSInteger, RCFeedbackLevelType) {
    RCFeedbackLevelLight,    //0，轻
    RCFeedbackLevelMedium,   //1，中
    RCFeedbackLevelHeavy     //2，重
};

+ (void)startFeedBackwithLevel:(RCFeedbackLevelType)rcFeedbackLevelType;
```

适配机型说明随后补充...