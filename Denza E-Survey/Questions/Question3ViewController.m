//
//  Question3ViewController.m
//  Denza E-Survey
//
//  Created by Dong on 13-4-7.
//  Copyright (c) 2013年 Dong. All rights reserved.
//

#import "Question3ViewController.h"
#import "Question4ViewController.h"
@interface Question3ViewController ()

@end

@implementation Question3ViewController

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
    rating1 = [[TDRatingView alloc]init];
    rating1.delegate = self;
    rating1.minimumRating = 0;
  //  rating1.sliderHeight = 15;
    rating1.widthOfEachNo = 45;
    rating1.heightOfEachNo = 30;
    rating1.scaleBgColor = [UIColor colorWithRed:200.0f/255 green:208.0f/255 blue:200.0f/255 alpha:0.5];
    rating1.arrowColor = [UIColor colorWithRed:8.0f/255 green:108.0f/255 blue:200.0f/255 alpha:0.4];
    
    [rating1 drawRatingControlWithX:300 Y:240];
    
    rating2 = [[TDRatingView alloc]init];
    rating2.delegate = self;
    rating2.minimumRating = 0;
    //  rating1.sliderHeight = 15;
    rating2.widthOfEachNo = 45;
    rating2.heightOfEachNo = 30;
    rating2.scaleBgColor = [UIColor colorWithRed:200.0f/255 green:208.0f/255 blue:200.0f/255 alpha:0.5];
    rating2.arrowColor = [UIColor colorWithRed:8.0f/255 green:108.0f/255 blue:200.0f/255 alpha:0.4];
    
    [rating2 drawRatingControlWithX:300 Y:320];
    
    rating3 = [[TDRatingView alloc]init];
    rating3.delegate = self;
    rating3.minimumRating = 0;
    //  rating1.sliderHeight = 15;
    rating3.widthOfEachNo = 45;
    rating3.heightOfEachNo = 30;
    rating3.scaleBgColor = [UIColor colorWithRed:200.0f/255 green:208.0f/255 blue:200.0f/255 alpha:0.5];
    rating3.arrowColor = [UIColor colorWithRed:8.0f/255 green:108.0f/255 blue:200.0f/255 alpha:0.4];
    [rating3 drawRatingControlWithX:300 Y:400];
    
    rating4 = [[TDRatingView alloc]init];
    rating4.delegate = self;
    rating4.minimumRating = 0;
    //  rating1.sliderHeight = 15;
    rating4.widthOfEachNo = 45;
    rating4.heightOfEachNo = 30;
    rating4.scaleBgColor = [UIColor colorWithRed:200.0f/255 green:208.0f/255 blue:200.0f/255 alpha:0.5];
    rating4.arrowColor = [UIColor colorWithRed:8.0f/255 green:108.0f/255 blue:200.0f/255 alpha:0.4];
    [rating4 drawRatingControlWithX:300 Y:480];
    
    [self.view addSubview:rating1];
    [self.view addSubview:rating2];
    [self.view addSubview:rating3];
    [self.view addSubview:rating4];
}
-(void)viewDidUnload
{
    btnNext = nil;
    rating1 = nil;
    rating2 = nil;
    rating3 = nil;
    rating3 = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) selectedRating:(NSString *)scale;
{
    
    
    NSLog(@"SelectedRating:::%@",scale);
}

- (IBAction)btnNext:(id)sender {
    //Load next question
    Question4ViewController *objGroupView = [[Question4ViewController alloc] initWithNibName:@"Question4ViewController" bundle:nil];
    objGroupView.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:objGroupView animated:YES completion:^{}];
}
@end
