//
//  MainWindowController.m
//  RobotCIPGUI
//
//  Created by c6supper on 3/11/21.
//

#import "MainWindowController.h"

@interface MainWindowController ()

@end

@implementation MainWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)loadWindow {
    self.window = nil;
}

- init {
    return [self initWithWindowNibName:@""];
}

@end
