@interface WRM_DataStoreManagerIOS
- (BOOL)checkModelFileExists;
- (WRM_DataStoreManagerIOS)init;
- (id)modelURL;
- (void)checkStoreFileExists;
- (void)fetchObjectsForCellID:(id)a3 completionHandler:(id)a4;
- (void)read:(id)a3 completionHandler:(id)a4;
- (void)updateForKey:(id)a3 metricsToWrite:(id)a4 completionHandler:(id)a5;
- (void)write:(id)a3 completionHandler:(id)a4;
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
    v4 = [(WRM_DataStoreManagerIOS *)v2 storeURL];
    v5 = [(WRM_DataStoreManagerIOS *)v2 modelURL];
    v6 = [(WRM_GenericCoreDataStack *)v3 initWithModelURL:v4 modelURL:v5];
    persistentStack = v2->persistentStack;
    v2->persistentStack = v6;

    [WCM_Logging logLevel:22 message:@"DataStoreManager: Initialized persistentStack with the model and store."];
  }

  return v2;
}

- (BOOL)checkModelFileExists
{
  v3 = [(WRM_DataStoreManagerIOS *)self modelURL];
  v4 = [v3 absoluteString];
  [WCM_Logging logLevel:22 message:@"DataStoreManager: The given model URL is %@", v4];

  v5 = [(WRM_DataStoreManagerIOS *)self modelURL];
  v10 = 0;
  v6 = [v5 checkResourceIsReachableAndReturnError:&v10];
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
  v3 = [(WRM_DataStoreManagerIOS *)self storeURL];
  v4 = [v3 absoluteString];
  [WCM_Logging logLevel:22 message:@"DataStoreManager: The given store URL is %@", v4];

  v5 = [(WRM_DataStoreManagerIOS *)self storeURL];
  v9 = 0;
  v6 = [v5 checkResourceIsReachableAndReturnError:&v9];
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

- (void)fetchObjectsForCellID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    [WCM_Logging logLevel:22 message:@"DataStoreManager: fetchObjects"];
    [WCM_Logging logLevel:22 message:@"DataStoreManager: fetching objects"];
    v9 = [NSFetchRequest fetchRequestWithEntityName:@"CoreDataStore"];
    request = self->request;
    self->request = v9;

    v11 = self->request;
    v12 = [NSPredicate predicateWithFormat:@"%K == %@", @"cellID", v6];
    [(NSFetchRequest *)v11 setPredicate:v12];

    if (self->request)
    {
      [WCM_Logging logLevel:22 message:@"DataStoreManager: Created fetch request"];
      v13 = [(WRM_GenericCoreDataStack *)self->persistentStack persistentContainer];
      v14 = [v13 viewContext];
      v15 = self->request;
      v21 = 0;
      v16 = [v14 executeFetchRequest:v15 error:&v21];
      v17 = v21;
      fetchRequestResults = self->fetchRequestResults;
      self->fetchRequestResults = v16;

      if (self->fetchRequestResults)
      {
        [WCM_Logging logLevel:22 message:@"DataStoreManager: No Error fetching objects"];
      }

      else
      {
        v19 = [v17 localizedDescription];
        v20 = [v17 userInfo];
        [WCM_Logging logLevel:22 message:@"DataStoreManager: Error fetching objects: %@\n%@", v19, v20];

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

  else if (v7)
  {
    [WCM_Logging logLevel:22 message:@"DataStoreManager: fetchObjectsForCellID: cellID is nil"];
    v8[2](v8, 0);
  }
}

- (void)write:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [WCM_Logging logLevel:22 message:@"DataStoreManager: Write"];
  v8 = [(WRM_GenericCoreDataStack *)self->persistentStack persistentContainer];
  v9 = [v8 viewContext];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A9420;
  v12[3] = &unk_100240348;
  v12[4] = self;
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [v9 performBlockAndWait:v12];
}

- (void)updateForKey:(id)a3 metricsToWrite:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKey:v8];

  if (v11)
  {
    v12 = [(WRM_GenericCoreDataStack *)self->persistentStack persistentContainer];
    v13 = [v12 viewContext];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000A9980;
    v14[3] = &unk_100240398;
    v14[4] = self;
    v15 = v9;
    v16 = v8;
    v17 = v10;
    [v13 performBlockAndWait:v14];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"DataStoreManager: No object is set for key: %@ in metricsToWrite", v8];
    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)read:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(WRM_GenericCoreDataStack *)self->persistentStack persistentContainer];
    v10 = [v9 viewContext];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A9FA4;
    v11[3] = &unk_100240348;
    v11[4] = self;
    v12 = v6;
    v13 = v8;
    [v10 performBlockAndWait:v11];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

- (id)modelURL
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 URLForResource:@"WRM_CoreDataStore" withExtension:@"momd"];
  v4 = [v3 absoluteString];
  [WCM_Logging logLevel:22 message:@"DataStoreManager: The model URL is: %@", v4];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 URLForResource:@"WRM_CoreDataStore" withExtension:@"momd"];

  return v6;
}

@end