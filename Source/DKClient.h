//
//  DKClient.h
//  DirectusSDK
//
//  Created by Welling Guzman on 6/1/16.
//  Copyright (c) 2016 RANGER. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DKRequestManager.h"


#define SFORMAT(format, ...) ([NSString stringWithFormat:format, __VA_ARGS__])

//
// Endpoints Path
//

// /tables
#define TablesPath  @"/tables"
// /tables/:tableName
#define TableInfoPath(tableName) SFORMAT(@"/tables/%@", tableName)
// [NSString stringWithFormat:@"/tables/%@", tableName])
// /tables/:tableName/rows
#define TablesRowsPath(tableName) SFORMAT(@"/tables/%@/rows", tableName)
// /tables/:tableName/rows/:rowID
#define TableRowPath(tableName, rowID) SFORMAT(@"/tables/%@/rows/%@", tableName, rowID)
// /tables/:tableName/columns
#define TableColumnsPath(tableName) SFORMAT(@"/tables/%@/columns", tableName)
// /tables/:tableName/columns/:columnName
#define TableColumnInfoPath(tableName, columnName) SFORMAT(@"/tables/%@/columns/%@", tableName, columnName)
// /tables/:tableName/preferences
#define TablePreferencesPath(tableName) SFORMAT(@"/tables/%@/preferences", tableName)
// /groups
#define GroupsPath @"/groups"
// /groups/:groupID
#define GroupInfoPath(groupID) SFORMAT(@"/groups/%lu", (unsigned long)groupID)
// /groups/privileges/:groupID
#define GroupPrivilegesPath(groupID) SFORMAT(@"/privileges/%lu", (unsigned long)groupID)
// /files
#define FilesPath @"/files"
// /files/:fileID
#define FileInfoPath(fileID) SFORMAT(@"/files/%lu", (unsigned long)fileID)
// /settings
#define SettingsPath @"/settings"
// /settings/:collectionName
#define SettingsCollectionPath(collectionName) SFORMAT(@"/settings/%@", collectionName)


@interface DKClient : NSObject

#pragma mark -
#pragma mark Initialization

- (id)initWithServer:(NSString *)URL accessToken:(NSString *)accessToken;
- (id)initWithServer:(NSString *)URL accessToken:(NSString *)accessToken APIVersion:(NSString *)version;

#pragma mark -
#pragma mark Tables

- (NSArray *)fetchTablesWithError:(NSError **)error;
- (NSDictionary *)fetchTableWithName:(NSString *)tableName error:(NSError **)error;
- (NSDictionary *)fetchRowsInTable:(NSString *)tableName error:(NSError **)error;
- (NSDictionary *)fetchARowInTable:(NSString *)tableName withRowID:(NSString *)rowID error:(NSError **)error;
- (NSArray *)fetchColumnsInTable:(NSString *)tableName error:(NSError **)error;
- (NSDictionary *)fetchAColumnInTable:(NSString *)tableName withColumnName:(NSString *)columnName error:(NSError **)error;
- (NSDictionary *)fetchPreferencesInTable:(NSString *)tableName error:(NSError **)error;

#pragma mark -
#pragma mark Groups

- (NSDictionary *)fetchGroupsWithError:(NSError **)error;
- (NSDictionary *)fetchGroupWithID:(NSUInteger *)groupID error:(NSError **)error;

#pragma mark Groups Privileges

- (NSArray *)fetchPrivilegesWithGroupID:(NSUInteger *)groupID error:(NSError **)error;

#pragma mark -
#pragma mark Users

- (NSDictionary *)fetchUsersWithError:(NSError **)error;
- (NSDictionary *)fetchUserWithID:(NSUInteger *)userID error:(NSError **)error;

#pragma mark -
#pragma mark Files

- (NSDictionary *)fetchFilesWithError:(NSError **)error;
- (NSDictionary *)fetchFileWithID:(NSUInteger *)fileID error:(NSError **)error;

#pragma mark -
#pragma mark Settings

- (NSArray *)fetchSettingsWithError:(NSError **)error;
- (NSDictionary *)fetchSettingWithName:(NSString *)collectionName error:(NSError **)error;

#pragma mark -

- (id)requestWithPath:(NSString *)path error:(NSError **)error;

#pragma mark -

@property (nonatomic, assign) NSString *URL;
@property (nonatomic, assign) NSString *version;
@property (nonatomic, assign) NSString *accessToken;
@property (nonatomic, retain) DKRequestManager *requestManager;

@end
