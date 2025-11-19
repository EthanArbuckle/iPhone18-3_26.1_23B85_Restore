@interface CellPropertiesCoreDataStack
- (CellPropertiesCoreDataStack)initWithStoreURL:(id)a3 modelURL:(id)a4;
- (id)managedObjectModel:(id)a3;
- (void)setupManagedObjectContext:(id)a3 modelURL:(id)a4;
@end

@implementation CellPropertiesCoreDataStack

- (CellPropertiesCoreDataStack)initWithStoreURL:(id)a3 modelURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CellPropertiesCoreDataStack;
  v8 = [(CellPropertiesCoreDataStack *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CellPropertiesCoreDataStack *)v8 setupManagedObjectContext:v6 modelURL:v7];
  }

  return v9;
}

- (void)setupManagedObjectContext:(id)a3 modelURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CellPropertiesCoreDataStack *)self managedObjectModel:v7];
  v9 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v8];
  persistentStoreCoordinator = self->persistentStoreCoordinator;
  self->persistentStoreCoordinator = v9;

  if (self->persistentStoreCoordinator)
  {
    v11 = @"CellStationManager: persistentStoreCoordinator initialized";
  }

  else
  {
    v11 = @"CellStationManager: persistentStoreCoordinator is not initialized";
  }

  [WCM_Logging logLevel:22 message:v11];
  v12 = self->persistentStoreCoordinator;
  v20 = NSReadOnlyPersistentStoreOption;
  v21 = &__kCFBooleanTrue;
  v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v19 = 0;
  v14 = [(NSPersistentStoreCoordinator *)v12 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v6 options:v13 error:&v19];
  v15 = v19;

  if (v15)
  {
    v16 = [v15 description];
    [WCM_Logging logLevel:22 message:@"CellStationManager: error in creating persistent store: %@", v16];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"CellStationManager: No error in creating persistent store"];
  }

  v17 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  private_queue_context = self->private_queue_context;
  self->private_queue_context = v17;

  [(NSManagedObjectContext *)self->private_queue_context setPersistentStoreCoordinator:self->persistentStoreCoordinator];
}

- (id)managedObjectModel:(id)a3
{
  v3 = a3;
  [WCM_Logging logLevel:22 message:@"CellStationManager: initializing managedObjectModel with the given model URL"];
  v4 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v3];
  [WCM_Logging logLevel:22 message:@"CellStationManager: No error in initializing managedObjectModel"];
  if (v4)
  {
    [WCM_Logging logLevel:22 message:@"CellStationManager: initialized managedObjectModel with the given model URL"];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"CellStationManager: mom is not initialized"];
  }

  return v4;
}

@end