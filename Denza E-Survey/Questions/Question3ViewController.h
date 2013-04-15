//
//  Question3ViewController.h
//  Denza E-Survey
//
//  Created by Dong on 13-4-7.
//  Copyright (c) 2013年 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TDRatingView.h"
@interface Question3ViewController : UIViewController<TDRatingViewDelegate>
{
     TDRatingView * rating1;
     TDRatingView * rating2;
     TDRatingView * rating3;
     TDRatingView * rating4;
     IBOutlet UIButton *btnNext;
}
- (IBAction)btnNext:(id)sender;
@end
