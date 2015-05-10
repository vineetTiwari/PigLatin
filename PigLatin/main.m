//
//  main.m
//  PigLatin
//
//  Created by Vineet Tiwari on 2015-05-10.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
      // insert code here...
    char userInput[100];


    while (TRUE) {
      printf("Convert things to Pig Latin\n");
      fgets (userInput, 100, stdin);




      NSString *userInputString = [[NSString alloc] initWithUTF8String:userInput];

      NSString* output = [userInputString pigLatinization];

      NSLog(@"%@", output);
    }
  }

  return 0;
}
