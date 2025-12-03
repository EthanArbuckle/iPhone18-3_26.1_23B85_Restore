@interface WRM_CellStationManagerIOS
- (WRM_CellStationManagerIOS)init;
- (id)storeURL;
- (void)checkUsingCoreData:(id)data :(id)a4;
- (void)isFR2:(id)r2 completionHandler:(id)handler;
@end

@implementation WRM_CellStationManagerIOS

- (WRM_CellStationManagerIOS)init
{
  v3.receiver = self;
  v3.super_class = WRM_CellStationManagerIOS;
  return [(WRM_CellStationManagerIOS *)&v3 init];
}

- (void)checkUsingCoreData:(id)data :(id)a4
{
  dataCopy = data;
  v7 = a4;
  if (dataCopy)
  {
    modelURL = [(WRM_CellStationManagerIOS *)self modelURL];
    absoluteString = [modelURL absoluteString];
    [WCM_Logging logLevel:22 message:@"CellStationManager: The given model URL is %@", absoluteString];

    modelURL2 = [(WRM_CellStationManagerIOS *)self modelURL];
    v29 = 0;
    v11 = [modelURL2 checkResourceIsReachableAndReturnError:&v29];
    v12 = v29;

    if (v11)
    {
      [WCM_Logging logLevel:22 message:@"CellStationManager: model file exists at the given URL"];
      storeURL = [(WRM_CellStationManagerIOS *)self storeURL];
      absoluteString2 = [storeURL absoluteString];
      [WCM_Logging logLevel:22 message:@"CellStationManager: The given store URL is %@", absoluteString2];

      storeURL2 = [(WRM_CellStationManagerIOS *)self storeURL];
      v28 = v12;
      LOBYTE(absoluteString2) = [storeURL2 checkResourceIsReachableAndReturnError:&v28];
      v16 = v28;

      if (absoluteString2)
      {
        [WCM_Logging logLevel:22 message:@"CellStationManager: store file exists at the given URL"];
        v17 = [CellPropertiesCoreDataStack alloc];
        storeURL3 = [(WRM_CellStationManagerIOS *)self storeURL];
        modelURL3 = [(WRM_CellStationManagerIOS *)self modelURL];
        v20 = [(CellPropertiesCoreDataStack *)v17 initWithStoreURL:storeURL3 modelURL:modelURL3];

        if (v20)
        {
          private_queue_context = [(CellPropertiesCoreDataStack *)v20 private_queue_context];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_10008796C;
          v24[3] = &unk_10023F980;
          v27 = v7;
          v25 = dataCopy;
          v26 = v20;
          [private_queue_context performBlockAndWait:v24];
        }

        else
        {
          [WCM_Logging logLevel:22 message:@"CellStationManager: Error in initializing persistentStack with the model and store."];
          if (v7)
          {
            (*(v7 + 2))(v7, 0);
          }
        }
      }

      else
      {
        v23 = [v16 description];
        [WCM_Logging logLevel:22 message:@"CellStationManager: store file does not exists at the given URL, %@", v23];

        if (v7)
        {
          (*(v7 + 2))(v7, 0);
        }
      }
    }

    else
    {
      v22 = [v12 description];
      [WCM_Logging logLevel:22 message:@"CellStationManager: model file does not exists at the given URL, %@", v22];

      if (v7)
      {
        (*(v7 + 2))(v7, 0);
      }

      v16 = v12;
    }
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"CellStationManager: error: cellID is nil in checkUsingCoreData"];
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (id)storeURL
{
  v2 = [TRIClient clientWithIdentifier:259];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 levelForFactor:@"WRM_CellPropertiesDB.sqlite" withNamespace:860];
    v5 = v4;
    if (v4)
    {
      fileValue = [v4 fileValue];
      path = [fileValue path];
      [WCM_Logging logLevel:22 message:@"CellStationManager: trialClient sqlite file found at %@", path];

      fileValue2 = [v5 fileValue];
      path2 = [fileValue2 path];
      v10 = [NSURL fileURLWithPath:path2];
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"CellStationManager: trialClient level is nil"];
      v10 = [NSURL fileURLWithPath:@"/System/Library/WRM/assets_860/WRM_CellPropertiesDB.sqlite"];
    }
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"CellStationManager: trialClient is nil"];
    v10 = [NSURL fileURLWithPath:@"/System/Library/WRM/assets_860/WRM_CellPropertiesDB.sqlite"];
  }

  return v10;
}

- (void)isFR2:(id)r2 completionHandler:(id)handler
{
  r2Copy = r2;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (r2Copy)
  {
    [WCM_Logging logLevel:22 message:@"CellStationManager: The cellID to query is %@", r2Copy];
    [(WRM_CellStationManagerIOS *)self checkUsingCoreData:r2Copy];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

@end