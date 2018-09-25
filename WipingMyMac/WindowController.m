//
//  WindowController.m
//  WipingMyMac
//
//  Created by 伊藤ソフトデザイン on 2018/09/25.
//  Copyright © 2018年 ITO SOFT DESIGN. All rights reserved.
//

#import "WindowController.h"
#import "KioskManager.h"

@interface WindowController ()

@end

@implementation WindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)windowDidExitFullScreen:(NSNotification *)notification
{
    [[KioskManager sharedManager] performSelector:@selector(becomeFullScreen) withObject:nil afterDelay:0.1];
}

@end
