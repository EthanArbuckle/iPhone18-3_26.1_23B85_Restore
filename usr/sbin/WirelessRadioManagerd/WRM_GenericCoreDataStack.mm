@interface WRM_GenericCoreDataStack
- (WRM_GenericCoreDataStack)initWithModelURL:(id)l modelURL:(id)rL;
- (WRM_GenericCoreDataStack)initWithStoreURL:(id)l modelURL:(id)rL;
- (id)managedObjectModel:(id)model;
- (void)setupManagedObjectContext:(id)context modelURL:(id)l;
@end

@implementation WRM_GenericCoreDataStack

- (WRM_GenericCoreDataStack)initWithModelURL:(id)l modelURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v18.receiver = self;
  v18.super_class = WRM_GenericCoreDataStack;
  v8 = [(WRM_GenericCoreDataStack *)&v18 init];
  if (v8)
  {
    v9 = [NSPersistentContainer alloc];
    v10 = [(WRM_GenericCoreDataStack *)v8 managedObjectModel:rLCopy];
    v11 = [v9 initWithName:@"CoreDataStore" managedObjectModel:v10];
    [(WRM_GenericCoreDataStack *)v8 setPersistentContainer:v11];

    [WCM_Logging logLevel:22 message:@"DataStoreManager: persistentContainer initiated with MOM"];
    v12 = [[NSPersistentStoreDescription alloc] initWithURL:lCopy];
    v19 = v12;
    v13 = [NSArray arrayWithObjects:&v19 count:1];
    persistentContainer = [(WRM_GenericCoreDataStack *)v8 persistentContainer];
    [persistentContainer setPersistentStoreDescriptions:v13];

    persistentContainer2 = [(WRM_GenericCoreDataStack *)v8 persistentContainer];
    [persistentContainer2 loadPersistentStoresWithCompletionHandler:&stru_10023EC88];

    [WCM_Logging logLevel:22 message:@"DataStoreManager: persistentContainer created"];
    v16 = v8;
  }

  return v8;
}

- (WRM_GenericCoreDataStack)initWithStoreURL:(id)l modelURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v11.receiver = self;
  v11.super_class = WRM_GenericCoreDataStack;
  v8 = [(WRM_GenericCoreDataStack *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(WRM_GenericCoreDataStack *)v8 setupManagedObjectContext:lCopy modelURL:rLCopy];
  }

  return v9;
}

- (void)setupManagedObjectContext:(id)context modelURL:(id)l
{
  contextCopy = context;
  v7 = [(WRM_GenericCoreDataStack *)self managedObjectModel:l];
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
  v12 = [(NSPersistentStoreCoordinator *)v11 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:contextCopy options:0 error:&v18];
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

- (id)managedObjectModel:(id)model
{
  modelCopy = model;
  [WCM_Logging logLevel:22 message:@"CellStationManager: initializing managedObjectModel with the given model URL"];
  v4 = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelCopy];

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