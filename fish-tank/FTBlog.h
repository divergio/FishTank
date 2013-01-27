//
//  FTRepository.h
//  FishTank
//
//  Created by Tyler Barth on 2013-01-27.
//  Copyright (c) 2013年 Tyler Barth. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FTBlog : NSObject

- (void) initBlog:(NSString*)blogTitle;
- (void) initBlog:(NSString*)fromRepoInDirectory:(NSURL*) url;

@end
