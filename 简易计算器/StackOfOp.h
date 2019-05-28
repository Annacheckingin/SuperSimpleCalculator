//
//  StackOfOp.h
//  简易计算器
//
//  Created by 李正国 on 2019/3/19.
//  Copyright © 2019 李正国. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StackOfOp : NSObject
@property(nonatomic,strong) NSMutableArray *Omutarray;
@property(nonatomic,readonly) NSUInteger count;
-(void)putIntoStack:(NSString *)op;
-(NSString *)getTheTopItem;
-(NSString *)theTopItem;
-(NSUInteger)count;
-(void)updateop;
@end

NS_ASSUME_NONNULL_END
