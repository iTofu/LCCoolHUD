//
//  LCCoolHUD.m
//  LCCoolHUDDemo
//
//  Created by Leo on 15/11/17.
//  Copyright © 2015年 Leo. All rights reserved.
//

#import "LCCoolHUD.h"
#import "JGProgressHUD.h"
#import "LCLoadingHUD.h"

@interface LCCoolHUD ()

@property (nonatomic, strong) JGProgressHUD *jgHUD;

+ (instancetype)shared;

@end

@implementation LCCoolHUD

+ (instancetype)shared {
    
    static LCCoolHUD *coolHUD = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        coolHUD = [[LCCoolHUD alloc] init];
    });
    return coolHUD;
}

- (instancetype)init {
    
    if (self = [super init]) {
        
        if (![UIApplication sharedApplication].keyWindow) {
            
            NSLog(@"Warning: Your keyWindow is nil!");
        }
    }
    return self;
}



#pragma mark - Success

+ (void)showSuccess:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    [self showSuccess:text inView:[UIApplication sharedApplication].keyWindow zoom:zoom shadow:shadow];
}

+ (void)showSuccess:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    JGProgressHUD *HUD =  [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
    
    if (zoom) {
        JGProgressHUDFadeZoomAnimation *animation = [JGProgressHUDFadeZoomAnimation animation];
        HUD.animation = animation;
    }
    
    if (shadow) {
        HUD.HUDView.layer.shadowColor = [UIColor blackColor].CGColor;
        HUD.HUDView.layer.shadowOffset = CGSizeZero;
        HUD.HUDView.layer.shadowOpacity = 0.4f;
        HUD.HUDView.layer.shadowRadius = 8.0f;
    }
    
    HUD.textLabel.text = text;
    
    HUD.indicatorView = [[JGProgressHUDSuccessIndicatorView alloc] init];
    
    HUD.square = YES;
    
    [HUD showInView:view];
    
    [HUD dismissAfterDelay:2.0];
}

+ (void)showSuccessOblong:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    [self showSuccessOblong:text inView:[UIApplication sharedApplication].keyWindow zoom:zoom shadow:shadow];
}

+ (void)showSuccessOblong:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    JGProgressHUD *HUD =  [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
    
    if (zoom) {
        JGProgressHUDFadeZoomAnimation *animation = [JGProgressHUDFadeZoomAnimation animation];
        HUD.animation = animation;
    }
    
    if (shadow) {
        HUD.HUDView.layer.shadowColor = [UIColor blackColor].CGColor;
        HUD.HUDView.layer.shadowOffset = CGSizeZero;
        HUD.HUDView.layer.shadowOpacity = 0.4f;
        HUD.HUDView.layer.shadowRadius = 8.0f;
    }
    
    HUD.textLabel.text = text;
    
    HUD.indicatorView = [[JGProgressHUDSuccessIndicatorView alloc] init];
    
    [HUD showInView:view];
    
    [HUD dismissAfterDelay:2.0];
}



#pragma mark - Failure

+ (void)showFailure:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    [self showFailure:text inView:[UIApplication sharedApplication].keyWindow zoom:zoom shadow:shadow];
}

+ (void)showFailure:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    JGProgressHUD *HUD =  [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
    
    if (zoom) {
        JGProgressHUDFadeZoomAnimation *animation = [JGProgressHUDFadeZoomAnimation animation];
        HUD.animation = animation;
    }
    
    if (shadow) {
        HUD.HUDView.layer.shadowColor = [UIColor blackColor].CGColor;
        HUD.HUDView.layer.shadowOffset = CGSizeZero;
        HUD.HUDView.layer.shadowOpacity = 0.4f;
        HUD.HUDView.layer.shadowRadius = 8.0f;
    }
    
    HUD.textLabel.text = text;
    
    HUD.indicatorView = [[JGProgressHUDErrorIndicatorView alloc] init];
    
    HUD.square = YES;
    
    [HUD showInView:view];
    
    [HUD dismissAfterDelay:2.0];
}

