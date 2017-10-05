#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

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


#import "DRCTSGetBookmarksDataManagedObject.h"
#import "DRCTSGetBookmarksMetaManagedObject.h"


NS_ASSUME_NONNULL_BEGIN

@interface DRCTSGetBookmarksManagedObject : NSManagedObject


@property (nullable, nonatomic, retain) DRCTSGetBookmarksMetaManagedObject* meta;

@property (nullable, nonatomic, retain) NSOrderedSet<DRCTSGetBookmarksDataManagedObject*>* data;
@end

@interface DRCTSGetBookmarksManagedObject (GeneratedAccessors)
- (void)addDataObject:(DRCTSGetBookmarksDataManagedObject *)value;
- (void)removeDataObject:(DRCTSGetBookmarksDataManagedObject *)value;
- (void)addData:(NSOrderedSet<DRCTSGetBookmarksDataManagedObject*> *)values;
- (void)removeData:(NSOrderedSet<DRCTSGetBookmarksDataManagedObject*> *)values;

@end


NS_ASSUME_NONNULL_END
