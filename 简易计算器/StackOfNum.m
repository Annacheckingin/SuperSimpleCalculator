//
//  StackOfNum.m
//  简易计算器
//
//  Created by 李正国 on 2019/3/19.
//  Copyright © 2019 李正国. All rights reserved.
//

#import "StackOfNum.h"

@implementation StackOfNum
-(instancetype)init{
    if (self=[super init]) {
        _Nmutarray=[[NSMutableArray alloc]init];
    }
     return self;
}
-(void)putIntoStack:(id)num{
    [self.Nmutarray addObject:[num copy]];
}
-(NSNumber *)getThetopItem{
    NSNumber *num=[self.Nmutarray lastObject];
    [self.Nmutarray removeLastObject];
    return num;
}
-(NSNumber *)thetopnum{
    return self.Nmutarray.lastObject;
}
-(NSUInteger)count{
    return self.Nmutarray.count;
}
@end
