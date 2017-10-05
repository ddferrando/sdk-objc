#import <Foundation/Foundation.h>
#import "DRCTSObject.h"

/**
* directus.io
* API for directus.io
*
* OpenAPI spec version: 1.1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/





@protocol DRCTSGetMessagesMeta
@end

@interface DRCTSGetMessagesMeta : DRCTSObject


@property(nonatomic) NSNumber* read;

@property(nonatomic) NSNumber* unread;

@property(nonatomic) NSNumber* total;

@property(nonatomic) NSNumber* maxId;

@property(nonatomic) NSString* type;

@property(nonatomic) NSString* table;

@end
