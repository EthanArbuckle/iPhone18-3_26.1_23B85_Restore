@interface WRM_DataStoreManagerIOS
- (BOOL)checkModelFileExists;
- (WRM_DataStoreManagerIOS)init;
- (id)modelURL;
- (void)checkStoreFileExists;
- (void)fetchObjectsForCellID:(id)d completionHandler:(id)handler;
- (void)read:(id)read completionHandler:(id)handler;
- (void)updateForKey:(id)key metricsToWrite:(id)write completionHandler:(id)handler;
- (void)write:(id)write completionHandler:(id)handler;
@end

@implementation WRM_DataStoreManagerIOS

- (WRM_DataStoreManagerIOS)init
{
  v9.receiver = self;
  v9.super_class = WRM_DataStoreManagerIOS;
  v2 = [(WRM_DataStoreManagerIOS *)&v9 init];
  [WCM_Logging logLevel:22 message:@"DataStoreManager: init WRM_DataStoreManagerIOS"];
  if ([(WRM_DataStoreManagerIOS *)v2 checkModelFileExists])
  {
    [(WRM_DataStoreManagerIOS *)v2 checkStoreFileExists];
    v3 = [WRM_GenericCoreDataStack alloc];
    storeURL = [(WRM_DataStoreManagerIOS *)v2 storeURL];
    modelURL = [(WRM_DataStoreManagerIOS *)v2 modelURL];
    v6 = [(WRM_GenericCoreDataStack *)v3 initWithModelURL:storeURL modelURL:modelURL];
    persistentStack = v2->persistentStack;
    v2->persistentStack = v6;

    [WCM_Logging logLevel:22 message:@"DataStoreManager: Initialized persistentStack with the model and store."];
  }

  return v2;
}

- (BOOL)checkModelFileExists
{
  modelURL = [(WRM_DataStoreManagerIOS *)self modelURL];
  absoluteString = [modelURL absoluteString];
  [WCM_Logging logLevel:22 message:@"DataStoreManager: The given model URL is %@", absoluteString];

  modelURL2 = [(WRM_DataStoreManagerIOS *)self modelURL];
  v10 = 0;
  v6 = [modelURL2 checkResourceIsReachableAndReturnError:&v10];
  v7 = v10;

  if (v6)
  {
    [WCM_Logging logLevel:22 message:@"DataStoreManager: model file exists at the given URL"];
  }

  else
  {
    v8 = [v7 description];
    [WCM_Logging logLevel:22 message:@"DataStoreManager: model file does not exists at the given URL, %@", v8];
  }

  return v6;
}

- (void)checkStoreFileExists
{
  storeURL = [(WRM_DataStoreManagerIOS *)self storeURL];
  absoluteString = [storeURL absoluteString];
  [WCM_Logging logLevel:22 message:@"DataStoreManager: The given store URL is %@", absoluteString];

  storeURL2 = [(WRM_DataStoreManagerIOS *)self storeURL];
  v9 = 0;
  v6 = [storeURL2 checkResourceIsReachableAndReturnError:&v9];
  v7 = v9;

  if (v6)
  {
    [WCM_Logging logLevel:22 message:@"DataStoreManager: store file exists at the given URL"];
  }

  else
  {
    v8 = [v7 description];
    [WCM_Logging logLevel:22 message:@"DataStoreManager: store file does not exists at the given URL, %@", v8];
  }
}

- (void)fetchObjectsForCellID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (dCopy)
  {
    [WCM_Logging logLevel:22 message:@"DataStoreManager: fetchObjects"];
    [WCM_Logging logLevel:22 message:@"DataStoreManager: fetching objects"];
    v9 = [NSFetchRequest fetchRequestWithEntityName:@"CoreDataStore"];
    request = self->request;
    self->request = v9;

    v11 = self->request;
    dCopy = [NSPredicate predicateWithFormat:@"%K == %@", @"cellID", dCopy];
    [(NSFetchRequest *)v11 setPredicate:dCopy];

    if (self->request)
    {
      [WCM_Logging logLevel:22 message:@"DataStoreManager: Created fetch request"];
      persistentContainer = [(WRM_GenericCoreDataStack *)self->persistentStack persistentContainer];
      viewContext = [persistentContainer viewContext];
      v15 = self->request;
      v21 = 0;
      v16 = [viewContext executeFetchRequest:v15 error:&v21];
      v17 = v21;
      fetchRequestResults = self->fetchRequestResults;
      self->fetchRequestResults = v16;

      if (self->fetchRequestResults)
      {
        [WCM_Logging logLevel:22 message:@"DataStoreManager: No Error fetching objects"];
      }

      else
      {
        localizedDescription = [v17 localizedDescription];
        userInfo = [v17 userInfo];
        [WCM_Logging logLevel:22 message:@"DataStoreManager: Error fetching objects: %@\n%@", localizedDescription, userInfo];

        if (v8)
        {
          v8[2](v8, 0);
        }
      }
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"DataStoreManager: Error creating fetch request"];
      v17 = 0;
      if (v8)
      {
        v8[2](v8, 0);
      }
    }
  }

  else if (handlerCopy)
  {
    [WCM_Logging logLevel:22 message:@"DataStoreManager: fetchObjectsForCellID: cellID is nil"];
    v8[2](v8, 0);
  }
}

- (void)write:(id)write completionHandler:(id)handler
{
  writeCopy = write;
  handlerCopy = handler;
  [WCM_Logging logLevel:22 message:@"DataStoreManager: Write"];
  persistentContainer = [(WRM_GenericCoreDataStack *)self->persistentStack persistentContainer];
  viewContext = [persistentContainer viewContext];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A9420;
  v12[3] = &unk_100240348;
  v12[4] = self;
  v10 = writeCopy;
  v13 = v10;
  v11 = handlerCopy;
  v14 = v11;
  [viewContext performBlockAndWait:v12];
}

- (void)updateForKey:(id)key metricsToWrite:(id)write completionHandler:(id)handler
{
  keyCopy = key;
  writeCopy = write;
  handlerCopy = handler;
  v11 = [writeCopy objectForKey:keyCopy];

  if (v11)
  {
    persistentContainer = [(WRM_GenericCoreDataStack *)self->persistentStack persistentContainer];
    viewContext = [persistentContainer viewContext];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000A9980;
    v14[3] = &unk_100240398;
    v14[4] = self;
    v15 = writeCopy;
    v16 = keyCopy;
    v17 = handlerCopy;
    [viewContext performBlockAndWait:v14];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"DataStoreManager: No object is set for key: %@ in metricsToWrite", keyCopy];
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)read:(id)read completionHandler:(id)handler
{
  readCopy = read;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (readCopy)
  {
    persistentContainer = [(WRM_GenericCoreDataStack *)self->persistentStack persistentContainer];
    viewContext = [persistentContainer viewContext];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A9FA4;
    v11[3] = &unk_100240348;
    v11[4] = self;
    v12 = readCopy;
    v13 = v8;
    [viewContext performBlockAndWait:v11];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (id)modelURL
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 URLForResource:@"WRM_CoreDataStore" withExtension:@"momd"];
  absoluteString = [v3 absoluteString];
  [WCM_Logging logLevel:22 message:@"DataStoreManager: The model URL is: %@", absoluteString];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 URLForResource:@"WRM_CoreDataStore" withExtension:@"momd"];

  return v6;
}

@end