//
//  Survey9ViewController.h
//  Denza E-Survey
//
//  Created by Town Chen on 4/11/13.
//  Copyright (c) 2013 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Survey9ViewController : UIViewController
{
    IBOutlet UIImageView *imageA;
    IBOutlet UIImageView *imageB;
    IBOutlet UIImageView *imageC;
    IBOutlet UIImageView *imageD;
    IBOutlet UIImageView *imageE;
    IBOutlet UIImageView *imageF;
    
    BOOL selectedAnswer[10];
    
}
- (IBAction)next_Survey:(id)sender;
- (IBAction)selectAnswer:(id)sender;
@end
