//
//  LCLoadingHUD.m
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

#import "LCLoadingHUD.h"

@interface LCLoadingHUD ()

@property (nonatomic, strong) LCLoadingHUD *loadingHUD;

+ (instancetype)shared;

@end

@implementation LCLoadingHUD

- (LCLoadingHUD *)loadingHUD {
    
    if (!_loadingHUD) {
        
        _loadingHUD       = [[LCLoadingHUD alloc] initWithView:[UIApplication sharedApplication].keyWindow];
        _loadingHUD.shape = CLProgressHUDShapeLinear;
        _loadingHUD.type  = CLProgressHUDTypeDarkForground;
    }
    return _loadingHUD;
}

+ (instancetype)shared {
    
    static LCLoadingHUD *loadingHUD = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        loadingHUD = [[LCLoadingHUD alloc] init];
    });
    return loadingHUD;
}

+ (void)showLoading:(NSString *)text inView:(UIView *)view {
    
    LCLoadingHUD *hud = [[LCLoadingHUD alloc] initWithView:view];
    hud.text  = text ?: @"";
    hud.shape = CLProgressHUDShapeLinear;
    hud.type  = CLProgressHUDTypeDarkForground;
    [view addSubview:hud];
    [hud showWithAnimation:YES];
}

+ (void)showLoading:(NSString *)text {
    
    if (![UIApplication sharedApplication].keyWindow) {
        
        NSLog(@"Error: Your keyWindow is nil!");
        
        return;
    }
    
    LCLoadingHUD *loadingHUD = [LCLoadingHUD shared].loadingHUD;
    loadingHUD.text = text ?: @"";
    [[UIApplication sharedApplication].keyWindow addSubview:loadingHUD];
    [loadingHUD showWithAnimation:YES];
}

+ (void)hideInKeyWindow {
    
    LCLoadingHUD *loadingHUD = [LCLoadingHUD shared].loadingHUD;
    [loadingHUD dismissWithAnimation:YES];
    [LCLoadingHUD shared].loadingHUD = nil;
}

+ (void)hideInView:(UIView *)view {
    
    for (UIView *childView in view.subviews) {
        
        if ([childView isKindOfClass:[LCLoadingHUD class]]) {
            
            [(LCLoadingHUD *)childView dismissWithAnimation:YES];
        }
    }
}

@end
