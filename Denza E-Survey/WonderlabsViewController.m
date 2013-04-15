//
//  WonderlabsViewController.m
//  Denza E-Survey
//
//  Created by Dong on 13-4-6.
//  Copyright (c) 2013年 Dong. All rights reserved.
//

#import "WonderlabsViewController.h"
#import "QuestionViewController.h"
@interface WonderlabsViewController ()

@end

@implementation WonderlabsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)languageSelection:(id)sender {
    
    
    //Define user constant to save user selected value.
    NSUserDefaults *objUserDefaults = [NSUserDefaults standardUserDefaults];
    UIButton *button = (UIButton *)sender;
    if (button.tag == 0)
    {
        [objUserDefaults setValue:@"english" forKey:@"language"];
    } else {
        [objUserDefaults setValue:@"chinese" forKey:@"language"];
    }
    [objUserDefaults synchronize];
    
    //NSLog(kUserLanguage);
    
    QuestionViewController *objGroupView = [[QuestionViewController alloc] initWithNibName:@"QuestionViewController" bundle:nil];
    objGroupView.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:objGroupView animated:YES completion:^{}];
    
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight ); }
@end
