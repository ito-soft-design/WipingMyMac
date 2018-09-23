//
//  AppDelegate.m
//  SwipingMyMac
//
//  Created by 伊藤ソフトデザイン on 2018/09/23.
//  Copyright © 2018年 ITO SOFT DESIGN. All rights reserved.
//

#import "AppDelegate.h"
#import <Carbon/Carbon.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    SetSystemUIMode(kUIModeContentSuppressed, kUIOptionDisableAppleMenu | kUIOptionDisableProcessSwitch | kUIOptionDisableHide);
    
    if (![self isInFullScreenMode]) {
        [[NSApplication sharedApplication].keyWindow toggleFullScreen:self];
    }
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (BOOL) isInFullScreenMode {
    NSApplicationPresentationOptions opts = [[NSApplication sharedApplication ] presentationOptions];
    if ( opts & NSApplicationPresentationFullScreen) {
       return YES;
    }
    return NO;
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication
{
    return YES;
}

@end
