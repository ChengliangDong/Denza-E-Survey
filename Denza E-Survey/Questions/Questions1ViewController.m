//
//  Questions1ViewController.m
//  Denza E-Survey
//
//  Created by Dong on 13-4-6.
//  Copyright (c) 2013年 Dong. All rights reserved.
//

#import "Questions1ViewController.h"
#import "Question2ViewController.h"

@interface Questions1ViewController ()

@end

@implementation Questions1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  //  NSLog(kUserLanguage);
    //if user selected Chinese Menu, display chinese content
    if ([kUserLanguage isEqualToString:@"chinese"])
    {
        [titleQuestion setText:@"1、	请问您听说过DENZA腾势吗?" ];
        //set button title and status
        [buttonSelectionA setTitle:@"A、听说过" forState:UIControlStateNormal];
        [buttonSelectionB setTitle:@"B、没有" forState:UIControlStateNormal];
        
        [buttonNext setTitle:@"下一题" forState:UIControlStateNormal];
    }
    else
    {
        [titleQuestion setText:@"1、	Have you heard of Denza before？" ];
        
        [buttonSelectionA setTitle:@"A、Yes" forState:UIControlStateNormal];
        [buttonSelectionB setTitle:@"B、No" forState:UIControlStateNormal];
        
        [buttonNext setTitle:@"Next" forState:UIControlStateNormal];
    }


}

-(void) initStatus
{
    for (int i =0; i < 10; i++)
    {
        selectedAnswer[i] = NO;
    }
    imageA.image = [UIImage imageNamed:@"button2_up.png"];
    imageB.image = [UIImage imageNamed:@"button2_up.png"];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void)viewDidUnload {
    buttonSelectionA = nil;
    buttonSelectionB = nil;
    imageA = nil;
    imageB = nil;
    titleQuestion = nil;
    buttonNext = nil;
    [super viewDidUnload];
    
}
- (IBAction)selectedOption:(id)sender {
    UIButton *button = (UIButton*)sender;
    [self selectOption:button.tag]; //send user selected button tag to the function
    
}


- (IBAction)nextQuest:(id)sender {
    
    BOOL isSelected = NO;
    for (int i =0; i < 10; i++)
    {
        if (selectedAnswer[i])
        {
            isSelected = YES;
        }
    }
    
    if(isSelected)
    {
        //Load next question
        Question2ViewController *objGroupView = [[Question2ViewController alloc] initWithNibName:@"Question2ViewController" bundle:nil];
        objGroupView.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:objGroupView animated:YES completion:^{}];
    }
}

//Make the UIButton & UIImage reponse to user selection
-(void)selectOption:(NSInteger)index
{
    [self initStatus];
    selectedAnswer[index] = !selectedAnswer[index];
    switch (index) {
        case 0:
            if (selectedAnswer[index])
            {
                imageA.image = [UIImage imageNamed:@"button2_down.png"];
            }
            else{
                 imageA.image = [UIImage imageNamed:@"button2_up.png"];
            }
            break;
            
        case 1:
            if (selectedAnswer[index])
            {
                imageB.image = [UIImage imageNamed:@"button2_down.png"];
            }
            else{
                imageB.image = [UIImage imageNamed:@"button2_up.png"];
            }

            break;

        default:
            break;
    }
    
    
}
@end
