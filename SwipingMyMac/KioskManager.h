//
//  KioskManager.h
//  SwipingMyMac
//
//  Created by 伊藤ソフトデザイン on 2018/09/25.
//  Copyright © 2018年 ITO SOFT DESIGN. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KioskManager : NSObject

+ (id)sharedManager;

@property(readonly, getter=isFullScreen) BOOL fullScreen;

- (void)becomeFullScreen;

@end

NS_ASSUME_NONNULL_END
