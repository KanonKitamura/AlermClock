//
//  ViewController.h
//  AlermClock
//
//  Created by kanon kitamura on 2015/01/28.
//  Copyright (c) 2015年 myname. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>{
    
    
    //変数の宣言
    int hour;
    int minute;
    int second;
    
    IBOutlet UILabel *hourLabel;
    IBOutlet UILabel *minuteLabel;
    IBOutlet UILabel *secondLabel;
    
    
    IBOutlet UITextField *hourTextField;//時間入力
    IBOutlet UITextField *minuteTextField;
    
    NSTimer *timer;
    
    
}

//メソッドの宣言

-(IBAction)settei;
-(IBAction)kaizyo;



@end

