//
//  MainWindow.m
//  RobotCIPGUI
//
//  Created by c6supper on 3/12/21.
//

#import "MainWindow.h"

@interface MainWindow ()


@end

@implementation MainWindow

- (void)keyDown:(NSEvent *)event {
    // Press any key to advance to the next demo
    NSLog(@"asdfasdfasdf");
}

- (void)mouseDown:(NSEvent *)event {
    // Press any key to advance to the next demo
    NSLog(@"%@",self.firstResponder);
    [self makeFirstResponder:nil];
    [super mouseDown:event];
}

@end
