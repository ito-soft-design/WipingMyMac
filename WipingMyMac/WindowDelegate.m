//
//  WindowDelegate.m
//  WipingMyMac
//
//  Created by 伊藤ソフトデザイン on 2018/09/26.
//  Copyright © 2018年 ITO SOFT DESIGN. All rights reserved.
//

#import "WindowDelegate.h"
#import "KioskManager.h"

@implementation WindowDelegate

- (void)windowDidBecomeKey:(NSNotification *)notification
{
    [[KioskManager sharedManager] performSelector:@selector(becomeFullScreen) withObject:nil afterDelay:0.1];
}

- (void)windowDidExitFullScreen:(NSNotification *)notification
{
    [[KioskManager sharedManager] performSelector:@selector(becomeFullScreen) withObject:nil afterDelay:0.1];
}

@end
