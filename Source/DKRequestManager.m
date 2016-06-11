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

- (NSString *)synchronousRequestWithPath:(NSString *)path error:(NSError **)error
{
    STHTTPRequest *request = [self buildSynchronousRequestWithPath:path error:error];
    
    return [request startSynchronousWithError:error];
}

- (STHTTPRequest *)buildSynchronousRequestWithPath:(NSString *)path error:(NSError **)error
{
    return [STHTTPRequest requestWithURLString:[self buildServerURLWithPath:path]];
}

- (NSString *)buildServerURLWithPath: (NSString *)path
{
    return [NSString stringWithFormat:URLFormat, self.URL, self.version, path, self.accessToken];
}

@end
