//
//  MainViewController.h
//  SMTUtilitiesDemo
//
//  Created by Teffi : github.com/teffi/SMTUtilities
//  Copyright (c) 2015 iamsteffi.com
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController{
    IBOutlet UITextField * email;
    IBOutlet UITextField * numbers;
    IBOutlet UITextField * alphabets;
    IBOutlet UIScrollView * scrollView;
    
}
-(IBAction)didValidate:(id)sender;

@end
