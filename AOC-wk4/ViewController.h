//
//  ViewController.h
//  AOC-wk4
//
//  Created by john plank on 2/26/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
{
    UILabel *userName;
    UITextField *textField;
    UILabel *enterUser;
    NSDate *date;
    UIAlertView *alert;
    NSDateFormatter *dateFormat;
    UILabel *appMaster;
}

@end
