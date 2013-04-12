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
    //brandRank label
    __unsafe_unretained IBOutlet UILabel *label_Rank;    
    __unsafe_unretained IBOutlet UILabel *label_Rank2;
    __unsafe_unretained IBOutlet UILabel *label_Rank3;
    __unsafe_unretained IBOutlet UILabel *label_Rank4;
    __unsafe_unretained IBOutlet UILabel *label_Rank5;
    __unsafe_unretained IBOutlet UILabel *label_Rank6;
    __unsafe_unretained IBOutlet UILabel *label_Rank7;
    
    //brandGreen label
    __unsafe_unretained IBOutlet UILabel *label_Green1;
    __unsafe_unretained IBOutlet UILabel *label_Green2;
    __unsafe_unretained IBOutlet UILabel *label_Green3;
    __unsafe_unretained IBOutlet UILabel *label_Green4;
    __unsafe_unretained IBOutlet UILabel *label_Green5;
    __unsafe_unretained IBOutlet UILabel *label_Green6;
    __unsafe_unretained IBOutlet UILabel *label_Green7;
    
    __unsafe_unretained IBOutlet UIButton *btn_Ques;
    int selectedRank[10];
    int rankNumber;
    int selectedGreen[10];
    int greenNumber;
}
- (IBAction)brandRank:(id)sender;
- (IBAction)brandGreen:(id)sender;

- (IBAction)btn_Ques:(id)sender;

@end
