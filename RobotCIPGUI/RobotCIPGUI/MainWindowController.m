//
//  MainWindowController.m
//  RobotCIPGUI
//
//  Created by c6supper on 3/11/21.
//

#import "MainWindowController.h"
#import "MainWindow.h"
#import "MainViewController.h"

@interface MainWindowController ()

@property (strong) NSViewController *mainViewController;

@end

@implementation MainWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)loadWindow {
    
    self.mainViewController = [[MainViewController alloc] initWithNibName:nil bundle:nil];
    self.mainViewController.view.frame = CGRectMake(0, 0, NSScreen.mainScreen.frame.size.width/2, NSScreen.mainScreen.frame.size.height/2);
        
    self.window  = [[MainWindow alloc] initWithContentRect:self.mainViewController.view.frame
                    styleMask:NSWindowStyleMaskBorderless
                    backing:NSBackingStoreBuffered
                    defer:NO];

}

- init {
    self.shouldCascadeWindows = YES;
    return [self initWithWindowNibName:@""];
}

@end
