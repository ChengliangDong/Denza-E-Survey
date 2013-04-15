//
//  Question5ViewController.h
//  Denza E-Survey
//
//  Created by user on 13-4-14.
//  Copyright (c) 2013年 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Question5ViewController : UIViewController
{
    IBOutlet UIImageView *imageA;
    IBOutlet UIImageView *imageB;
    
    BOOL selectedAnswer[10];
    
}
- (IBAction)next_Ques:(id)sender;
- (IBAction)selectAnswer:(id)sender;

@end
