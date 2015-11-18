//
//  LCCoolHUD.h
//  LCCoolHUDDemo
//
//  Created by Leo on 15/11/17.
//  Copyright © 2015年 Leo. All rights reserved.
//

#import <UIKit/UIkit.h>

@class JGProgressHUD;

@interface LCCoolHUD : NSObject



#pragma mark - HUD 添加到 KeyWindow

/**
 *  显示 成功 HUD 到 KeyWindow 上
 *
 *  @param text   文本
 *  @param zoom   缩放动画效果 默认淡入淡出效果
 *  @param shadow 阴影 默认无阴影
 */
+ (void)showSuccess:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow;

/**
 *  显示 失败 HUD 到 KeyWindow 上
 */
+ (void)showFailure:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow;

/**
 *  显示 成功 HUD 到 KeyWindow 上 (长方形底)
 */
+ (void)showSuccessOblong:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow;

/**
 *  显示 失败 HUD 到 KeyWindow 上 (长方形底)
 */
+ (void)showFailureOblong:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow;

/**
 *  显示 Loading HUD 到 KeyWindow 上
 */
+ (void)showLoading:(NSString *)text;

/**
 *  隐藏添加到 KeyWindow 上的 Loading HUD
 */
+ (void)hideInKeyWindow;

/**
 *  显示 JGProgressHUD 的 Loading HUD
 */
+ (void)showLoadingWithJGHUD:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow;

/**
 *  显示 JGProgressHUD 的 Loading HUD (长方形底)
 */
+ (void)showLoadingOblongWithJGHUD:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow;



#pragma mark - HUD 添加到 View

/**
 *  显示 成功 HUD 到 View 上
 */
+ (void)showSuccess:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow;

/**
 *  显示 失败 HUD 到 View 上
 */
+ (void)showFailure:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow;

/**
 *  显示 成功 HUD 到 View 上 (长方形底)
 */
+ (void)showSuccessOblong:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow;

/**
 *  显示 失败 HUD 到 View 上 (长方形底)
 */
+ (void)showFailureOblong:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow;

/**
 *  显示 Loading HUD 到 View 上
 */
+ (void)showLoading:(NSString *)text inView:(UIView *)view;

/**
 *  隐藏添加到 View 上的 Loading HUD
 */
+ (void)hideInView:(UIView *)view;

/**
 *  显示 JGProgressHUD 的 Loading HUD
 */
+ (void)showLoadingWithJGHUD:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow;

/**
 *  显示 JGProgressHUD 的 Loading HUD (长方形底)
 */
+ (void)showLoadingOblongWithJGHUD:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow;



#pragma mark - 通用

/**
 *  隐藏 JGProgressHUD 的 Loading HUD
 */
+ (void)hideWithJGHUD;

@end
