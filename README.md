# LCCoolHUD

[![Travis](https://img.shields.io/travis/iTofu/LCCoolHUD.svg?style=flat)](https://travis-ci.org/iTofu/LCCoolHUD)
[![CocoaPods](https://img.shields.io/cocoapods/v/LCCoolHUD.svg)](http://cocoadocs.org/docsets/LCCoolHUD)
[![CocoaPods](https://img.shields.io/cocoapods/l/LCCoolHUD.svg)](https://raw.githubusercontent.com/iTofu/LCCoolHUD/master/LICENSE)
[![CocoaPods](https://img.shields.io/cocoapods/p/LCCoolHUD.svg)](http://cocoadocs.org/docsets/LCCoolHUD)
[![LeoDev](https://img.shields.io/badge/blog-LeoDev.me-brightgreen.svg)](http://leodev.me)

一款酷酷的 HUD。

![by http://LeoDev.me](https://raw.githubusercontent.com/iTofu/LCCoolHUD/master/LCCoolHUDDemo.gif)

````
In me the tiger sniffs the rose.

心有猛虎，细嗅蔷薇。
````


## 前言 Foreword

简而言之就是，你们的 HUD 不够 Cool！~ Come here！🆒


> LoadingHUD 采用了 [LCLoadingHUD](https://github.com/iTofu/LCLoadingHUD)，如果你只需要 Loading HUD，跳到 [LCLoadingHUD](https://github.com/iTofu/LCLoadingHUD) 吧~
>
> 如果你不喜欢这个风格，还有另一款经典样式 HUD [LCProgressHUD](https://github.com/iTofu/LCProgressHUD) 提供给你！



## 代码 Code

* 两种导入方法：
  - 方法一：[CocoaPods](https://cocoapods.org/) 导入：`pod 'LCCoolHUD'`
  - 方法二：导入`LCCoolHUD`文件夹到你的项目中 (文件夹在 Demo 中可以找到)

* 在你需要使用的 viewController 中，`#import "LCCoolHUD.h"`;

* 使用：
  1. HUD 添加到 KeyWindow 上

    ````objc
    // 成功 (动画 + 阴影)
    [LCCoolHUD showSuccess:@"登录成功" zoom:YES shadow:YES];

    // 失败 (默认)
    [LCCoolHUD showFailure:@"登录失败" zoom:NO shadow:NO];

    // 成功 (长信息、动画)
    [LCCoolHUD showSuccessOblong:@"长长的信息哦！" zoom:YES shadow:NO];

    // 失败 (长信息、阴影)
    [LCCoolHUD showFailureOblong:@"北京这个雾霾啊！" zoom:NO shadow:YES];

    // 等待
    [LCCoolHUD showLoading:@"请稍候..."];

    // 隐藏 LoadingHUD
    [LCCoolHUD hideInKeyWindow];
    ````

  2. HUD 添加到 View 上

    ````objc
    // 成功 (长信息、动画)
    [LCCoolHUD showSuccessOblong:@"你可以点 LeftBtn！" inView:self.view zoom:YES shadow:NO];

    // 等待
    [LCCoolHUD showLoading:@"你可以点 LeftBtn" inView:self.view];

    // 隐藏 LoadingHUD
    [LCCoolHUD hideInView:self.view];

    // 其他类似，加个 inView: 参数即可...
    ````

* 敲代码会有提示的哦，也要看看，不要埋头就敲哦！

  ![by http://LeoDev.me](https://raw.githubusercontent.com/iTofu/LCCoolHUD/master/tip.png)



## 更新日志 Update Logs

### V 1.0.3 (2016.04.05)

* 更新 CocoaPods 源地址。


### V 1.0.1 (2015.11.18)

* 增加对 [JGProgressHUD](https://github.com/JonasGessner/JGProgressHUD) 的 Loading HUD 的支持：

  1. HUD 添加到 KeyWindow 上

    ````objc
    /**
     *  显示 JGProgressHUD 的 Loading HUD
     */
    + (void)showLoadingWithJGHUD:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow;

    /**
     *  显示 JGProgressHUD 的 Loading HUD (长方形底)
     */
    + (void)showLoadingOblongWithJGHUD:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow;
    ````

  2. HUD 添加到 View 上

    ````objc
    /**
     *  显示 JGProgressHUD 的 Loading HUD
     */
    + (void)showLoadingWithJGHUD:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow;

    /**
     *  显示 JGProgressHUD 的 Loading HUD (长方形底)
     */
    + (void)showLoadingOblongWithJGHUD:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow;
    ````

  3. 隐藏 JG Loading HUD (keyWindow inView 通用)

    ````objc
    + (void)hideWithJGHUD;
    ````

> 如果你喜欢这种 Loading HUD，按照上述方法使用即可 :)



### V 1.0.0 (2015.11.17)

* 初始化提交。



## 示例 Examples

![by http://LeoDev.me](https://raw.githubusercontent.com/iTofu/LCLoadingHUD/master/LCLoadingHUDDemo.png)
---
![by http://LeoDev.me](https://raw.githubusercontent.com/iTofu/LCCoolHUD/master/demo1.png)
---
![by http://LeoDev.me](https://raw.githubusercontent.com/iTofu/LCCoolHUD/master/demo2.png)



## 联系 Support

* 发现问题请 Issue :)

* Mail: devtip@163.com

* Blog: http://LeoDev.me



## 授权 License

本项目采用 [MIT license](http://opensource.org/licenses/MIT) 开源，你可以利用采用该协议的代码做任何事情，只需要继续继承 MIT 协议即可。
