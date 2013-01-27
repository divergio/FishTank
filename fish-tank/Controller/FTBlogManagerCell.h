//
//  FTBlogManagerCell.h
//  FishTank
//
//  Created by Tyler Barth on 2013-01-27.
//  Copyright (c) 2013年 Tyler Barth. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface FTBlogManagerCell : NSTableCellView

@property (nonatomic, strong) IBOutlet NSTextField *summaryTextField;
@property (nonatomic, strong) IBOutlet NSTextField *titleTextField;
@property (nonatomic, strong) IBOutlet NSImageView *blogImageView;


@end
