//
//  Singleton.h
//  Singleton
//
//  Created by boy on 2017/8/31.
//  Copyright © 2017年 pjy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

@property (strong, nonatomic) NSString *name;
+ (instancetype)share;
@end
