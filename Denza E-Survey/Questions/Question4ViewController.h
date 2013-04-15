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
     IBOutlet UILabel *label_Rank;    
     IBOutlet UILabel *label_Rank2;
     IBOutlet UILabel *label_Rank3;
     IBOutlet UILabel *label_Rank4;
     IBOutlet UILabel *label_Rank5;
     IBOutlet UILabel *label_Rank6;
     IBOutlet UILabel *label_Rank7;
    
    //brandGreen label
     IBOutlet UILabel *label_Green1;
     IBOutlet UILabel *label_Green2;
     IBOutlet UILabel *label_Green3;
     IBOutlet UILabel *label_Green4;
     IBOutlet UILabel *label_Green5;
     IBOutlet UILabel *label_Green6;
     IBOutlet UILabel *label_Green7;
    
    IBOutlet UIButton *btn_Ques;
    int selectedRank[10];
    int rankNumber;
    int selectedGreen[10];
    int greenNumber;
}
- (IBAction)brandRank:(id)sender;
- (IBAction)brandGreen:(id)sender;

- (IBAction)btn_Ques:(id)sender;

@end
