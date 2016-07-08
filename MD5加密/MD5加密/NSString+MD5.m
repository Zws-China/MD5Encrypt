//
//  NSString+MD5.m
//  MD5加密
//
//  Created by iMac on 16/7/8.
//  Copyright © 2016年 Sinfotek. All rights reserved.
//

#import "NSString+MD5.h"

@implementation NSString (MD5)



+ (NSString *)MD5Encrypt:(NSString*)input
{
    
    CC_MD5_CTX md5;
    CC_MD5_Init (&md5);
    CC_MD5_Update (&md5, [input UTF8String], (CC_LONG) [input length]);
    
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5_Final (digest, &md5);
    NSString *s = [NSString stringWithFormat: @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                   digest[0],  digest[1],
                   digest[2],  digest[3],
                   digest[4],  digest[5],
                   digest[6],  digest[7],
                   digest[8],  digest[9],
                   digest[10], digest[11],
                   digest[12], digest[13],
                   digest[14], digest[15]];
    
    return s;
    
}



@end
