//
//  Questions1ViewController.h
//  Denza E-Survey
//
//  Created by Dong on 13-4-6.
//  Copyright (c) 2013年 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Questions1ViewController : UIViewController
{
    IBOutlet UILabel *titleQuestion;
    IBOutlet UIButton *buttonSelectionA;
    IBOutlet UIButton *buttonSelectionB;
    IBOutlet UIImageView *imageA;
    IBOutlet UIImageView *imageB;
    IBOutlet UIButton *buttonNext;
    
    BOOL selectedAnswer[10];
}

- (IBAction)selectedOption:(id)sender;
- (IBAction)nextQuest:(id)sender;


@end
