# RCFeedbackGenerator

本接口适用于button敲击的振动反馈效果。

#### 使用说明

```objective-c
typedef NS_ENUM(NSInteger, RCFeedbackLevelType) {
    RCFeedbackLevelLight,    //0，轻
    RCFeedbackLevelMedium,   //1，中
    RCFeedbackLevelHeavy     //2，重
};

//初始化方法
- (instancetype)initWithFeedBackwithLevel:(RCFeedbackLevelType)rcFeedbackLevelType ;
//开启震动
- (void)fire ;
```

#### 测试震动反馈接口

解释表格的内容：

- light、medium、heavy：UIFeedbackGenerator类的子类UIImpactFeedbackGenerator中的三种样式


- AudioServicesPlaySystemSound：使用AudioServicesPlaySystemSound(1519)和AudioServicesPlaySystemSound(1520)也可以发出轻和重的短振反馈

| 系统版本号     | 手机型号 | light | medium | heavy | AudioServices  PlaySystemSound |
| -------------- | -------- | ----- | ------ | ----- | ------------------------------ |
| iOS **11**.1.2 | X        | ✔️     | ✔️      | ✔️     | ✔️                              |
| iOS **11**.0.0 | 8P       | ✔️     | ✔️      | ✔️     | ✔️                              |
| iOS **10**.2.1 | 7P       | ✔️     | ✔️      | ✔️     | ✔️                              |
| iOS **11**.2.6 | 6s       | ❌     | ❌      | ❌     | ✔️                              |
| iOS **10**.0.2 | 6P       | ❌     | ❌      | ❌     | ❌                              |
| iOS **11**.2.2 | 6        | ❌     | ❌      | ❌     | ❌                              |
| iOS **10**.3.3 | 5s       | ❌     | ❌      | ❌     | ❌                              |
| iOS    **8**.3 | 4s       | ❌     | ❌      | ❌     | ❌                              |

测试结果：

![](http://ov8ee4i4b.bkt.clouddn.com/iOS%E7%AB%AF%E5%AE%9E%E7%8E%B0%E9%9C%87%E5%8A%A8%E5%8F%8D%E9%A6%88.png)

附高清图片链接 [iOS端实现震动反馈.png](http://ov8ee4i4b.bkt.clouddn.com/iOS%E7%AB%AF%E5%AE%9E%E7%8E%B0%E9%9C%87%E5%8A%A8%E5%8F%8D%E9%A6%88.png)