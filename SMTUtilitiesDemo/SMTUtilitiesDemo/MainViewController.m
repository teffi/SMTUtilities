//
//  MainViewController.m
//  SMTUtilitiesDemo
//
//  Created by Teffi : github.com/teffi/SMTUtilities
//  Copyright (c) 2015 iamsteffi.com
//

#import "MainViewController.h"
#import "SMTUtilities.h"

@interface MainViewController ()<UITextFieldDelegate>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    email.delegate = self;
    numbers.delegate = self;
    alphabets.delegate = self;
    
    UITapGestureRecognizer * dismissKeyBoard = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(didTapDismiss)];
    [scrollView addGestureRecognizer:dismissKeyBoard];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Actions
-(void)didValidate:(id)sender{
    if([SMTUtilities isEmpty:email] || [SMTUtilities isEmpty:numbers] || [SMTUtilities isEmpty:alphabets]){
        
        [self showAlertWithTitle:@"Oooops" withMessage:@"There are empty fields!"];
       
    }else if(![SMTUtilities isValidEmail:email]){
            [self showAlertWithTitle:@"Oooops" withMessage:@"Invalid Email."];
    }else if (![SMTUtilities isNumeric:numbers]){
            [self showAlertWithTitle:@"Oooops" withMessage:@"Only numbers are allowed."];
    }else if (![SMTUtilities isAlphabets:alphabets]){
            [self showAlertWithTitle:@"Ooops" withMessage:@"Only alphabets are allowed"];
    }else{
        [self showAlertWithTitle:@"Yehey" withMessage:@"All fields are valid"];
    }
}

#pragma mark - Methods
-(void)showAlertWithTitle:(NSString *)title withMessage:(NSString *)msg{
    if([UIAlertController class]){
        UIAlertController * alertController = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:okAction];
        [self presentViewController:alertController animated:YES completion:nil];
    }else{
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:title message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}

-(void)didTapDismiss{
    [self.view endEditing:YES];
    [scrollView setContentOffset:CGPointMake(0,0) animated:YES];
}

#pragma mark - TextField Delegate
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    [scrollView setContentOffset:CGPointMake(0,50) animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
