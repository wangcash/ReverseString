//
//  main.m
//  ReverseString
//
//  Created by Cash on 13-3-22.
//  Copyright (c) 2013年 imwangwei.cn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Reverse.h"

int main(int argc, const char * argv[])
{

  @autoreleasepool {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"ss.SSSS"];
    
    NSString *string = @"abcdefghijklmnopqrstuvwxyz";
    
//    NSLog(@"string:%@", string);
    
    NSLog(@"%@", [dateFormatter stringFromDate:[NSDate date]]);
    NSString *reversed = [string stringByReversed];
    NSLog(@"%@", [dateFormatter stringFromDate:[NSDate date]]);
    
    NSLog(@"reversed string:%@", reversed);
    
    [dateFormatter release];
  }
    return 0;
}

