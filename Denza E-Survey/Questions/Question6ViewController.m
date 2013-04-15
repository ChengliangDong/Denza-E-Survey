//
//  Question6ViewController.m
//  Denza E-Survey
//
//  Created by Town Chen on 4/11/13.
//  Copyright (c) 2013 Dong. All rights reserved.
//

#import "Question6ViewController.h"
#import "Question7ViewController.h"
@interface Question6ViewController ()

@end

@implementation Question6ViewController

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
}

-(void) initStatus
{
    for (int i =0; i < 10; i++)
    {
        selectedAnswer[i] = NO;
    }
    imageA.image = [UIImage imageNamed:@"button2_up.png"];
    imageB.image = [UIImage imageNamed:@"button2_up.png"];
    imageC.image = [UIImage imageNamed:@"button2_up.png"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)next_Ques:(id)sender {
    //Load next question
    Question7ViewController *objGroupView = [[Question7ViewController alloc] initWithNibName:@"Question7ViewController" bundle:nil];
    objGroupView.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:objGroupView animated:YES completion:^{}];
}

- (IBAction)selectAnswer:(id)sender {
    UIButton *button = (UIButton*)sender;
    [self selectOption:button.tag]; //send user selected button tag to the function
}
- (void)viewDidUnload {
    imageA = nil;
    imageB = nil;
    imageC = nil;
    [super viewDidUnload];
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
        case 2:
            if (selectedAnswer[index])
            {
                imageC.image = [UIImage imageNamed:@"button2_down.png"];
            }
            else{
                imageC.image = [UIImage imageNamed:@"button2_up.png"];
            }
            
            break;
            
        default:
            break;
    }
    
    
}
@end
