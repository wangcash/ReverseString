//
//  NSString+Reverse.m
//  ReverseString
//
//  Created by Cash on 13-3-22.
//  Copyright (c) 2013年 imwangwei.cn. All rights reserved.
//

#import "NSString+Reverse.h"

@implementation NSString (Reverse)

//- (NSString *)stringByReversed
//{
//  NSMutableString *s = [NSMutableString string];
//  
//  for (NSUInteger i=self.length; i>0; i--) {
//    [s appendString:[self substringWithRange:NSMakeRange(i-1, 1)]];
//  }
//  
//  return s;
//}

//- (NSString *)stringByReversed
//{
//  NSUInteger i = 0;
//  NSUInteger j = self.length - 1;
//  NSString *temp;
//  NSString *newString = self;
//  while (i < j) {
//    temp = [newString substringWithRange:NSMakeRange(i, 1)];
//    newString = [newString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[self substringWithRange:NSMakeRange(j, 1)]];
//    newString = [newString stringByReplacingCharactersInRange:NSMakeRange(j, 1) withString:temp];
//    i ++;
//    j --;
//  }
//  return newString;
//}

- (NSString *)stringByReversed{
  NSUInteger i = 0;
  NSUInteger j = self.length - 1;
  unichar characters[self.length];
  while (i < j) {
    characters[j] = [self characterAtIndex:i];
    characters[i] = [self characterAtIndex:j];
    i ++;
    j --;
  }
  if(i == j)
    characters[i] = [self characterAtIndex:i];
  return [NSString stringWithCharacters:characters length:self.length];
}

@end
