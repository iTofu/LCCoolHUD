# LCCoolHUD
一款酷酷的 HUD。

![image](https://github.com/LeoiOS/LCCoolHUD/blob/master/LCCoolHUDDemo.gif)

    心有猛虎，细嗅蔷薇。



## 前言 Foreword

简而言之就是，你们的 HUD 不够 Cool！~ Come here！🆒


> LoadingHUD 采用了 [LCLoadingHUD](https://github.com/LeoiOS/LCLoadingHUD)。
> 
> 如果你不喜欢这个风格，还有另一款 HUD [LCProgressHUD](https://github.com/LeoiOS/LCProgressHUD) 提供给你！



## 代码 Code

* 
    - 方法一：[CocoaPods](https://cocoapods.org/) 导入：`pod 'LCCoolHUD'`
    - 方法二：导入`LCCoolHUD`文件夹到你的项目中 (文件夹在 Demo 中可以找到)
* 在你需要使用的 viewController 中，`#import "LCCoolHUD.h"`;
* 
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
![image](https://github.com/LeoiOS/LCCoolHUD/blob/master/tip.png)



## 更新日志 2015.11.18 Update Logs (Tag: 1.0.1)
* 增加对 JGProgressHUD 的 Loading HUD 的支持：
    
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
    
    2. HUD 添加到 View 上
    /**
     *  显示 JGProgressHUD 的 Loading HUD
     */
    + (void)showLoadingWithJGHUD:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow;
    
    /**
     *  显示 JGProgressHUD 的 Loading HUD (长方形底)
     */
    + (void)showLoadingOblongWithJGHUD:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow;
    
    3. 隐藏 JG Loading HUD (KeyWindow InView 通用)
    + (void)hideWithJGHUD;
    ````
> 如果你喜欢这种 Loading HUD，按照上述方法使用即可 :)



## 更新日志 2015.11.17 Update Logs (Tag: 1.0.0)
* 初始化提交。



## 示例 Examples

![image](https://github.com/LeoiOS/LCLoadingHUD/blob/master/LCLoadingHUDDemo.png)
===
![image](https://github.com/LeoiOS/LCCoolHUD/blob/master/demo1.png)
===
![image](https://github.com/LeoiOS/LCCoolHUD/blob/master/demo2.png)



## 联系 Support

* 发现问题请 Issues 我，谢谢:-)
* Email: leoios@sina.com
* Blog: http://www.leodong.com



## 授权 License

本项目采用 [MIT license](http://opensource.org/licenses/MIT) 开源，你可以利用采用该协议的代码做任何事情，只需要继续继承 MIT 协议即可。
