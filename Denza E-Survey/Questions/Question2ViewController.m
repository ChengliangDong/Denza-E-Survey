//
//  Question2ViewController.m
//  Denza E-Survey
//
//  Created by Town Chen on 4/12/13.
//  Copyright (c) 2013 Dong. All rights reserved.
//

#import "Question2ViewController.h"
#import "Question3ViewController.h"
@interface Question2ViewController ()

@end

@implementation Question2ViewController

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

- (IBAction)buttonSelect:(id)sender {
    UIButton *button = (UIButton*)sender;
    [self selectedOption:button.tag]; //send user selected button tag to the function
    //NSString *aString = [NSString stringWithFormat:＠"％d"， button.tag];
    //NSLog(sString);
}

- (IBAction)next_Ques:(id)sender {
    //Load next question
    Question3ViewController *objGroupView = [[Question3ViewController alloc] initWithNibName:@"Question3ViewController" bundle:nil];
    objGroupView.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:objGroupView animated:YES completion:^{}];
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
-(void)selectedOption:(NSInteger)index
{
    [self initStatus];
    selectedAnswer[index] = !selectedAnswer[index];
    //selectedAnswer[index] = YES;
    switch (index) {
        case 0:
            NSLog(@"00000");
            if (selectedAnswer[index])
            {
                imageA.image = [UIImage imageNamed:@"button2_down.png"];
            }
            else{
                imageA.image = [UIImage imageNamed:@"button2_up.png"];
            }
            break;
            
        case 1:
            NSLog(@"11111");
            if (selectedAnswer[index])
            {
                imageB.image = [UIImage imageNamed:@"button2_down.png"];
            }
            else{
                imageB.image = [UIImage imageNamed:@"button2_up.png"];
            }
            
            break;
        case 2:
            NSLog(@"22222");
            if (selectedAnswer[index])
            {
                imageC.image = [UIImage imageNamed:@"button2_down.png"];
            }
            else{
                imageC.image = [UIImage imageNamed:@"button2_up.png"];
            }
            
            break;
        case 3:
            NSLog(@"33333");
            if (selectedAnswer[index])
            {
                imageD.image = [UIImage imageNamed:@"button2_down.png"];
            }
            else{
                imageD.image = [UIImage imageNamed:@"button2_up.png"];
            }
            
            break;
        case 4:
            NSLog(@"44444");
            if (selectedAnswer[index])
            {
                imageE.image = [UIImage imageNamed:@"button2_down.png"];
            }
            else{
                imageE.image = [UIImage imageNamed:@"button2_up.png"];
            }
            
            break;
        case 5:
            NSLog(@"55555");
            if (selectedAnswer[index])
            {
                imageF.image = [UIImage imageNamed:@"button2_down.png"];
            }
            else{
                imageF.image = [UIImage imageNamed:@"button2_up.png"];
            }
            
            break;
            
        default:
            NSLog(@"default");
            break;
    }
    
    
}
@end
