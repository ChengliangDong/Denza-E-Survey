//
//  Question4ViewController.h
//  Denza E-Survey
//
//  Created by Town Chen on 4/11/13.
//  Copyright (c) 2013 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Question4ViewController : UIViewController
{
    __unsafe_unretained IBOutlet UILabel *label_Rank;    
    __unsafe_unretained IBOutlet UILabel *label_Rank2;
    __unsafe_unretained IBOutlet UILabel *label_Rank3;
    __unsafe_unretained IBOutlet UILabel *label_Rank4;
    __unsafe_unretained IBOutlet UILabel *label_Rank5;
    __unsafe_unretained IBOutlet UILabel *label_Rank6;
    __unsafe_unretained IBOutlet UILabel *label_Rank7;
    __unsafe_unretained IBOutlet UIButton *btn_Ques;
    int selectedRank[10];
    int rankNumber;
}
- (IBAction)brandRank:(id)sender;
- (IBAction)brandGreen:(id)sender;

- (IBAction)btn_Ques:(id)sender;

@end
