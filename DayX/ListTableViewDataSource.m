//
//  ListTableViewDataSource.m
//  DayX
//
//  Created by Ross McIlwaine on 2/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ListTableViewDataSource.h"
#import "DXEntryModel.h"

@implementation ListTableViewDataSource




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSArray *entries = [DXEntryModel loadEntriesFromDefaults];
    return entries.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSArray *entries = [DXEntryModel loadEntriesFromDefaults];
    DXEntryModel *entry = entries[indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    cell.textLabel.text = entry.title;
    return cell;
}



@end
