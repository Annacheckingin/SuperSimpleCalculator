//
//  StackOfOp.m
//  简易计算器
//
//  Created by 李正国 on 2019/3/19.
//  Copyright © 2019 李正国. All rights reserved.
//

#import "StackOfOp.h"

@implementation StackOfOp
-(instancetype)init{
    if (self=[super init]) {
        _Omutarray=[[NSMutableArray alloc]init];
        
    }
    return self;
}
-(void)putIntoStack:(NSString *)op{
    [self.Omutarray addObject:op];
}
-(NSString *)theTopItem{
    return self.Omutarray.lastObject;
}
-(NSString *)getTheTopItem{
    NSString *thetop=[self.Omutarray lastObject];
    [self.Omutarray removeLastObject];
    return thetop;
}
-(NSUInteger)count{
    return self.Omutarray.count;
}
-(void)updateop{
    [self.Omutarray removeObjectAtIndex:0];
}
@end
