//
//  ZBHttpManager.m
//  yoohooo
//
//  Created by Never on 15/12/17.
//  Copyright © 2015年 yoohooo. All rights reserved.
//

#import "ZBHttpManager.h"

@implementation ZBHttpManager

+(void)requestWithURL:(NSString *)url andParamenters:(NSDictionary *)paramenters completion:(returnBlockType)block{

    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    [manager POST:url parameters:paramenters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        block(nil,responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        block(error,nil);
    }];
}

@end
