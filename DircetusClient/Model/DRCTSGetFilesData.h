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





@protocol DRCTSGetFilesData
@end

@interface DRCTSGetFilesData : DRCTSObject


@property(nonatomic) NSNumber* _id;

@property(nonatomic) NSNumber* active;

@property(nonatomic) NSString* name;

@property(nonatomic) NSString* url;

@property(nonatomic) NSString* title;

@property(nonatomic) NSString* location;

@property(nonatomic) NSString* caption;

@property(nonatomic) NSString* type;

@property(nonatomic) NSString* charset;

@property(nonatomic) NSString* tags;

@property(nonatomic) NSNumber* width;

@property(nonatomic) NSNumber* height;

@property(nonatomic) NSNumber* size;

@property(nonatomic) NSString* embedId;

@property(nonatomic) NSNumber* user;

@property(nonatomic) NSString* dateUploaded;

@property(nonatomic) NSString* storageAdapter;

@end
