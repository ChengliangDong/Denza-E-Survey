//
//  Question2ViewController.m
//  Denza E-Survey
//
//  Created by Dong on 13-4-7.
//  Copyright (c) 2013年 Dong. All rights reserved.
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextQuest:(id)sender {
    
    //Load next question
    Question3ViewController *objGroupView = [[Question3ViewController alloc] initWithNibName:@"Question3ViewController" bundle:nil];
    objGroupView.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:objGroupView animated:YES completion:^{}];
}
@end
