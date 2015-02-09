//
//  DXDetailViewController.m
//  DayX
//
//  Created by Ross McIlwaine on 2/9/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DXDetailViewController.h"

@interface DXDetailViewController () <UITextFieldDelegate, UITextViewDelegate>

@end

static CGFloat margin = 20;
static CGFloat topMargin = 75;
static CGFloat titleHeight = 44;
static CGFloat bodyHeight = 220;
static CGFloat formatSpace = 20;

@implementation DXDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(margin, topMargin, self.view.bounds.size.width - margin * 2, titleHeight)];
    textField.backgroundColor = [UIColor lightGrayColor];
    textField.placeholder = @"Journal Title Here";
    textField.font = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.delegate = self;
    [self.view addSubview:textField];
    
    CGFloat top = topMargin + titleHeight + formatSpace;
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(margin, top, self.view.bounds.size.width - margin * 2, bodyHeight)];
    textView.layer.borderWidth = 2;
    textView.layer.cornerRadius = 10;
    textView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
   // textView.layer.description = @"Journal Entry Here";
    textView.delegate = self;
    [self.view addSubview:textView];
    
    top += bodyHeight + formatSpace;
    
    UIButton *clearAll = [[UIButton alloc] initWithFrame:CGRectMake(margin, top, 100, 22)];
    clearAll.backgroundColor = [UIColor redColor];
    [clearAll setTitle:@"Clear All" forState:UIControlStateNormal];
    clearAll.layer.cornerRadius = 10;
    [self.view addSubview:clearAll];
    
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)buttonWasTapped (id)

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
