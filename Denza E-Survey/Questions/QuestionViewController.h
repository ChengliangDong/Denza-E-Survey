//
//  QuestionViewController.h
//  Denza E-Survey
//
//  Created by Town Chen on 4/15/13.
//  Copyright (c) 2013 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionViewController : UIViewController
{
    IBOutlet UIImageView *imageA;
    IBOutlet UIImageView *imageB;
    
    BOOL selectedAnswer[10];
    
}
- (IBAction)selectAnswer:(id)sender;
- (IBAction)next_Ques:(id)sender;

@end
