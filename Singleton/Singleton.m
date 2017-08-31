
//
//  Singleton.m
//  Singleton
//
//  Created by boy on 2017/8/31.
//  Copyright © 2017年 pjy. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton *_instance = nil;

+ (instancetype)share {
    
    return [[self alloc] init];
    
}

- (instancetype)init {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super init];
        _instance.name = @"newName";
    });
    
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    
    return _instance;
}

- (id)copyWithZone:(struct _NSZone *)zone
{
    return [Singleton share];
}
@end
