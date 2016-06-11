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

- (NSDictionary *)fetchRowsInTable:(NSString *)tableName error:(NSError **)error
{
    return [self requestWithPath:TablesRowsPath(tableName) error:error];
}

- (NSDictionary *)fetchARowInTable:(NSString *)tableName withRowID:(NSString *)rowID error:(NSError **)error
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

#pragma mark Groups Privileges

- (NSArray *)fetchPrivilegesWithGroupID:(NSUInteger *)groupID error:(NSError **)error
{
    return [self requestWithPath:GroupPrivilegesPath(groupID) error:error];
}

#pragma mark -
#pragma mark Files

- (NSDictionary *)fetchFilesWithError:(NSError **)error
{
    return [self.requestManager requestWithPath:@"/files" error:error];
}

- (NSDictionary *)fetchFileWithID:(NSUInteger *)fileID error:(NSError **)error
{
    return [self requestWithPath:FileInfoPath(fileID) error:error];
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

@end
