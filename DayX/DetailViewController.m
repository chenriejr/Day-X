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
    
    self.journalEntry.layer.borderWidth = 2;
    self.journalEntry.layer.borderColor = [[UIColor grayColor] CGColor];
    
    
    NSDictionary *novelist = [[NSUserDefaults standardUserDefaults] objectForKey:@"novelist"];
    [self updateJournalDictionary:novelist];
    
}

- (IBAction)clearAllPressed:(id)sender {
    self.journalTitle.text = @"";
    self.journalEntry.text = @"";
}

- (void)updateJournalDictionary:(NSDictionary *) novelist {
    self.journalTitle.text = novelist[@"titleKey"];
    self.journalEntry.text = novelist[@"entryKey"];
    
    NSDate *date = [NSDate date];
    [[NSUserDefaults standardUserDefaults] setObject:date forKey:@"date"];
    
}

- (IBAction)saveButton:(id)sender {
    NSMutableDictionary *journalDictionary = [NSMutableDictionary new];
    
    journalDictionary[@"titleKey"] = self.journalTitle.text;
    journalDictionary[@"entryKey"] = self.journalEntry.text;
    
    [[NSUserDefaults standardUserDefaults] setObject:journalDictionary forKey:@"novelist"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.journalTitle resignFirstResponder];
    return YES;
}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    if (textView.tag == 0) {
        textView.text = @"";
        textView.tag = 1;
    }
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.journalEntry resignFirstResponder];
    [self.journalTitle resignFirstResponder];
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
