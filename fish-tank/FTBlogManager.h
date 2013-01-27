//
//  RepoManager.h
//  FishTank
//
//  Created by Tyler Barth on 2013-01-27.
//  Copyright (c) 2013年 Tyler Barth. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FTBlogManager : NSObject
@property (nonatomic, strong) NSArray* blogList;

+ (FTBlogManager*) sharedManager;

- (void) setupDummyBlogs;

@end
