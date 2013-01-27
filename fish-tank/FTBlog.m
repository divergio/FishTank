//
//  FTRepository.m
//  FishTank
//
//  Created by Tyler Barth on 2013-01-27.
//  Copyright (c) 2013年 Tyler Barth. All rights reserved.
//

#import "FTBlog.h"
@interface FTBlog ()

@property (nonatomic, strong) NSURL* directory;

@end

@implementation FTBlog


- (id) initBlog:(NSString *)blogTitle
{
    self = [super init];
    if (self) {
        [self setTitle:blogTitle];
    }
    
    return self;
}



//https://gist.github.com/1503941
#ifdef DEBUG
+ (NSString*) generateLorumStringCharCount:(NSUInteger) count
{
    NSString *lorum = @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ";
    
    while ([lorum length] < count) {
        lorum = [lorum stringByAppendingString:lorum];
    }
    
    return [lorum substringToIndex:count];
}
#endif

#ifdef DEBUG
+ (FTBlog*) dummyBlog
{
    
    NSUInteger titleLength = 6 + (arc4random() % 15);
    NSString *title = [FTBlog generateLorumStringCharCount:titleLength];
    NSUInteger descriptionLength = 30 + (arc4random() % 100);
    NSString *description = [FTBlog generateLorumStringCharCount:descriptionLength];
    
    
    FTBlog* dummy = [[FTBlog alloc] initBlog:title];
    dummy.description = description;

    //TODO Add an array of random images
    dummy.icon = [NSImage imageNamed:@"divergio_icon.png"];
    
    return dummy;
}
#endif

@end
