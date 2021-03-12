//
//  MainWindowController.m
//  RobotCIPGUI
//
//  Created by c6supper on 3/11/21.
//

#import "MainWindowController.h"
#import "MainWindow.h"

@interface MainWindowController ()

@end

@implementation MainWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)loadWindow {
    NSRect frame = NSMakeRect(100, 100, 400, 300);
    self.window  = [[MainWindow alloc] initWithContentRect:frame
                    styleMask:NSWindowStyleMaskBorderless
                    backing:NSBackingStoreBuffered
                    defer:NO];

}

- init {
    self.shouldCascadeWindows = YES;
    return [self initWithWindowNibName:@""];
}

@end
