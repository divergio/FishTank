//
//  FTBlogListWindowController.m
//  FishTank
//
//  Created by Tyler Barth on 2013-01-27.
//  Copyright (c) 2013年 Tyler Barth. All rights reserved.
//

#import "FTBlogListWindowController.h"
#import "FTBlogManagerCell.h"
#import "FTBlogManager.h"
#import "FTBlog.h"

@interface FTBlogListWindowController () <NSTableViewDataSource>

@end

@implementation FTBlogListWindowController

//Based on this template http://www.gentlebytes.com/2011/08/view-based-table-views-in-lion-part-1-of-2/
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [[[FTBlogManager sharedManager] blogList] count];
}


- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    FTBlogManagerCell *cell = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
    FTBlog *blog = [[[FTBlogManager sharedManager] blogList] objectAtIndex:row];

    [cell.titleTextField setStringValue:blog.title];
    [cell.summaryTextField setStringValue:blog.description];
    [cell.imageView setImage:blog.icon];
    
    return cell;
}

- (void)windowDidLoad
{
    [super windowDidLoad];

    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
