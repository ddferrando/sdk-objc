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


#import "DRCTSGetPrivilegesData.h"
#import "DRCTSGetTablesMeta.h"
@protocol DRCTSGetPrivilegesData;
@class DRCTSGetPrivilegesData;
@protocol DRCTSGetTablesMeta;
@class DRCTSGetTablesMeta;



@protocol DRCTSGetPrivileges
@end

@interface DRCTSGetPrivileges : DRCTSObject


@property(nonatomic) DRCTSGetTablesMeta* meta;

@property(nonatomic) NSArray<DRCTSGetPrivilegesData>* data;

@end
