//
//  Question2ViewController.h
//  Denza E-Survey
//
//  Created by Town Chen on 4/12/13.
//  Copyright (c) 2013 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Question2ViewController : UIViewController
{
     IBOutlet UIImageView *imageA;
     IBOutlet UIImageView *imageB;
     IBOutlet UIImageView *imageC;
     IBOutlet UIImageView *imageD;
     IBOutlet UIImageView *imageE;
     IBOutlet UIImageView *imageF;
    
    bool selectedAnswer[10];
    
}
- (IBAction)buttonSelect:(id)sender;
- (IBAction)next_Ques:(id)sender;

@end
