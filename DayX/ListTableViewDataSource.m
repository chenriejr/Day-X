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

-(void)registerTableView:(UITableView *)tableView
{
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSArray *entries = [DXEntryModel loadEntriesFromDefaults];
    return entries.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSArray *entries = [DXEntryModel loadEntriesFromDefaults];
    DXEntryModel *entry = entries[indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.textLabel.text = entry.title;
    return cell;
}



@end
