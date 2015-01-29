//
//  ViewController.m
//  AlermClock
//
//  Created by kanon kitamura on 2015/01/28.
//  Copyright (c) 2015年 myname. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    hour=0;
    minute=0;
    second=0;
    
    hourTextField.delegate= self;
    minuteTextField.delegate=self;
    
    
}

-(IBAction)settei{
    
    hour=[hourTextField.text intValue];
    minute=[minuteTextField.text intValue];
    second=0;
    
    
    //テキストフィールドに書かれたテキストをイント型数値に変換する

    
    hourLabel.text =hourTextField.text;
    minuteLabel.text=minuteTextField.text;
    secondLabel.text=@"0"; //秒ラベルは文字を入れる物なので0と型を合わせるために文字列を入れてあげる
    //キーボードを隠すメソッド
    UIAlertView *alertView=[[UIAlertView alloc]
                            initWithTitle:@"お知らせ"message:@"タイマーの設定が完了したよ" delegate:nil cancelButtonTitle:nil
                            otherButtonTitles:@"OK",  nil];
    
    [alertView show];
    
    
    timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(count) userInfo:nil repeats:YES];
    }

-(void)count{
    second = second-1;
    if(hour==0 && minute==0 && second==0){
        
        UIAlertView *alertView =[[UIAlertView alloc]
                                 initWithTitle:@"お知らせ" message:@"時間になりました!" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        
        [alertView show];
        
        [timer invalidate];
    }
    
    if(second < 0){
        second = 59;
        minute=minute-1;
        
        if (minute<0) {
            minute=59;
            hour=hour-1;
            
        }
    }
    hourLabel.text=[NSString stringWithFormat:@"%d",hour];
    minuteLabel.text=[NSString stringWithFormat:@"%d",minute];
    secondLabel.text=[NSString stringWithFormat:@"%d",minute];
}




-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    
    return  YES;
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
