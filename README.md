# DircetusClient

API for directus.io

This ObjC package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.1
- Package version: 
- Build package: io.swagger.codegen.languages.ObjcClientCodegen

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'DircetusClient', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/DircetusClient) and then add the following to the Podfile:

```ruby
pod 'DircetusClient', :path => 'Vendor/DircetusClient'
```

### Usage

Import the following:

```objc
#import <DircetusClient/DRCTSApiClient.h>
#import <DircetusClient/DRCTSDefaultConfiguration.h>
// load models
#import <DircetusClient/DRCTSGetActivity.h>
#import <DircetusClient/DRCTSGetActivityData.h>
#import <DircetusClient/DRCTSGetActivityMeta.h>
#import <DircetusClient/DRCTSGetBookmark.h>
#import <DircetusClient/DRCTSGetBookmarks.h>
#import <DircetusClient/DRCTSGetBookmarksData.h>
#import <DircetusClient/DRCTSGetBookmarksMeta.h>
#import <DircetusClient/DRCTSGetFile.h>
#import <DircetusClient/DRCTSGetFiles.h>
#import <DircetusClient/DRCTSGetFilesData.h>
#import <DircetusClient/DRCTSGetGroup.h>
#import <DircetusClient/DRCTSGetGroups.h>
#import <DircetusClient/DRCTSGetGroupsData.h>
#import <DircetusClient/DRCTSGetGroupsDataData.h>
#import <DircetusClient/DRCTSGetGroupsDataMeta.h>
#import <DircetusClient/DRCTSGetMessage.h>
#import <DircetusClient/DRCTSGetMessages.h>
#import <DircetusClient/DRCTSGetMessagesData.h>
#import <DircetusClient/DRCTSGetMessagesMeta.h>
#import <DircetusClient/DRCTSGetMessagesResponses.h>
#import <DircetusClient/DRCTSGetPreferences.h>
#import <DircetusClient/DRCTSGetPreferencesData.h>
#import <DircetusClient/DRCTSGetPrivileges.h>
#import <DircetusClient/DRCTSGetPrivilegesData.h>
#import <DircetusClient/DRCTSGetPrivilegesForTable.h>
#import <DircetusClient/DRCTSGetSettings.h>
#import <DircetusClient/DRCTSGetSettingsData.h>
#import <DircetusClient/DRCTSGetSettingsDataFiles.h>
#import <DircetusClient/DRCTSGetSettingsDataGlobal.h>
#import <DircetusClient/DRCTSGetSettingsFor.h>
#import <DircetusClient/DRCTSGetSettingsForMeta.h>
#import <DircetusClient/DRCTSGetTable.h>
#import <DircetusClient/DRCTSGetTableColumn.h>
#import <DircetusClient/DRCTSGetTableColumnData.h>
#import <DircetusClient/DRCTSGetTableColumns.h>
#import <DircetusClient/DRCTSGetTableColumnsData.h>
#import <DircetusClient/DRCTSGetTableData.h>
#import <DircetusClient/DRCTSGetTableRow.h>
#import <DircetusClient/DRCTSGetTableRows.h>
#import <DircetusClient/DRCTSGetTableRowsData.h>
#import <DircetusClient/DRCTSGetTableRowsMeta.h>
#import <DircetusClient/DRCTSGetTables.h>
#import <DircetusClient/DRCTSGetTablesData.h>
#import <DircetusClient/DRCTSGetTablesMeta.h>
// load API classes for accessing endpoints
#import <DircetusClient/DRCTSActivityApi.h>
#import <DircetusClient/DRCTSBookmarksApi.h>
#import <DircetusClient/DRCTSFilesApi.h>
#import <DircetusClient/DRCTSGroupsApi.h>
#import <DircetusClient/DRCTSMessagesApi.h>
#import <DircetusClient/DRCTSPreferencesApi.h>
#import <DircetusClient/DRCTSSettingsApi.h>
#import <DircetusClient/DRCTSTablesApi.h>
#import <DircetusClient/DRCTSUtilsApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

DRCTSDefaultConfiguration *apiConfig = [DRCTSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api_key)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"access_token"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"access_token"];

[apiConfig setHost:@"myinstance.directus.io"];


DRCTSActivityApi *apiInstance = [[DRCTSActivityApi alloc] init];

// Returns activity
[apiInstance getActivityWithCompletionHandler: 
              ^(DRCTSGetActivity* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *https://myinstance.directus.io/api/1.1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DRCTSActivityApi* | [**getActivity**](docs/DRCTSActivityApi.md#getactivity) | **GET** /activity | Returns activity
*DRCTSBookmarksApi* | [**addBookmark**](docs/DRCTSBookmarksApi.md#addbookmark) | **POST** /bookmarks | Create a column in a given table
*DRCTSBookmarksApi* | [**deleteBookmark**](docs/DRCTSBookmarksApi.md#deletebookmark) | **DELETE** /bookmarks/{bookmarkId} | Deletes specific bookmark
*DRCTSBookmarksApi* | [**getBookmark**](docs/DRCTSBookmarksApi.md#getbookmark) | **GET** /bookmarks/{bookmarkId} | Returns specific bookmark
*DRCTSBookmarksApi* | [**getBookmarks**](docs/DRCTSBookmarksApi.md#getbookmarks) | **GET** /bookmarks | Returns bookmarks
*DRCTSBookmarksApi* | [**getBookmarksSelf**](docs/DRCTSBookmarksApi.md#getbookmarksself) | **GET** /bookmarks/self | Returns bookmarks of current user
*DRCTSFilesApi* | [**createFile**](docs/DRCTSFilesApi.md#createfile) | **POST** /files | Creates file
*DRCTSFilesApi* | [**getFile**](docs/DRCTSFilesApi.md#getfile) | **GET** /files/{fileId} | Returns specific file by id
*DRCTSFilesApi* | [**getFiles**](docs/DRCTSFilesApi.md#getfiles) | **GET** /files | Returns files
*DRCTSFilesApi* | [**updateFile**](docs/DRCTSFilesApi.md#updatefile) | **PUT** /files/{fileId} | Creates file
*DRCTSGroupsApi* | [**addGroup**](docs/DRCTSGroupsApi.md#addgroup) | **POST** /groups | Add a new group
*DRCTSGroupsApi* | [**addPrivilege**](docs/DRCTSGroupsApi.md#addprivilege) | **POST** /privileges/{groupId} | Create new table privileges for the specified user group
*DRCTSGroupsApi* | [**getGroup**](docs/DRCTSGroupsApi.md#getgroup) | **GET** /groups/{groupId} | Returns specific group
*DRCTSGroupsApi* | [**getGroups**](docs/DRCTSGroupsApi.md#getgroups) | **GET** /groups | Returns groups
*DRCTSGroupsApi* | [**getPrivileges**](docs/DRCTSGroupsApi.md#getprivileges) | **GET** /privileges/{groupId} | Returns group privileges
*DRCTSGroupsApi* | [**getPrivilegesForTable**](docs/DRCTSGroupsApi.md#getprivilegesfortable) | **GET** /privileges/{groupId}/{tableNameOrPrivilegeId} | Returns group privileges by tableName
*DRCTSGroupsApi* | [**updatePrivileges**](docs/DRCTSGroupsApi.md#updateprivileges) | **PUT** /privileges/{groupId}/{tableNameOrPrivilegeId} | Update privileges by privilegeId
*DRCTSMessagesApi* | [**getMessage**](docs/DRCTSMessagesApi.md#getmessage) | **GET** /messages/{messageId} | Returns specific message
*DRCTSMessagesApi* | [**getMessages**](docs/DRCTSMessagesApi.md#getmessages) | **GET** /messages/self | Returns messages
*DRCTSPreferencesApi* | [**getPreferences**](docs/DRCTSPreferencesApi.md#getpreferences) | **GET** /tables/{tableId}/preferences | Returns table preferences
*DRCTSPreferencesApi* | [**updatePreferences**](docs/DRCTSPreferencesApi.md#updatepreferences) | **PUT** /tables/{tableId}/preferences | Update table preferences
*DRCTSSettingsApi* | [**getSettings**](docs/DRCTSSettingsApi.md#getsettings) | **GET** /settings | Returns settings
*DRCTSSettingsApi* | [**getSettingsFor**](docs/DRCTSSettingsApi.md#getsettingsfor) | **GET** /settings/{collectionName} | Returns settings for collection
*DRCTSSettingsApi* | [**updateSettings**](docs/DRCTSSettingsApi.md#updatesettings) | **PUT** /settings/{collectionName} | Update settings
*DRCTSTablesApi* | [**addColumn**](docs/DRCTSTablesApi.md#addcolumn) | **POST** /tables/{tableId}/columns | Create a column in a given table
*DRCTSTablesApi* | [**addRow**](docs/DRCTSTablesApi.md#addrow) | **POST** /tables/{tableId}/rows | Add a new row
*DRCTSTablesApi* | [**addTable**](docs/DRCTSTablesApi.md#addtable) | **POST** /tables | Add a new table
*DRCTSTablesApi* | [**deleteColumn**](docs/DRCTSTablesApi.md#deletecolumn) | **DELETE** /tables/{tableId}/columns/{columnName} | Delete row
*DRCTSTablesApi* | [**deleteRow**](docs/DRCTSTablesApi.md#deleterow) | **DELETE** /tables/{tableId}/rows/{rowId} | Delete row
*DRCTSTablesApi* | [**deleteTable**](docs/DRCTSTablesApi.md#deletetable) | **DELETE** /tables/{tableId} | Delete Table
*DRCTSTablesApi* | [**getTable**](docs/DRCTSTablesApi.md#gettable) | **GET** /tables/{tableId} | Returns specific table
*DRCTSTablesApi* | [**getTableColumn**](docs/DRCTSTablesApi.md#gettablecolumn) | **GET** /tables/{tableId}/columns/{columnName} | Returns specific table column
*DRCTSTablesApi* | [**getTableColumns**](docs/DRCTSTablesApi.md#gettablecolumns) | **GET** /tables/{tableId}/columns | Returns table columns
*DRCTSTablesApi* | [**getTableRow**](docs/DRCTSTablesApi.md#gettablerow) | **GET** /tables/{tableId}/rows/{rowId} | Returns specific table row
*DRCTSTablesApi* | [**getTableRows**](docs/DRCTSTablesApi.md#gettablerows) | **GET** /tables/{tableId}/rows | Returns table rows
*DRCTSTablesApi* | [**getTables**](docs/DRCTSTablesApi.md#gettables) | **GET** /tables | Returns tables
*DRCTSTablesApi* | [**updateColumn**](docs/DRCTSTablesApi.md#updatecolumn) | **PUT** /tables/{tableId}/columns/{columnName} | Update column
*DRCTSTablesApi* | [**updateRow**](docs/DRCTSTablesApi.md#updaterow) | **PUT** /tables/{tableId}/rows/{rowId} | Update row
*DRCTSUtilsApi* | [**getHash**](docs/DRCTSUtilsApi.md#gethash) | **POST** /hash | Get a hashed value
*DRCTSUtilsApi* | [**getRandom**](docs/DRCTSUtilsApi.md#getrandom) | **POST** /random | Returns random alphanumeric string


## Documentation For Models

 - [DRCTSGetActivity](docs/DRCTSGetActivity.md)
 - [DRCTSGetActivityData](docs/DRCTSGetActivityData.md)
 - [DRCTSGetActivityMeta](docs/DRCTSGetActivityMeta.md)
 - [DRCTSGetBookmark](docs/DRCTSGetBookmark.md)
 - [DRCTSGetBookmarks](docs/DRCTSGetBookmarks.md)
 - [DRCTSGetBookmarksData](docs/DRCTSGetBookmarksData.md)
 - [DRCTSGetBookmarksMeta](docs/DRCTSGetBookmarksMeta.md)
 - [DRCTSGetFile](docs/DRCTSGetFile.md)
 - [DRCTSGetFiles](docs/DRCTSGetFiles.md)
 - [DRCTSGetFilesData](docs/DRCTSGetFilesData.md)
 - [DRCTSGetGroup](docs/DRCTSGetGroup.md)
 - [DRCTSGetGroups](docs/DRCTSGetGroups.md)
 - [DRCTSGetGroupsData](docs/DRCTSGetGroupsData.md)
 - [DRCTSGetGroupsDataData](docs/DRCTSGetGroupsDataData.md)
 - [DRCTSGetGroupsDataMeta](docs/DRCTSGetGroupsDataMeta.md)
 - [DRCTSGetMessage](docs/DRCTSGetMessage.md)
 - [DRCTSGetMessages](docs/DRCTSGetMessages.md)
 - [DRCTSGetMessagesData](docs/DRCTSGetMessagesData.md)
 - [DRCTSGetMessagesMeta](docs/DRCTSGetMessagesMeta.md)
 - [DRCTSGetMessagesResponses](docs/DRCTSGetMessagesResponses.md)
 - [DRCTSGetPreferences](docs/DRCTSGetPreferences.md)
 - [DRCTSGetPreferencesData](docs/DRCTSGetPreferencesData.md)
 - [DRCTSGetPrivileges](docs/DRCTSGetPrivileges.md)
 - [DRCTSGetPrivilegesData](docs/DRCTSGetPrivilegesData.md)
 - [DRCTSGetPrivilegesForTable](docs/DRCTSGetPrivilegesForTable.md)
 - [DRCTSGetSettings](docs/DRCTSGetSettings.md)
 - [DRCTSGetSettingsData](docs/DRCTSGetSettingsData.md)
 - [DRCTSGetSettingsDataFiles](docs/DRCTSGetSettingsDataFiles.md)
 - [DRCTSGetSettingsDataGlobal](docs/DRCTSGetSettingsDataGlobal.md)
 - [DRCTSGetSettingsFor](docs/DRCTSGetSettingsFor.md)
 - [DRCTSGetSettingsForMeta](docs/DRCTSGetSettingsForMeta.md)
 - [DRCTSGetTable](docs/DRCTSGetTable.md)
 - [DRCTSGetTableColumn](docs/DRCTSGetTableColumn.md)
 - [DRCTSGetTableColumnData](docs/DRCTSGetTableColumnData.md)
 - [DRCTSGetTableColumns](docs/DRCTSGetTableColumns.md)
 - [DRCTSGetTableColumnsData](docs/DRCTSGetTableColumnsData.md)
 - [DRCTSGetTableData](docs/DRCTSGetTableData.md)
 - [DRCTSGetTableRow](docs/DRCTSGetTableRow.md)
 - [DRCTSGetTableRows](docs/DRCTSGetTableRows.md)
 - [DRCTSGetTableRowsData](docs/DRCTSGetTableRowsData.md)
 - [DRCTSGetTableRowsMeta](docs/DRCTSGetTableRowsMeta.md)
 - [DRCTSGetTables](docs/DRCTSGetTables.md)
 - [DRCTSGetTablesData](docs/DRCTSGetTablesData.md)
 - [DRCTSGetTablesMeta](docs/DRCTSGetTablesMeta.md)


## Documentation For Authorization


## api_key

- **Type**: API key
- **API key parameter name**: access_token
- **Location**: URL query string


## Author



