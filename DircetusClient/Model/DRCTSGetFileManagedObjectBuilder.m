

#import "DRCTSGetFileManagedObjectBuilder.h"

/**
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen
* Do not edit the class manually.
*/

@implementation DRCTSGetFileManagedObjectBuilder

-(instancetype)init {
    self = [super init];
    if (self != nil) {
       _metaBuilder = [[DRCTSGetTablesMetaManagedObjectBuilder alloc] init];
       _dataBuilder = [[DRCTSGetFilesDataManagedObjectBuilder alloc] init];
    }
    return self;
}

-(DRCTSGetFileManagedObject*)createNewDRCTSGetFileManagedObjectInContext:(NSManagedObjectContext*)context {
    DRCTSGetFileManagedObject *managedObject = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([DRCTSGetFileManagedObject class]) inManagedObjectContext:context];
    return managedObject;
}

-(DRCTSGetFileManagedObject*)DRCTSGetFileManagedObjectFromDRCTSGetFile:(DRCTSGetFile*)object context:(NSManagedObjectContext*)context {
    DRCTSGetFileManagedObject* newDRCTSGetFile = [self createNewDRCTSGetFileManagedObjectInContext:context];
    [self updateDRCTSGetFileManagedObject:newDRCTSGetFile withDRCTSGetFile:object];
    return newDRCTSGetFile;
}

-(void)updateDRCTSGetFileManagedObject:(DRCTSGetFileManagedObject*)managedObject withDRCTSGetFile:(DRCTSGetFile*)object {
    if(!managedObject || !object) {
        return;
    }
    NSManagedObjectContext* context = managedObject.managedObjectContext;

    if(!managedObject.meta) {
        managedObject.meta = [self.metaBuilder DRCTSGetTablesMetaManagedObjectFromDRCTSGetTablesMeta:object.meta context:managedObject.managedObjectContext];
    } else {
        [self.metaBuilder updateDRCTSGetTablesMetaManagedObject:managedObject.meta withDRCTSGetTablesMeta:object.meta];
    }

    if(!managedObject.data) {
        managedObject.data = [self.dataBuilder DRCTSGetFilesDataManagedObjectFromDRCTSGetFilesData:object.data context:managedObject.managedObjectContext];
    } else {
        [self.dataBuilder updateDRCTSGetFilesDataManagedObject:managedObject.data withDRCTSGetFilesData:object.data];
    }

}

-(DRCTSGetFile*)DRCTSGetFileFromDRCTSGetFileManagedObject:(DRCTSGetFileManagedObject*)obj {
    if(!obj) {
        return nil;
    }
    DRCTSGetFile* newDRCTSGetFile = [[DRCTSGetFile alloc] init];
    [self updateDRCTSGetFile:newDRCTSGetFile withDRCTSGetFileManagedObject:obj];
    return newDRCTSGetFile;
}

-(void)updateDRCTSGetFile:(DRCTSGetFile*)newDRCTSGetFile withDRCTSGetFileManagedObject:(DRCTSGetFileManagedObject*)obj {
    newDRCTSGetFile.meta = [self.metaBuilder DRCTSGetTablesMetaFromDRCTSGetTablesMetaManagedObject:obj.meta];
    newDRCTSGetFile.data = [self.dataBuilder DRCTSGetFilesDataFromDRCTSGetFilesDataManagedObject:obj.data];
}

@end
