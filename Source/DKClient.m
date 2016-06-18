//
//  DKClient.m
//  DirectusSDK
//
//  Created by Welling Guzman on 6/1/16.
//  Copyright (c) 2016 RANGER. All rights reserved.
//

#import "DKClient.h"

@implementation DKClient

- (id)initWithServer:(NSString *)URL accessToken:(NSString *)accessToken APIVersion:(NSString *)version
{
    self = [super init];
    if (self) {
        self.URL = URL;
        self.version = version;
        self.accessToken = accessToken;
        self.requestManager = [[DKRequestManager alloc] initWithServer:URL accessToken:accessToken APIVersion:version];
    }
    
    return self;
}

- (id)initWithServer:(NSString *)URL accessToken:(NSString *)accessToken
{
    return [self initWithServer:URL accessToken:accessToken APIVersion:@"1"];
}

- (id)requestWithPath:(NSString *)path error:(NSError **)error
{
    return [self.requestManager requestWithPath:path error:error];
}

- (void)requestAsyncWithPath:(NSString *)path success:(DKCompleteResponseBlock)success failure:(DKFailureRequestBlock)failure
{
    [self.requestManager requestAsyncWithPath:path success:success failure:failure];
}

#pragma mark -
#pragma mark Tables

- (NSArray *)fetchTablesWithError:(NSError **)error;
{
    return [self requestWithPath:TablesPath error:error];
}

- (NSDictionary *)fetchTableWithName:(NSString *)tableName error:(NSError **)error
{
    return [self requestWithPath:TableInfoPath(tableName) error:error];
}

- (NSDictionary *)fetchItemsInTable:(NSString *)tableName error:(NSError **)error
{
    return [self requestWithPath:TablesRowsPath(tableName) error:error];
}

- (NSDictionary *)fetchAItemInTable:(NSString *)tableName withRowID:(NSString *)rowID error:(NSError **)error
{
    return [self requestWithPath:TableRowPath(tableName, rowID) error:error];
}

- (NSArray *)fetchColumnsInTable:(NSString *)tableName error:(NSError **)error
{
    return [self requestWithPath:TableColumnsPath(tableName) error:error];
}

- (NSDictionary *)fetchAColumnInTable:(NSString *)tableName withColumnName:(NSString *)columnName error:(NSError **)error
{
    return [self requestWithPath:TableColumnInfoPath(tableName, columnName) error:error];
}

- (NSDictionary *)fetchPreferencesInTable:(NSString *)tableName error:(NSError **)error
{
    return [self requestWithPath:TablePreferencesPath(tableName) error:error];
}

- (void)fetchTablesWithSuccess:(DKCompleteResponseBlock)success
                       failure:(DKFailureRequestBlock)failure;
{
    [self requestAsyncWithPath:TablesPath success:success failure:failure];
}

- (void)fetchTableWithName:(NSString *)tableName
                   success:(DKCompleteResponseBlock)success
                   failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:TableInfoPath(tableName) success:success failure:failure];
}

- (void)fetchItemsInTable:(NSString *)tableName
                 success:(DKCompleteResponseBlock)success
                 failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:TablesRowsPath(tableName) success:success failure:failure];
}

- (void)fetchAItemInTable:(NSString *)tableName
               withRowID:(NSString *)rowID
                 success:(DKCompleteResponseBlock)success
                 failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:TableRowPath(tableName, rowID) success:success failure:failure];
}

- (void)fetchColumnsInTable:(NSString *)tableName
                    success:(DKCompleteResponseBlock)success
                    failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:TableColumnsPath(tableName) success:success failure:failure];
}

- (void)fetchAColumnInTable:(NSString *)tableName
             withColumnName:(NSString *)columnName
                    success:(DKCompleteResponseBlock)success
                    failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:TableColumnInfoPath(tableName, columnName) success:success failure:failure];
}

- (void)fetchPreferencesInTable:(NSString *)tableName
                        success:(DKCompleteResponseBlock)success
                        failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:TablePreferencesPath(tableName) success:success failure:failure];
}

#pragma mark -
#pragma mark Groups

- (NSDictionary *)fetchGroupsWithError:(NSError **)error
{
    return [self requestWithPath:(NSString *)GroupsPath error:error];
}

- (NSDictionary *)fetchGroupWithID:(NSUInteger *)groupID error:(NSError **)error
{
    return [self requestWithPath:GroupInfoPath(groupID) error:error];
}

- (void)fetchGroupsWithSuccess:(DKCompleteResponseBlock)success
                       failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:GroupsPath success:success failure:failure];
}

- (void)fetchGroupWithID:(NSUInteger *)groupID
                 success:(DKCompleteResponseBlock)success
                 failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:GroupInfoPath(groupID) success:success failure:failure];
}

#pragma mark Groups Privileges

- (NSArray *)fetchPrivilegesWithGroupID:(NSUInteger *)groupID error:(NSError **)error
{
    return [self requestWithPath:GroupPrivilegesPath(groupID) error:error];
}

- (void)fetchPrivilegesWithGroupID:(NSUInteger *)groupID
                           success:(DKCompleteResponseBlock)success
                           failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:GroupPrivilegesPath(groupID) success:success failure:failure];
}

#pragma mark -
#pragma mark Users

- (NSDictionary *)fetchUsersWithError:(NSError **)error
{
    return [self fetchRowsInTable:@"directus_users" error:error];
}
- (NSDictionary *)fetchUserWithID:(NSUInteger *)userID error:(NSError **)error
{
    return [self fetchARowInTable:@"directus_users"
                        withRowID:SFORMAT(@"%lu", (unsigned long)userID)
                        error:error];
}

- (void)fetchUsersWithSuccess:(DKCompleteResponseBlock)success
                      failure:(DKFailureRequestBlock)failure
{
    [self fetchRowsInTable:@"directus_users" success:success failure:failure];
}

- (void)fetchUserWithID:(NSUInteger *)userID
                          success:(DKCompleteResponseBlock)success
                          failure:(DKFailureRequestBlock)failure
{
    [self fetchARowInTable:@"directus_users" withRowID:SFORMAT(@"%lu", (unsigned long)userID) success:success failure:failure];
}

#pragma mark -
#pragma mark Files

- (NSDictionary *)fetchFilesWithError:(NSError **)error
{
    return [self requestWithPath:FilesPath error:error];
}

- (NSDictionary *)fetchFileWithID:(NSUInteger *)fileID error:(NSError **)error
{
    return [self requestWithPath:FileInfoPath(fileID) error:error];
}

- (void)fetchFilesWithSuccess:(DKCompleteResponseBlock)success
                      failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:FilesPath success:success failure:failure];
}

- (void)fetchFileWithID:(NSUInteger *)fileID
                success:(DKCompleteResponseBlock)success
                failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:FileInfoPath(fileID) success:success failure:failure];
}

#pragma mark -
#pragma mark Settings

- (NSArray *)fetchSettingsWithError:(NSError **)error
{
    return [self requestWithPath:SettingsPath error:error];
}

- (NSDictionary *)fetchSettingWithName:(NSString *)collectionName error:(NSError **)error
{
    return [self requestWithPath:SettingsCollectionPath(collectionName) error:error];
}

- (void)fetchSettingsWithSuccess:(DKCompleteResponseBlock)success
                         failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:SettingsPath success:success failure:failure];
}

- (void)fetchSettingWithName:(NSString *)collectionName
                     success:(DKCompleteResponseBlock)success
                     failure:(DKFailureRequestBlock)failure
{
    [self requestAsyncWithPath:SettingsCollectionPath(collectionName) success:success failure:failure];
}

@end
