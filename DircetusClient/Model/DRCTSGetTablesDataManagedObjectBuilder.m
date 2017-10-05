

#import "DRCTSGetTablesDataManagedObjectBuilder.h"

/**
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen
* Do not edit the class manually.
*/

@implementation DRCTSGetTablesDataManagedObjectBuilder

-(instancetype)init {
    self = [super init];
    if (self != nil) {
    }
    return self;
}

-(DRCTSGetTablesDataManagedObject*)createNewDRCTSGetTablesDataManagedObjectInContext:(NSManagedObjectContext*)context {
    DRCTSGetTablesDataManagedObject *managedObject = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([DRCTSGetTablesDataManagedObject class]) inManagedObjectContext:context];
    return managedObject;
}

-(DRCTSGetTablesDataManagedObject*)DRCTSGetTablesDataManagedObjectFromDRCTSGetTablesData:(DRCTSGetTablesData*)object context:(NSManagedObjectContext*)context {
    DRCTSGetTablesDataManagedObject* newDRCTSGetTablesData = [self createNewDRCTSGetTablesDataManagedObjectInContext:context];
    [self updateDRCTSGetTablesDataManagedObject:newDRCTSGetTablesData withDRCTSGetTablesData:object];
    return newDRCTSGetTablesData;
}

-(void)updateDRCTSGetTablesDataManagedObject:(DRCTSGetTablesDataManagedObject*)managedObject withDRCTSGetTablesData:(DRCTSGetTablesData*)object {
    if(!managedObject || !object) {
        return;
    }
    NSManagedObjectContext* context = managedObject.managedObjectContext;
    managedObject.name = [object.name copy];

}

-(DRCTSGetTablesData*)DRCTSGetTablesDataFromDRCTSGetTablesDataManagedObject:(DRCTSGetTablesDataManagedObject*)obj {
    if(!obj) {
        return nil;
    }
    DRCTSGetTablesData* newDRCTSGetTablesData = [[DRCTSGetTablesData alloc] init];
    [self updateDRCTSGetTablesData:newDRCTSGetTablesData withDRCTSGetTablesDataManagedObject:obj];
    return newDRCTSGetTablesData;
}

-(void)updateDRCTSGetTablesData:(DRCTSGetTablesData*)newDRCTSGetTablesData withDRCTSGetTablesDataManagedObject:(DRCTSGetTablesDataManagedObject*)obj {
    newDRCTSGetTablesData.name = [obj.name copy];
}

@end
