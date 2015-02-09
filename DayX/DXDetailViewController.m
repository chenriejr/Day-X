//
//  DXDetailViewController.m
//  DayX
//
//  Created by Ross McIlwaine on 2/9/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DXDetailViewController.h"

@interface DXDetailViewController () <UITextFieldDelegate, UITextViewDelegate>

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UITextView *textView;

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
    
    
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(margin, topMargin, self.view.bounds.size.width - margin * 2, titleHeight)];
    self.textField.backgroundColor = [UIColor lightGrayColor];
    self.textField.placeholder = @"Journal Title Here";
    self.textField.font = [UIFont boldSystemFontOfSize:[UIFont systemFontSize]];
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.delegate = self;
    [self.view addSubview:self.textField];
    
    CGFloat top = topMargin + titleHeight + formatSpace;
    
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(margin, top, self.view.bounds.size.width - margin * 2, bodyHeight)];
    self.textView.layer.borderWidth = 2;
    self.textView.layer.cornerRadius = 10;
    self.textView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    self.textView.delegate = self;
    [self.view addSubview:self.textView];
    
    top += bodyHeight + formatSpace;
    
    UIButton *clearAll = [[UIButton alloc] initWithFrame:CGRectMake(margin, top, 100, 22)];
    clearAll.backgroundColor = [UIColor redColor];
    [clearAll setTitle:@"Clear All" forState:UIControlStateNormal];
    clearAll.layer.cornerRadius = 10;
    [clearAll addTarget:self action:@selector(clearButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clearAll];
    
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)clearButtonPressed {
    self.textField.text = @"";
    self.textView.text = @"";
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
