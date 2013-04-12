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
    __unsafe_unretained IBOutlet UIImageView *imageA;
    __unsafe_unretained IBOutlet UIImageView *imageB;
    __unsafe_unretained IBOutlet UIImageView *imageC;
    __unsafe_unretained IBOutlet UIImageView *imageD;
    __unsafe_unretained IBOutlet UIImageView *imageE;
    __unsafe_unretained IBOutlet UIImageView *imageF;
    
    bool selectedAnswer[10];
    
}
- (IBAction)buttonSelect:(id)sender;
- (IBAction)next_Ques:(id)sender;

@end
