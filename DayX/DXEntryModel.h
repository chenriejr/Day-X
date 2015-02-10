//
//  DXEntryModel.h
//  DayX
//
//  Created by Ross McIlwaine on 2/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DXEntryModel : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSDate *timestamp;

@end
