//
//  KioskManager.m
//  SwipingMyMac
//
//  Created by 伊藤ソフトデザイン on 2018/09/25.
//  Copyright © 2018年 ITO SOFT DESIGN. All rights reserved.
//

#import "KioskManager.h"
#import <AppKit/AppKit.h>
#import <Carbon/Carbon.h>

@implementation KioskManager

+ (id)sharedManager
{
    static id manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [self new];
    });
    return manager;
}

- (BOOL)isFullScreen
{
    NSApplicationPresentationOptions opts = [[NSApplication sharedApplication ] presentationOptions];
    if (opts & NSApplicationPresentationFullScreen) {
       return YES;
    }
    return NO;
}

- (void)becomeFullScreen
{
    SetSystemUIMode(kUIModeContentSuppressed, kUIOptionDisableAppleMenu | kUIOptionDisableProcessSwitch | kUIOptionDisableHide);
    
    if (!self.isFullScreen) {
        [[NSApplication sharedApplication].keyWindow toggleFullScreen:self];
    }
}

@end
