//
//  ViewController.m
//  简易计算器
//
//  Created by 李正国 on 2019/3/18.
//  Copyright © 2019 李正国. All rights reserved.
//
 //0表示关，1表示没关
#import "ViewController.h"
BOOL   equalafterop;
BOOL numberapeend;
@interface ViewController ()
@property(nonatomic,weak)IBOutlet UITextField *textfield;
@property(nonatomic,strong)StackOfOp *stackOfop;
@property(nonatomic,strong)StackOfNum *stackOfnum;
@property(nonatomic,strong)Caclu *calculater;
@property(nonatomic,copy)NSMutableString *theold;
@property(nonatomic,copy)NSMutableString *thenew;
@end

@implementation ViewController


    

-(IBAction)removeall:(id)sender{
    [self.stackOfnum.Nmutarray removeAllObjects];
    [self.stackOfop.Omutarray removeAllObjects];
    [self.textfield setText:@"0"];
    numberapeend=YES;
}
-(IBAction)Bac:(id)sender{
    
    if(self.stackOfnum.count!=1){
   NSMutableString *temp=[self.textfield.text mutableCopy];
    NSLog(@"%@",temp);
    [self.stackOfnum.Nmutarray removeLastObject];
    NSUInteger length=[temp length];
    printf("%lu",length);
    NSRange range=NSMakeRange(length-1, 1);
    [temp deleteCharactersInRange:range];
    NSLog(@"x%@",temp);
    [self.textfield setText:temp];
        [self.stackOfnum putIntoStack:temp];}
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _stackOfop=[[StackOfOp alloc]init];
    _stackOfnum=[[StackOfNum alloc]init];
    _calculater=[[Caclu alloc]init];
    equalafterop=NO;
    numberapeend=YES;
    self.textfield.textAlignment=NSTextAlignmentRight;
    [self.textfield setText:@"0"];
    NSLog(@"%s",__func__);
    // Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)numbtntouched:(UIButton *)sender{
    equalafterop=YES;
   NSUInteger tag=sender.tag;
if ([self.textfield.text isEqualToString:@"0"])
{
          NSString *nwtring=[NSString stringWithFormat:@"%lu",tag];
            [self.textfield setText:nwtring];
            NSNumber *num=[NSNumber numberWithInt:[nwtring intValue]];
            [self.stackOfnum putIntoStack:num];
            NSLog(@"%s",__func__);
            
}
else
{        if(numberapeend==YES)
        {
           
            NSNumber *thenum=[self.stackOfnum getThetopItem];
            int num=[thenum intValue];
            NSMutableString *mstr=[NSMutableString stringWithFormat:@"%d",num];
            NSString *apend=[NSString stringWithFormat:@"%lu",tag];
            [mstr appendString:apend];
            [self.textfield setText:mstr];
            num=[mstr intValue];
            NSNumber *innum=[NSNumber numberWithInt:num];
            [self.stackOfnum putIntoStack:innum];
            
        }
        else
        {
            NSString *nwtring=[NSString stringWithFormat:@"%lu",tag];
            [self.textfield setText:nwtring];
            NSNumber *num=[NSNumber numberWithInt:[nwtring intValue]];
            [self.stackOfnum putIntoStack:num];
        }
    NSLog(@"%s",__func__);
    for (id r in self.stackOfnum.Nmutarray) {
        if (r==nil) {
            NSLog(@"nil");
        }
        NSLog(@"%@",r);
    }
    for (id l in self.stackOfop.Omutarray) {
        if (l==nil) {
            NSLog(@"nil");
        }
        NSLog(@"%@",l);
    }
    numberapeend=YES;
}
}
-(IBAction)optouched:(UIButton *)sender{
    
    if (sender.tag==10) {
        equalafterop=NO;
        numberapeend=NO;
        if (self.stackOfop.count==1) {
            [self.stackOfop updateop];
        }
        if(self.stackOfnum.count>=2){
        NSNumber *n1=[self.stackOfnum getThetopItem];
        NSNumber *n2=[self.stackOfnum getThetopItem];
        NSString *op=[self.stackOfop getTheTopItem];
        NSString *result=[self.calculater calculate:n1 with:n2 andop:op];
        NSNumber *resultnum=[NSNumber numberWithInt:[result intValue]];
            [self.stackOfnum putIntoStack:resultnum];
        [self.textfield setText:result];
            [self.stackOfop putIntoStack:@"+"];
        }
        [self.stackOfop putIntoStack:@"+"];
    }
    else if (sender.tag==11)
    {
        if (self.stackOfop.count==1) {
            [self.stackOfop updateop];
        }
        equalafterop=NO;
        numberapeend=NO;
        if(self.stackOfnum.count>=2){
        NSNumber *n1=[self.stackOfnum getThetopItem];
        NSNumber *n2=[self.stackOfnum getThetopItem];
        NSString *op=[self.stackOfop getTheTopItem];
        NSString *result=[self.calculater calculate:n1 with:n2 andop:op];
            NSNumber *resultnum=[NSNumber numberWithInt:[result intValue]];
            NSLog(@"%d",[result intValue]);
            [self.stackOfnum putIntoStack:resultnum];
            [self.textfield setText:result];
            [self.stackOfop putIntoStack:@"-"];
        }
        [self.stackOfop putIntoStack:@"-"];
    }
    else if (sender.tag==12){
        if (self.stackOfop.count==1) {
            [self.stackOfop updateop];
        }
        equalafterop=NO;
        numberapeend=NO;
        if(self.stackOfnum.count>=2){
        NSNumber *n1=[self.stackOfnum getThetopItem];
        NSNumber *n2=[self.stackOfnum getThetopItem];
        NSString *op=[self.stackOfop getTheTopItem];
        NSString *result=[self.calculater calculate:n1 with:n2 andop:op];
            NSNumber *resultnum=[NSNumber numberWithInt:[result intValue]];
            [self.stackOfnum putIntoStack:resultnum];
            [self.textfield setText:result];
            [self.stackOfop putIntoStack:@"*"];
        }
        [self.stackOfop putIntoStack:@"*"];
    }
    else if (sender.tag==13){
        if (self.stackOfop.count==1) {
            [self.stackOfop updateop];
        }
        equalafterop=NO;
        numberapeend=NO;
        if(self.stackOfnum.count>=2){
        NSNumber *n1=[self.stackOfnum getThetopItem];
        NSNumber *n2=[self.stackOfnum getThetopItem];
        NSString *op=[self.stackOfop getTheTopItem];
        NSString *result=[self.calculater calculate:n1 with:n2 andop:op];
            NSLog(@"测试1：%lf",[result doubleValue]);
            NSNumber *resultnum=[NSNumber numberWithFloat:[result doubleValue]];
          
            [self.stackOfnum putIntoStack:resultnum];
            [self.textfield setText:result];
            [self.stackOfop putIntoStack:@"/"];
        }
        [self.stackOfop putIntoStack:@"/"];
    }
    //下面是按了等于符号
    else if (sender.tag==14){
        numberapeend=NO;
        if(equalafterop==YES){
        NSNumber *n1=[self.stackOfnum getThetopItem];
        NSLog(@"%@",self.stackOfop);
        NSLog(@"%@",self.stackOfnum);
        NSNumber *n2=[self.stackOfnum getThetopItem];
        NSLog(@"%@",n2);
        
        NSString *op=[self.stackOfop getTheTopItem];
        NSString *result=[self.calculater calculate:n1 with:n2 andop:op];
            NSNumber *resultnum=[NSNumber numberWithInt:[result intValue]];
            [self.stackOfnum putIntoStack:resultnum];
        [self.textfield setText:result];
        
        }
        else{
           NSNumber *n1=[self.stackOfnum getThetopItem];
            int ns=[n1 intValue];
            NSString *str=[NSString stringWithFormat:@"%d",ns];
            NSNumber *resultnum=[NSNumber numberWithInt:[str intValue]];
            [self.stackOfnum putIntoStack:resultnum];
            [self.textfield setText:str];
            
            }
    };
    
    NSLog(@"%s",__func__);
    for (id r in self.stackOfnum.Nmutarray) {
        if (r==nil) {
            NSLog(@"nil");
        }
        NSLog(@"%@",r);
    }
    for (id l in self.stackOfop.Omutarray) {
        if (l==nil) {
            NSLog(@"nil");
        }
        NSLog(@"%@",l);
    }
}


@end
