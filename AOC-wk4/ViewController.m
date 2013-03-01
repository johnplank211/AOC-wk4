//
//  ViewController.m
//  AOC-wk4
//
//  Created by john plank on 2/26/13.
//  Copyright (c) 2013 john plank. All rights reserved.
//

#import "ViewController.h"

#define login_Button 0
#define date_Button 1
#define info_Button 2


@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{

     self.view.backgroundColor = [UIColor grayColor];
    
//user UILabel
    userName = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 88.0f, 30.0f)];
    if (userName != nil);
    {
        userName.text = @"Username: ";
        userName.textColor = [UIColor whiteColor];
        [userName setBackgroundColor: [UIColor clearColor]];
        
        [self.view addSubview:userName];
        
    }

//textField for user
    textField = [[ UITextField alloc] initWithFrame:CGRectMake(100.0f, 10.0f, 200.0f, 30.0f)];
    if (textField != nil)
    {
        //textField.text = @"Hello Bitches";
        textField.borderStyle = UITextBorderStyleRoundedRect;
        
        [self.view addSubview:textField];
    }


//Login button
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        //button.backgroundColor = [UIColor blueColor];
        loginButton.frame = CGRectMake(200.0f, 50.0f, 100.0f, 50.0f);
        loginButton.tintColor = [UIColor redColor];
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        //[button setTitle:@"Push it real good" forState:UIControlStateHighlighted];
        loginButton.tag = login_Button;
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        
        [self.view addSubview:loginButton];
    }
    
//info button
    
    UIButton *infoButton = [UIButton buttonWithType: UIButtonTypeInfoLight];
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(20.0f, 350.0f, 30.0f, 30.0f);
        infoButton.tag = info_Button;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:infoButton];
    }

//who made who
    appMaster = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 400.0f, 320.0f, 50.0f)];
    if (appMaster != nil)
    {
        appMaster.textColor = [UIColor whiteColor];
        appMaster.numberOfLines = 2;
        [appMaster setBackgroundColor: [UIColor clearColor]];
        
        [self.view addSubview:appMaster];
    }
    
    
//date button
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil);
    {
        dateButton.frame = CGRectMake(10.0f, 200.0f, 100.0f, 40.0f);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        dateButton.tag = date_Button;
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:dateButton];
    }

    
//display user name
    enterUser = [[UILabel alloc] initWithFrame:CGRectMake(00.0f, 120.0f, 320.0f, 50.0f)];
    if (enterUser != nil);
    {
        enterUser.text = @"Please Enter Username";
        enterUser.textColor = [UIColor blueColor];
        enterUser.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:enterUser];
    }
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



//click commander
-(void)onClick:(UIButton*)button
{
    //login notice
    if (button.tag == login_Button)
    {
        NSString *userInput = [textField text];
        
        if (userInput.length > 0)
        {
            enterUser.text = [NSString stringWithFormat:@"User: %@ has been logged in.", userInput];
        }
       
    //forgot to login notice
        else if (userInput.length == 0)
        {
            enterUser.text = @"Username cannot be empty";
        }
        
    }
    
    //date notifcation
    if (button.tag == date_Button)
    {
        date = [NSDate date];
        
        dateFormat = [[NSDateFormatter alloc] init];
        if (dateFormat != nil)
        {
            [dateFormat setDateFormat:@"MMMM d, y  h:mm:ssa  zzzz"];
            
            alert = [[UIAlertView alloc] initWithTitle:@"Date" message:[NSString stringWithFormat:@"%@", [dateFormat stringFromDate:date]] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            if (alert != nil)
            {
                [alert show];
            }
        }
    }
    
    //who made this lovely app
    if (button.tag == info_Button)
    {
        if (appMaster != nil)
        {
            appMaster.text = @"This application was created by: John Plank";
        }
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
