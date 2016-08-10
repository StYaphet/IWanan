//
//  WannaItem.m
//  IWanna
//
//  Created by 郝一鹏 on 16/8/10.
//  Copyright © 2016年 bupt. All rights reserved.
//

#import "WannaItem.h"

@implementation WannaItem

- (instancetype)initWithName:(NSString *) name {
    
    self = [super init];
    if(self) {
        _name = name;
        _totalDays = 0;
        _lastPersistenDays = 0;
    }
    return self;
}

@end
