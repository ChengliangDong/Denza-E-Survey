//
//  Question4ViewController.m
//  Denza E-Survey
//
//  Created by Town Chen on 4/11/13.
//  Copyright (c) 2013 Dong. All rights reserved.
//

#import "Question4ViewController.h"
#import "Question5ViewController.h"

@interface Question4ViewController ()

@end

@implementation Question4ViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)brandRank:(id)sender {
    UIButton *button = (UIButton*)sender;
    [self rankOption:button.tag]; //send user selected button tag to the function
}
-(void)rankOption:(NSInteger)index
{
    selectedRank[index]++;
    switch(index)
    {
        case 0:
            if(selectedRank[index] == 1)
            {
                rankNumber++;
                 NSString  *tmpString = [NSString stringWithFormat:@"%d",rankNumber];
                label_Rank.text = tmpString;//rankNumber;
            }
            break;
        case 1:
            if(selectedRank[index] == 1)
            {
                rankNumber++;
                NSString  *tmpString = [NSString stringWithFormat:@"%d",rankNumber];
                label_Rank2.text = tmpString;//rankNumber;
            }
            break;
        case 2:
            if(selectedRank[index] == 1)
            {
                rankNumber++;
                NSString  *tmpString = [NSString stringWithFormat:@"%d",rankNumber];
                label_Rank3.text = tmpString;//rankNumber;
            }
            break;
        case 3:
            if(selectedRank[index] == 1)
            {
                rankNumber++;
                NSString  *tmpString = [NSString stringWithFormat:@"%d",rankNumber];
                label_Rank4.text = tmpString;//rankNumber;
            }
            break;
        case 4:
            if(selectedRank[index] == 1)
            {
                rankNumber++;
                NSString  *tmpString = [NSString stringWithFormat:@"%d",rankNumber];
                label_Rank5.text = tmpString;//rankNumber;
            }
            break;
        case 5:
            if(selectedRank[index] == 1)
            {
                rankNumber++;
                NSString  *tmpString = [NSString stringWithFormat:@"%d",rankNumber];
                label_Rank6.text = tmpString;//rankNumber;
            }
            break;
        case 6:
            if(selectedRank[index] == 1)
            {
                rankNumber++;
                NSString  *tmpString = [NSString stringWithFormat:@"%d",rankNumber];
                label_Rank7.text = tmpString;//rankNumber;
            }
            break;
        default:
            break;
            
            
    }
    
    
}

- (IBAction)brandGreen:(id)sender {
    UIButton *button = (UIButton*)sender;
    [self greenOption:button.tag]; //send user selected button tag to the function
}
-(void)greenOption:(NSInteger)index
{
    selectedGreen[index]++;
    switch(index)
    {
        case 0:
            if(selectedGreen[index] == 1)
            {
                greenNumber++;
                NSString  *greenString = [NSString stringWithFormat:@"%d",greenNumber];
                label_Green1.text = greenString;//greenNumber;
            }
            break;
        case 1:
            if(selectedGreen[index] == 1)
            {
                greenNumber++;
                NSString  *greenString = [NSString stringWithFormat:@"%d",greenNumber];
                label_Green2.text = greenString;//greenNumber;
            }
            break;
        case 2:
            if(selectedGreen[index] == 1)
            {
                greenNumber++;
                NSString  *greenString = [NSString stringWithFormat:@"%d",greenNumber];
                label_Green3.text = greenString;//greenNumber;
            }
            break;
        case 3:
            if(selectedGreen[index] == 1)
            {
                greenNumber++;
                NSString  *greenString = [NSString stringWithFormat:@"%d",greenNumber];
                label_Green4.text = greenString;//greenNumber;
            }
            break;
        case 4:
            if(selectedGreen[index] == 1)
            {
                greenNumber++;
                NSString  *greenString = [NSString stringWithFormat:@"%d",greenNumber];
                label_Green5.text = greenString;//greenNumber;
            }
            break;
        case 5:
            if(selectedGreen[index] == 1)
            {
                greenNumber++;
                NSString  *greenString = [NSString stringWithFormat:@"%d",greenNumber];
                label_Green6.text = greenString;//greenNumber;
            }
            break;
        case 6:
            if(selectedGreen[index] == 1)
            {
                greenNumber++;
                NSString  *greenString = [NSString stringWithFormat:@"%d",greenNumber];
                label_Green7.text = greenString;//greenNumber;
            }
            break;
        default:
            break;
            
            
    }
    
    
}

- (IBAction)btn_Ques:(id)sender {
    //Load next question
    Question5ViewController *objGroupView = [[Question5ViewController alloc] initWithNibName:@"Question5ViewController" bundle:nil];
    objGroupView.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:objGroupView animated:YES completion:^{}];
}
- (void)viewDidUnload {
    btn_Ques = nil;
    label_Rank = nil;
    label_Rank2 = nil;
    label_Rank3 = nil;
    label_Rank4 = nil;
    label_Rank5 = nil;
    label_Rank6 = nil;
    label_Rank7 = nil;
    rankNumber = 1;
    for(int i = 0; i < 10; i++)
    {
        selectedRank[i] = 1;
    }
    label_Green1 = nil;
    label_Green2 = nil;
    label_Green3 = nil;
    label_Green4 = nil;
    label_Green5 = nil;
    label_Green6 = nil;
    label_Green7 = nil;
    greenNumber = 1;
    for(int i = 0; i < 10; i++)
    {
        selectedGreen[i] = 1;
    }
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight ); }
@end
