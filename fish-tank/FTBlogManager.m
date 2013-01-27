//
//  RepoManager.m
//  FishTank
//
//  Created by Tyler Barth on 2013-01-27.
//  Copyright (c) 2013年 Tyler Barth. All rights reserved.
//

#import "FTBlogManager.h"
#import <ObjectiveGit/ObjectiveGit.h>

@implementation FTBlogManager

//http://stackoverflow.com/questions/7568935/how-do-i-implement-an-objective-c-singleton-that-is-compatible-with-arc/7569010#7569010
+ (FTBlogManager*) sharedManager {
    static FTBlogManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[sharedManager alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedManager;
}

@end
