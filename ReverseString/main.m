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
    
//    NSLog(@"s:%@", string);
    
    
    NSLog(@"S %@", [dateFormatter stringFromDate:[NSDate date]]);
    NSString *reversed = [string stringByReversed];
    NSLog(@"E %@", [dateFormatter stringFromDate:[NSDate date]]);
    
    [dateFormatter release];
    
    
//    NSLog(@"s:%@", reversed);
    
  }
    return 0;
}

