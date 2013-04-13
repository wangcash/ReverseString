//
//  NSString+Reverse.m
//  ReverseString
//
//  Created by Cash on 13-3-22.
//  Copyright (c) 2013年 imwangwei.cn. All rights reserved.
//

#import "NSString+Reverse.h"

@implementation NSString (Reverse)

//方法1
- (NSString *)stringByReversed_
{
  NSMutableString *s = [NSMutableString string];
  
  for (NSUInteger i=self.length; i>0; i--) {
    [s appendString:[self substringWithRange:NSMakeRange(i-1, 1)]];
  }
  
  return s;
}

//方法2
- (NSString *)stringByReversed__
{
  NSUInteger i = 0;
  NSUInteger j = self.length - 1;
  NSString *temp;
  NSString *newString = self;
  while (i < j) {
    temp = [newString substringWithRange:NSMakeRange(i, 1)];
    newString = [newString stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[self substringWithRange:NSMakeRange(j, 1)]];
    newString = [newString stringByReplacingCharactersInRange:NSMakeRange(j, 1) withString:temp];
    i ++;
    j --;
  }
  return newString;
}

//方法3
- (NSString *)stringByReversed___
{
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

//方法4
- (NSString *)stringByReversed
{
  uint64_t i = 0;
  uint64_t j = self.length - 1;
  unichar *characters = malloc(sizeof([self characterAtIndex:0]) * self.length);
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
