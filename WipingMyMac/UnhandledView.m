//
//  UnhandledView.m
//  SwipingMyMac
//
//  Created by 伊藤ソフトデザイン on 2018/09/23.
//  Copyright © 2018年 ITO SOFT DESIGN. All rights reserved.
//

#import "UnhandledView.h"
#import "KioskManager.h"

@implementation UnhandledView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (BOOL)acceptsFirstResponder
{
    return YES;
}

- (void)keyDown:(NSEvent *)theEvent
{
}

- (void)keyUp:(NSEvent *)theEvent
{
}

- (void)mouseDown:(NSEvent *)event
{
    [[KioskManager sharedManager] becomeFullScreen];    
}

@end
