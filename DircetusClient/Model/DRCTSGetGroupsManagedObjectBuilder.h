#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

#import "DRCTSGetGroupsDataManagedObjectBuilder.h"
#import "DRCTSGetTablesMetaManagedObjectBuilder.h"

#import "DRCTSGetGroupsManagedObject.h"
#import "DRCTSGetGroups.h"

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


@interface DRCTSGetGroupsManagedObjectBuilder : NSObject

@property (nonatomic, strong) DRCTSGetTablesMetaManagedObjectBuilder * metaBuilder;
@property (nonatomic, strong) DRCTSGetGroupsDataManagedObjectBuilder * dataBuilder;


-(DRCTSGetGroupsManagedObject*)createNewDRCTSGetGroupsManagedObjectInContext:(NSManagedObjectContext*)context;

-(DRCTSGetGroupsManagedObject*)DRCTSGetGroupsManagedObjectFromDRCTSGetGroups:(DRCTSGetGroups*)object context:(NSManagedObjectContext*)context;

-(void)updateDRCTSGetGroupsManagedObject:(DRCTSGetGroupsManagedObject*)object withDRCTSGetGroups:(DRCTSGetGroups*)object2;

-(DRCTSGetGroups*)DRCTSGetGroupsFromDRCTSGetGroupsManagedObject:(DRCTSGetGroupsManagedObject*)obj;

-(void)updateDRCTSGetGroups:(DRCTSGetGroups*)object withDRCTSGetGroupsManagedObject:(DRCTSGetGroupsManagedObject*)object2;

@end
