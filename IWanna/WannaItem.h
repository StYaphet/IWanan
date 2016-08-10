//
//  WannaItem.h
//  IWanna
//
//  Created by 郝一鹏 on 16/8/10.
//  Copyright © 2016年 bupt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WannaItem : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger totalDays;
@property (nonatomic, assign) NSInteger lastPersistenDays;

@end
