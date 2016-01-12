//
//  ZBHttpManager.h
//  yoohooo
//
//  Created by Never on 15/12/17.
//  Copyright © 2015年 yoohooo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

typedef void (^returnBlockType)(NSError *error,id obj);

@interface ZBHttpManager : NSObject

+(void)requestWithURL:(NSString *)url andParamenters:(NSDictionary *)paramenters completion:(returnBlockType)block;


@end
