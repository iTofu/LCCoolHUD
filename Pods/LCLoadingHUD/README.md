## LCLoadingHUD
🌈彩虹加载指示器

###### 致谢 [CLProgressHUD](https://github.com/cleexiang/CLProgressHUD)！

![image](https://github.com/LeoiOS/LCLoadingHUD/blob/master/LCLoadingHUDDemo.gif)

    心有猛虎，细嗅蔷薇。

## 前言 Foreword
[CLProgressHUD](https://github.com/cleexiang/CLProgressHUD) 这个库是我在开发中用的比较多的一个库，因为很 Cool！

原有库做的效果挺好，但是使用起来不太友好，于是跟之前面对 MBProgressHUD 一样，再度封装。

提一下，这个库将作为 [LCCoolHUD](https://github.com/LeoiOS/LCCoolHUD) 之一。

## 代码 Code

* 
  - 方法一：[CocoaPods](https://cocoapods.org/) 导入：`pod 'LCLoadingHUD'`
  - 方法二：导入`LCLoadingHUD`文件夹到你的项目中 (文件夹在 Demo 中可以找到)
* 在你需要使用的 viewController 中，`#import "LCLoadingHUD.h"`;
* 
    1. HUD 添加到 KeyWindow 上
    ````objc
    // 显示
    [LCLoadingHUD showLoading:@"正在发射中..."];
    
    // 隐藏
    [LCLoadingHUD hideInKeyWindow];
    ````
    
    2. HUD 添加到 View 上
    ````objc
    
    // 显示
    [LCLoadingHUD showLoading:@"你可以点 leftBtn" inView:self.view];
    
    // 隐藏
    [LCLoadingHUD hideInView:self.view];
    ````


## 更新日志 2015.11.17 Update Logs (tag: 1.0.1)
* 方法优化，添加到 View 上的 HUD 不需要再拿到实例，才能隐藏：
    - 
        ````objc
        + (void)dismissInKeyWindow;
        ->
        + (void)hideInKeyWindow;
        ````
    -
        ````objc
        + (instancetype)showLoading:(NSString *)text inView:(UIView *)view;
        ->
        + (void)showLoading:(NSString *)text inView:(UIView *)view;
        
        // 新增
        + (void)hideInView:(UIView *)view;
        ````

## 更新日志 2015.11.17 Update Logs (tag: 1.0.0)
* 初始化提交。


## 示例 Examples
![image](https://github.com/LeoiOS/LCLoadingHUD/blob/master/LCLoadingHUDDemo.png)


## 联系 Support
* 发现问题请 Issues 我，谢谢:-)
* E-mail: leoios@sina.com
* MyBlog: http://www.leodong.com


## 授权 License
本项目采用 [MIT license](http://opensource.org/licenses/MIT) 开源，你可以利用采用该协议的代码做任何事情，只需要继续继承 MIT 协议即可。
