//
//  DXEntryModel.m
//  DayX
//
//  Created by Ross McIlwaine on 2/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DXEntryModel.h"

static NSString * const titleKey = @"title";
static NSString * const textKey = @"text";
static NSString * const dateKey = @"timestamp";
static NSString * const entryListKey = @"entryList";
static NSString * const entriedKey = @"entries";


@implementation DXEntryModel

- (id)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    if (self) {
        self.title = dictionary[titleKey];
        self.text = dictionary[textKey];
    }
    return self;
}

- (NSDictionary *)entryDictionary {
    
    NSMutableDictionary *entryDictionary = [NSMutableDictionary new];
    if (self.title) {
        entryDictionary[titleKey] = self.title;
      }
    if (self.text) {
        entryDictionary[textKey] = self.text;
    }
    if (self.timestamp) {
        entryDictionary[dateKey] = self.timestamp;
    }
    return entryDictionary;
}

- (NSString *)description {
    return self.title;
}


+ (NSMutableArray*)loadEntriesFromDefaults {
    
    NSArray *entriesLoadedAsDictionariesFromUserDefaults = [[NSUserDefaults standardUserDefaults] objectForKey:entryListKey];
    
    NSMutableArray *entries = [NSMutableArray new];
    
    for (NSDictionary *entryDictionary in entriesLoadedAsDictionariesFromUserDefaults) {
        DXEntryModel *entry = [[DXEntryModel  alloc] initWithDictionary:entryDictionary];
        [entries addObject:entry];
    }
    
    return entries;
}


+ (void)storeEntriesInDefaults:(NSArray *)entries {
    
    NSMutableArray *newEntries = [NSMutableArray new];
    
    for (DXEntryModel *entry in entries) {
        [newEntries addObject:[entry entryDictionary]];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:newEntries forKey:entryListKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}



@end
