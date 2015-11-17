//
//  LCLoadingHUD.h
//
//  Created by Leo on 15/11/17.
//  Copyright (c) 2015年 Leo. All rights reserved.
//
//  Email:  leoios@sina.com
//  GitHub: http://github.com/LeoiOS
//  如有问题或建议请给我发 Email, 或在该项目的 GitHub 主页 Issues 我, 谢谢:)
//
//  LCCoolHUD 系列 库一
//
//  致谢 CLProgressHUD (https://github.com/cleexiang/CLProgressHUD) !

#import "CLProgressHUD.h"

@interface LCLoadingHUD : CLProgressHUD

#pragma mark - HUD 添加到 KeyWindow

/**
 *  显示 HUD 到 KeyWindow 上
 *
 *  @param text 文字
 */
+ (void)showLoading:(NSString *)text;

/**
 *  隐藏添加到 KeyWindow 上的 HUD
 */
+ (void)hideInKeyWindow;

#pragma mark - HUD 添加到 View

/**
 *  显示 HUD 到 View 上 (隐藏操作需要拿到该对象)
 *
 *  @param text 文字
 *  @param view view
 */
+ (void)showLoading:(NSString *)text inView:(UIView *)view;

/**
 *  隐藏添加到 View 上的 HUD
 *
 *  @param view view
 */
+ (void)hideInView:(UIView *)view;

@end
