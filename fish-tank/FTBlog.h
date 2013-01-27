//
//  FTRepository.h
//  FishTank
//
//  Created by Tyler Barth on 2013-01-27.
//  Copyright (c) 2013年 Tyler Barth. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FTBlog : NSObject

@property (nonatomic,strong) NSString* title;
@property (nonatomic, strong) NSString* description;
@property (nonatomic, strong) NSImage* icon;

- (id) initBlog:(NSString*)blogTitle;
- (id) initBlog:(NSString*)fromRepoInDirectory:(NSURL*) url;

+ (FTBlog*) dummyBlog;

@end
