//
//  Caclu.m
//  简易计算器
//
//  Created by 李正国 on 2019/3/19.
//  Copyright © 2019 李正国. All rights reserved.
//

#import "Caclu.h"

@implementation Caclu
//a2才是第一个输入的数，a2是第二个输入的数
-(NSString *)calculate:(NSNumber *)a1 with:(NSNumber *)a2 andop:(NSString *)op{
    int a=[a1 intValue];
    int b=[a2 intValue];
    int i;
  float c=[a1 floatValue];
    float d=[a2 floatValue];
  float e;
    NSString *ret;
    if ([op isEqualToString:@"+"]) {
        i=a+b;
        ret=[NSString stringWithFormat:@"%d",i];
        return ret;
    }
    else if ([op isEqualToString:@"-"]){
        i=b-a;
        ret=[NSString stringWithFormat:@"%d",i];
        return ret;
    }
    else if ([op isEqualToString:@"*"]){
        i=a*b;
        ret=[NSString stringWithFormat:@"%d",i];
        return ret;
    }
    else if([op isEqualToString:@"/"]){
        if (c==0) {
            return 0;
        }
        e=d/c;
        ret=[NSString stringWithFormat:@"%lf",e];
        return ret;
        
    }
    else return nil;
}
@end
