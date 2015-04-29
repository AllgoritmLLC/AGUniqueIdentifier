//
//  AGUniqueId.m
//
//  Created by Pavel Jaoshvili on 29/04/15.
//  Copyright (c) 2015 Allgoritm LLC. All rights reserved.
//

#import "AGUniqueId.h"

NSString* const AGUniqueIdKey = @"AGUniqueIdKey";

@implementation AGUniqueId

+ (NSString*) identifier {
    NSUserDefaults* def = [NSUserDefaults standardUserDefaults];
    NSString* uid = [def objectForKey:AGUniqueIdKey];
    if (nil == uid) {
        uid = [[NSUUID UUID] UUIDString];
        [def setObject:uid forKey:AGUniqueIdKey];
        [def synchronize];
    }
    return uid;
}

@end
