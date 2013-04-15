//
//  Question7ViewController.h
//  Denza E-Survey
//
//  Created by Town Chen on 4/11/13.
//  Copyright (c) 2013 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Question7ViewController : UIViewController
{
    IBOutlet UIImageView *imageA;
    IBOutlet UIImageView *imageB;
    IBOutlet UIImageView *imageC;
    IBOutlet UIImageView *imageD;
    IBOutlet UIImageView *imageE;
    IBOutlet UIImageView *imageF;
    IBOutlet UIImageView *imageG;
    IBOutlet UIImageView *imageH;
    IBOutlet UIImageView *imageI;
    
    BOOL selectedAnswer[12];
    
}
- (IBAction)next_Ques:(id)sender;
- (IBAction)selectAnswer:(id)sender;

@end
