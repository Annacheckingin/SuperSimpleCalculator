//
//  ViewController.h
//  简易计算器
//
//  Created by 李正国 on 2019/3/18.
//  Copyright © 2019 李正国. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StackOfOp.h"
#import "StackOfNum.h"
#import "Caclu.h"
@interface ViewController : UIViewController
@property(nonatomic,weak) IBOutlet UIButton *btn0;
@property(nonatomic,weak)IBOutlet UIButton *btn1;
@property(nonatomic,weak)IBOutlet UIButton *btn2;
@property(nonatomic,weak)IBOutlet UIButton *btn3;
@property(nonatomic,weak)IBOutlet UIButton *btn4;
@property(nonatomic,weak)IBOutlet UIButton *btn5;
@property(nonatomic,weak)IBOutlet UIButton *btn6;
@property(nonatomic,weak)IBOutlet UIButton *btn7;
@property(nonatomic,weak)IBOutlet UIButton *btn8;
@property(nonatomic,weak)IBOutlet UIButton *btn9;
@property(nonatomic,weak)IBOutlet UIButton *btn10;
@property(nonatomic,weak)IBOutlet UIButton *btn11;
@property(nonatomic,weak)IBOutlet UIButton *btn12;
@property(nonatomic,weak)IBOutlet UIButton *btn13;
@property(nonatomic,weak)IBOutlet UIButton *btn14;
-(IBAction)numbtntouched:(UIButton *)sender;
-(IBAction)optouched:(UIButton *)sender;
@end

