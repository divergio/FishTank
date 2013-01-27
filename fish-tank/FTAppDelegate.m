//
//  FTAppDelegate.m
//  fish-tank
//
//  Created by Tyler Barth on 2013-01-27.
//  Copyright (c) 2013年 Tyler Barth. All rights reserved.
//

#import "FTAppDelegate.h"
#import "FTBlogListWindowController.h"
#import "FTBlogManager.h"

@interface FTAppDelegate ()

@property (nonatomic,strong) FTBlogListWindowController* blogListWindowController;

@end

@implementation FTAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
#ifdef DEBUG
    [[FTBlogManager sharedManager] setupDummyBlogs];
#endif
    
    //Check if any blogs, if not load the wizard
    //Otherwise load the blog menu (or saved state from last load
    self.blogListWindowController = [[FTBlogListWindowController alloc] initWithWindowNibName:@"FTBlogListWindowController"];
    
    [self.blogListWindowController showWindow:self];
}

@end
