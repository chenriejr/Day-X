//
//  DetailViewController.m
//  DayX
//
//  Created by Ross McIlwaine on 2/9/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *journalTitle;
@property (weak, nonatomic) IBOutlet UITextView *journalEntry;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (IBAction)clearAllPressed:(id)sender {
    self.journalTitle.text = @"";
    self.journalEntry.text = @"";
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.journalTitle resignFirstResponder];
    return YES;
}


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
