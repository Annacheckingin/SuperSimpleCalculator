//
//  Caclu.h
//  简易计算器
//
//  Created by 李正国 on 2019/3/19.
//  Copyright © 2019 李正国. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Caclu : NSObject
-(NSString *)calculate:(NSNumber *)a1 with:(NSNumber *)a2 andop:(NSString *)op;
@end

NS_ASSUME_NONNULL_END
