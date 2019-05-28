//
//  StackOfNum.h
//  简易计算器
//
//  Created by 李正国 on 2019/3/19.
//  Copyright © 2019 李正国. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StackOfNum : NSObject
@property(nonatomic,strong)NSMutableArray *Nmutarray;
@property(nonatomic,readonly) NSUInteger count;
-(void)putIntoStack:(id)num;
-(NSNumber *)getThetopItem;
-(NSNumber *)thetopnum;
-(NSUInteger)count;
@end
NS_ASSUME_NONNULL_END
