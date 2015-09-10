//
//  NSNumber+KNumber.m
//  Photographer
//
//  Created by guojun on 9/2/15.
//  Copyright (c) 2015 zhaipengcheng. All rights reserved.
//

#import "NSNumber+KNumber.h"

@implementation NSNumber (KNumber)

- (NSString *)toString{
    NSUInteger num = [self integerValue];
    
    if (num > 10000) {
        float fNumber = num / 10000.0f;
        return [NSString stringWithFormat:@"%.1f万次", fNumber];
    } else {
        return [self stringValue];
    }
}

@end
