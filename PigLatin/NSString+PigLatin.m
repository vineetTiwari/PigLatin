//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by Vineet Tiwari on 2015-05-10.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)pigLatinization {

  NSArray *inputWords = [self componentsSeparatedByString:@" "];

  NSMutableArray *outputWords = [NSMutableArray new];

  NSCharacterSet *vowelSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];

  for (NSString *word in inputWords) {

    NSRange range = [word rangeOfCharacterFromSet:vowelSet];

    if (range.location == 0) {
      NSString *outputWord = [NSString stringWithFormat:@"%@way", word];
      [outputWords addObject:outputWord];
    }
    else {
      NSUInteger startLength = range.location ;
      NSRange startRange = NSMakeRange(0, startLength);
      NSString *start = [word substringWithRange:startRange];

      NSUInteger endLength = word.length - range.location;
      NSRange endRange = NSMakeRange(range.location, endLength);
      NSString *end = [word substringWithRange:endRange];

      NSString *outputWord = [NSString stringWithFormat:@"%@%@ay", end, start];
      [outputWords addObject:outputWord];
    }
  }

  return [outputWords componentsJoinedByString:@" "];
}




@end