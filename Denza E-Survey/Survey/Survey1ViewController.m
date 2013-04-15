//
//  Survey1ViewController.m
//  Denza E-Survey
//
//  Created by Town Chen on 4/11/13.
//  Copyright (c) 2013 Dong. All rights reserved.
//

#import "Survey1ViewController.h"
#import "Survey2ViewController.h"
@interface Survey1ViewController ()

@end

@implementation Survey1ViewController

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
    imageD.image = [UIImage imageNamed:@"button2_up.png"];
    imageE.image = [UIImage imageNamed:@"button2_up.png"];
    imageF.image = [UIImage imageNamed:@"button2_up.png"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)next_Survey:(id)sender {
    //Load next question
    Survey2ViewController *objGroupView = [[Survey2ViewController alloc] initWithNibName:@"Survey2ViewController" bundle:nil];
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
    imageD = nil;
    imageE = nil;
    imageF = nil;
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
        case 3:
            if (selectedAnswer[index])
            {
                imageD.image = [UIImage imageNamed:@"button2_down.png"];
            }
            else{
                imageD.image = [UIImage imageNamed:@"button2_up.png"];
            }
            
            break;
        case 4:
            if (selectedAnswer[index])
            {
                imageE.image = [UIImage imageNamed:@"button2_down.png"];
            }
            else{
                imageE.image = [UIImage imageNamed:@"button2_up.png"];
            }
            
            break;
        case 5:
            if (selectedAnswer[index])
            {
                imageF.image = [UIImage imageNamed:@"button2_down.png"];
            }
            else{
                imageF.image = [UIImage imageNamed:@"button2_up.png"];
            }
            
            break;
            
        default:
            break;
    }
    
    
}
@end
