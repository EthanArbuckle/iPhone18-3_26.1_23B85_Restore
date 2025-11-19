@interface WRM_CellStationManagerIOS
- (WRM_CellStationManagerIOS)init;
- (id)storeURL;
- (void)checkUsingCoreData:(id)a3 :(id)a4;
- (void)isFR2:(id)a3 completionHandler:(id)a4;
@end

@implementation WRM_CellStationManagerIOS

- (WRM_CellStationManagerIOS)init
{
  v3.receiver = self;
  v3.super_class = WRM_CellStationManagerIOS;
  return [(WRM_CellStationManagerIOS *)&v3 init];
}

- (void)checkUsingCoreData:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(WRM_CellStationManagerIOS *)self modelURL];
    v9 = [v8 absoluteString];
    [WCM_Logging logLevel:22 message:@"CellStationManager: The given model URL is %@", v9];

    v10 = [(WRM_CellStationManagerIOS *)self modelURL];
    v29 = 0;
    v11 = [v10 checkResourceIsReachableAndReturnError:&v29];
    v12 = v29;

    if (v11)
    {
      [WCM_Logging logLevel:22 message:@"CellStationManager: model file exists at the given URL"];
      v13 = [(WRM_CellStationManagerIOS *)self storeURL];
      v14 = [v13 absoluteString];
      [WCM_Logging logLevel:22 message:@"CellStationManager: The given store URL is %@", v14];

      v15 = [(WRM_CellStationManagerIOS *)self storeURL];
      v28 = v12;
      LOBYTE(v14) = [v15 checkResourceIsReachableAndReturnError:&v28];
      v16 = v28;

      if (v14)
      {
        [WCM_Logging logLevel:22 message:@"CellStationManager: store file exists at the given URL"];
        v17 = [CellPropertiesCoreDataStack alloc];
        v18 = [(WRM_CellStationManagerIOS *)self storeURL];
        v19 = [(WRM_CellStationManagerIOS *)self modelURL];
        v20 = [(CellPropertiesCoreDataStack *)v17 initWithStoreURL:v18 modelURL:v19];

        if (v20)
        {
          v21 = [(CellPropertiesCoreDataStack *)v20 private_queue_context];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_10008796C;
          v24[3] = &unk_10023F980;
          v27 = v7;
          v25 = v6;
          v26 = v20;
          [v21 performBlockAndWait:v24];
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
      v6 = [v4 fileValue];
      v7 = [v6 path];
      [WCM_Logging logLevel:22 message:@"CellStationManager: trialClient sqlite file found at %@", v7];

      v8 = [v5 fileValue];
      v9 = [v8 path];
      v10 = [NSURL fileURLWithPath:v9];
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

- (void)isFR2:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = v6;
  if (v8)
  {
    [WCM_Logging logLevel:22 message:@"CellStationManager: The cellID to query is %@", v8];
    [(WRM_CellStationManagerIOS *)self checkUsingCoreData:v8];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }
}

@end