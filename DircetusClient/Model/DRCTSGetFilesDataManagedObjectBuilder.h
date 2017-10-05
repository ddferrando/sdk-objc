#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


#import "DRCTSGetFilesDataManagedObject.h"
#import "DRCTSGetFilesData.h"

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


@interface DRCTSGetFilesDataManagedObjectBuilder : NSObject



-(DRCTSGetFilesDataManagedObject*)createNewDRCTSGetFilesDataManagedObjectInContext:(NSManagedObjectContext*)context;

-(DRCTSGetFilesDataManagedObject*)DRCTSGetFilesDataManagedObjectFromDRCTSGetFilesData:(DRCTSGetFilesData*)object context:(NSManagedObjectContext*)context;

-(void)updateDRCTSGetFilesDataManagedObject:(DRCTSGetFilesDataManagedObject*)object withDRCTSGetFilesData:(DRCTSGetFilesData*)object2;

-(DRCTSGetFilesData*)DRCTSGetFilesDataFromDRCTSGetFilesDataManagedObject:(DRCTSGetFilesDataManagedObject*)obj;

-(void)updateDRCTSGetFilesData:(DRCTSGetFilesData*)object withDRCTSGetFilesDataManagedObject:(DRCTSGetFilesDataManagedObject*)object2;

@end
