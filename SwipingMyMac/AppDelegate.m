//
//  AppDelegate.m
//  SwipingMyMac
//
//  Created by 伊藤ソフトデザイン on 2018/09/23.
//  Copyright © 2018年 ITO SOFT DESIGN. All rights reserved.
//

#import "AppDelegate.h"
#import "KioskManager.h"


@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
//    [[KioskManager sharedManager] becomeFullScreen];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication
{
    return YES;
}

@end
