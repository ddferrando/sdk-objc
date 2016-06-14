//
//  DKRequestManager.m
//  DirectusSDK
//
//  Created by Welling Guzman on 6/1/16.
//  Copyright (c) 2016 RANGER. All rights reserved.
//

#import "DKRequestManager.h"

@implementation DKRequestManager

- (id)initWithServer:(NSString *)URL accessToken:(NSString *)accessToken APIVersion:(NSString *)version
{
    self = [super init];
    if (self) {
        self.URL = URL;
        self.accessToken = accessToken;
        self.version = version;
    }
    
    return self;
}

- (id)requestWithPath:(NSString *)path error:(NSError **)error
{
    NSString *body = [self synchronousRequestWithPath:path error:error];

    return [NSJSONSerialization JSONObjectWithData:[body dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:error];
}

- (void)requestAsyncWithPath:(NSString *)path success:(DKCompleteResponseBlock)success failure:(DKFailureRequestBlock)failure
{
    [self asynchronousRequestWithPath:path success:^(NSDictionary *headers, NSString *body) {
        NSError *error = nil;
        id response = [NSJSONSerialization JSONObjectWithData:[body dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&error];
        if (error == nil) {
            success(headers, response);
        } else {
            failure(error);
        }
        
    } failure:failure];
}

- (NSString *)synchronousRequestWithPath:(NSString *)path error:(NSError **)error
{
    STHTTPRequest *request = [self buildRequestWithPath:path];
    
    return [request startSynchronousWithError:error];
}

- (void)asynchronousRequestWithPath:(NSString *)path success:(DKCompleteResponseBlock)success failure:(DKFailureRequestBlock)failure
{
    STHTTPRequest *request = [self buildRequestWithPath:path];
    
    request.completionBlock = success;
    request.errorBlock = failure;
    
    return [request startAsynchronous];
}

- (STHTTPRequest *)buildRequestWithPath:(NSString *)path
{
    return [STHTTPRequest requestWithURLString:[self buildServerURLWithPath:path]];
}

- (NSString *)buildServerURLWithPath: (NSString *)path
{
    return [NSString stringWithFormat:URLFormat, self.URL, self.version, path, self.accessToken];
}

@end
