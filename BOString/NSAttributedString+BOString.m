//
//  NSAttributedString+BOString.m
//  BOStringDemo
//
//  Created by Pavel Mazurin on 29/11/13.
//  Copyright (c) 2013 Home. All rights reserved.
//

#import "NSAttributedString+BOString.h"
#import "BOStringMaker.h"

@implementation NSAttributedString (BOString)

- (NSAttributedString *)makeString:(void(^)(BOStringMaker *make))block
{
    BOStringMaker *stringMaker = [[BOStringMaker alloc] initWithAttributedString:self];
    if (block)
    {
        block(stringMaker);
    }
    
    return [stringMaker makeString];
}

@end