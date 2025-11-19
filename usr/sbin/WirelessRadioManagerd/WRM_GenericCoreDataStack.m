@interface WRM_GenericCoreDataStack
- (WRM_GenericCoreDataStack)initWithModelURL:(id)a3 modelURL:(id)a4;
- (WRM_GenericCoreDataStack)initWithStoreURL:(id)a3 modelURL:(id)a4;
- (id)managedObjectModel:(id)a3;
- (void)setupManagedObjectContext:(id)a3 modelURL:(id)a4;
@end

@implementation WRM_GenericCoreDataStack

- (WRM_GenericCoreDataStack)initWithModelURL:(id)a3 modelURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = WRM_GenericCoreDataStack;
  v8 = [(WRM_GenericCoreDataStack *)&v18 init];
  if (v8)
  {
    v9 = [NSPersistentContainer alloc];
    v10 = [(WRM_GenericCoreDataStack *)v8 managedObjectModel:v7];
    v11 = [v9 initWithName:@"CoreDataStore" managedObjectModel:v10];
    [(WRM_GenericCoreDataStack *)v8 setPersistentContainer:v11];

    [WCM_Logging logLevel:22 message:@"DataStoreManager: persistentContainer initiated with MOM"];
    v12 = [[NSPersistentStoreDescription alloc] initWithURL:v6];
    v19 = v12;
    v13 = [NSArray arrayWithObjects:&v19 count:1];
    v14 = [(WRM_GenericCoreDataStack *)v8 persistentContainer];
    [v14 setPersistentStoreDescriptions:v13];

    v15 = [(WRM_GenericCoreDataStack *)v8 persistentContainer];
    [v15 loadPersistentStoresWithCompletionHandler:&stru_10023EC88];

    [WCM_Logging logLevel:22 message:@"DataStoreManager: persistentContainer created"];
    v16 = v8;
  }

  return v8;
}

- (WRM_GenericCoreDataStack)initWithStoreURL:(id)a3 modelURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = WRM_GenericCoreDataStack;
  v8 = [(WRM_GenericCoreDataStack *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(WRM_GenericCoreDataStack *)v8 setupManagedObjectContext:v6 modelURL:v7];
  }

  return v9;
}

- (void)setupManagedObjectContext:(id)a3 modelURL:(id)a4
{
  v6 = a3;
  v7 = [(WRM_GenericCoreDataStack *)self managedObjectModel:a4];
  v8 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v7];
  persistentStoreCoordinator = self->persistentStoreCoordinator;
  self->persistentStoreCoordinator = v8;

  if (self->persistentStoreCoordinator)
  {
    v10 = @"DataStoreManager: persistentStoreCoordinator initialized";
  }

  else
  {
    v10 = @"DataStoreManager: persistentStoreCoordinator is not initialized";
  }

  [WCM_Logging logLevel:22 message:v10];
  [WCM_Logging logLevel:22 message:@"DataStoreManager: Adding persistentStoreCoordinator"];
  v11 = self->persistentStoreCoordinator;
  v18 = 0;
  v12 = [(NSPersistentStoreCoordinator *)v11 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v6 options:0 error:&v18];
  v13 = v18;
  v14 = v13;
  if (v13)
  {
    v15 = [v13 description];
    [WCM_Logging logLevel:22 message:@"DataStoreManager: error in creating persistent store: %@", v15];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"DataStoreManager: No error in creating persistent store"];
  }

  v16 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  private_queue_context = self->private_queue_context;
  self->private_queue_context = v16;

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
    v5 = @"CellStationManager: initialized managedObjectModel with the given model URL";
  }

  else
  {
    v5 = @"CellStationManager: mom is not initialized";
  }

  [WCM_Logging logLevel:22 message:v5];

  return v4;
}

@end