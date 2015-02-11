//
//  ListTableViewDataSource.h
//  DayX
//
//  Created by Ross McIlwaine on 2/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *cellIdentifier = @"cell";

@interface ListTableViewDataSource : NSObject <UITableViewDataSource>

- (void)registerTableView:(UITableView *)tableView;

@end
