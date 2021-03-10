//
//  AppDelegate.h
//  RobotCIPGUI
//
//  Created by c6supper on 3/9/21.
//

#import <Cocoa/Cocoa.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : NSResponder <NSApplicationDelegate,NSWindowDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;


@end