+ (void)showFailureOblong:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    [self showFailureOblong:text inView:[UIApplication sharedApplication].keyWindow zoom:zoom shadow:shadow];
}

+ (void)showFailureOblong:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    JGProgressHUD *HUD =  [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
    
    if (zoom) {
        JGProgressHUDFadeZoomAnimation *animation = [JGProgressHUDFadeZoomAnimation animation];
        HUD.animation = animation;
    }
    
    if (shadow) {
        HUD.HUDView.layer.shadowColor = [UIColor blackColor].CGColor;
        HUD.HUDView.layer.shadowOffset = CGSizeZero;
        HUD.HUDView.layer.shadowOpacity = 0.4f;
        HUD.HUDView.layer.shadowRadius = 8.0f;
    }
    
    HUD.textLabel.text = text;
    
    HUD.indicatorView = [[JGProgressHUDErrorIndicatorView alloc] init];
    
    [HUD showInView:view];
    
    [HUD dismissAfterDelay:2.0];
}



#pragma mark - Loading

+ (void)showLoading:(NSString *)text {
    
    [LCLoadingHUD showLoading:text];
}

+ (void)showLoading:(NSString *)text inView:(id)view {
    
    [LCLoadingHUD showLoading:text inView:view];
}

+ (void)hideInKeyWindow {
    
    [LCLoadingHUD hideInKeyWindow];
}

+ (void)hideInView:(id)view {
    
    [LCLoadingHUD hideInView:view];
}

+ (void)showLoadingWithJGHUD:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    [self showLoadingWithJGHUD:text inView:[UIApplication sharedApplication].keyWindow zoom:zoom shadow:shadow];
}

+ (void)showLoadingWithJGHUD:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    LCCoolHUD *coolHUD = [LCCoolHUD shared];
    coolHUD.jgHUD =  [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
    
    if (zoom) {
        JGProgressHUDFadeZoomAnimation *animation = [JGProgressHUDFadeZoomAnimation animation];
        coolHUD.jgHUD.animation = animation;
    }
    
    if (shadow) {
        coolHUD.jgHUD.HUDView.layer.shadowColor = [UIColor blackColor].CGColor;
        coolHUD.jgHUD.HUDView.layer.shadowOffset = CGSizeZero;
        coolHUD.jgHUD.HUDView.layer.shadowOpacity = 0.4f;
        coolHUD.jgHUD.HUDView.layer.shadowRadius = 8.0f;
    }
    
    coolHUD.jgHUD.textLabel.text = text;
    
    coolHUD.jgHUD.square = YES;
    
    [coolHUD.jgHUD showInView:view];
}

+ (void)showLoadingOblongWithJGHUD:(NSString *)text zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    [self showLoadingOblongWithJGHUD:text inView:[UIApplication sharedApplication].keyWindow zoom:zoom shadow:shadow];
}

+ (void)showLoadingOblongWithJGHUD:(NSString *)text inView:(UIView *)view zoom:(BOOL)zoom shadow:(BOOL)shadow {
    
    LCCoolHUD *coolHUD = [LCCoolHUD shared];
    coolHUD.jgHUD =  [JGProgressHUD progressHUDWithStyle:JGProgressHUDStyleDark];
    
    if (zoom) {
        JGProgressHUDFadeZoomAnimation *animation = [JGProgressHUDFadeZoomAnimation animation];
        coolHUD.jgHUD.animation = animation;
    }
    
    if (shadow) {
        coolHUD.jgHUD.HUDView.layer.shadowColor = [UIColor blackColor].CGColor;
        coolHUD.jgHUD.HUDView.layer.shadowOffset = CGSizeZero;
        coolHUD.jgHUD.HUDView.layer.shadowOpacity = 0.4f;
        coolHUD.jgHUD.HUDView.layer.shadowRadius = 8.0f;
    }
    
    coolHUD.jgHUD.textLabel.text = text;
    
    [coolHUD.jgHUD showInView:view];
}

+ (void)hideWithJGHUD {
    
    LCCoolHUD *coolHUD = [LCCoolHUD shared];
    [coolHUD.jgHUD dismissAnimated:YES];
}

@end
