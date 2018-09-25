//
//  ViewController.m
//  SwipingMyMac
//
//  Created by 伊藤ソフトデザイン on 2018/09/23.
//  Copyright © 2018年 ITO SOFT DESIGN. All rights reserved.
//

#import "ViewController.h"
#import "KioskManager.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)viewDidAppear
{
    [[KioskManager sharedManager] becomeFullScreen];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
