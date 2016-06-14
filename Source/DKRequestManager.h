//
//  DKRequestManager.h
//  DirectusSDK
//
//  Created by Welling Guzman on 6/1/16.
//  Copyright (c) 2016 RANGER. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "STHTTPRequest.h"

typedef void(^DKCompleteResponseBlock)(NSDictionary *headers, id response);
typedef void(^DKFailureRequestBlock)(NSError *error);

// [server-url]/api/[version]/[path]?access_token=[token]
static NSString *URLFormat = @"%@/api/%@%@?access_token=%@";

@interface DKRequestManager : NSObject

- (id)initWithServer:(NSString *)URL accessToken:(NSString *)accessToken APIVersion:(NSString *)version;

- (id)requestWithPath:(NSString *)path error:(NSError**)error;
- (void)requestAsyncWithPath:(NSString *)path success:(DKCompleteResponseBlock)success failure:(DKFailureRequestBlock)failure;

- (NSString *)synchronousRequestWithPath:(NSString *)path error:(NSError **)error;
- (STHTTPRequest *)buildRequestWithPath:(NSString *)path;
- (NSString *)buildServerURLWithPath: (NSString *)path;


@property (nonatomic, assign) NSString *accessToken;
@property (nonatomic, assign) NSString *URL;
@property (nonatomic, assign) NSString *version;

@end
