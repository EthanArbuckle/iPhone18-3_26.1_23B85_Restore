@interface MCCellularPayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCCellularPayloadHandler

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  if (MCCTHasCellular())
  {
    v37 = 0;
    MCCTGetManagedCellularProfile();
    v8 = 0;
    if (v8)
    {
      v9 = MCCellularErrorDomain;
      v10 = MCErrorArray();
      v11 = [NSError MCErrorWithDomain:v9 code:36000 descriptionArray:v10 errorType:MCErrorTypeFatal, 0];
    }

    else
    {
      v10 = [(MCNewPayloadHandler *)self payload];
      v14 = +[NSMutableDictionary dictionary];
      v15 = [v10 attachAPN];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 telephonyRepresentation];
        [v14 setObject:v17 forKeyedSubscript:@"AttachAPN"];
      }

      v18 = [v10 APNs];
      v19 = [v18 count];

      if (v19)
      {
        v30 = v16;
        v20 = [v10 APNs];
        v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v20 count]);

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v22 = [v10 APNs];
        v23 = [v22 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v34;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v34 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [*(*(&v33 + 1) + 8 * i) telephonyRepresentation];
              [v21 addObject:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v33 objects:v38 count:16];
          }

          while (v24);
        }

        [v14 setObject:v21 forKeyedSubscript:@"APNs"];
        v16 = v30;
      }

      v32 = 0;
      MCCTSetManagedCellularProfile();
      v11 = 0;
    }

    v13 = v11 != 0;
    if (a6 && v11)
    {
      v28 = v11;
      *a6 = v11;
      v13 = 1;
    }
  }

  else
  {
    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "APN payload was skipped because this device is not compatible with it.", buf, 2u);
    }

    v13 = 0;
    v11 = 0;
  }

  return !v13;
}

- (void)setAside
{
  v3 = MCCTGetManagedCellularProfile();
  v4 = 0;
  v5 = 0;
  if (v3)
  {
    [(MCCellularPayloadHandler *)self setSetAsideDictionary:v4];
  }

  else
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v5 MCVerboseDescription];
      *buf = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not set aside managed cellular settings. Error: %{public}@", buf, 0xCu);
    }
  }

  MCCTClearManagedCellularProfile();
}

- (void)unsetAside
{
  v3 = [(MCCellularPayloadHandler *)self setAsideDictionary];

  if (v3)
  {
    v4 = [(MCCellularPayloadHandler *)self setAsideDictionary];
    MCCTSetManagedCellularProfile();
  }
}

- (void)remove
{
  v2 = [(MCNewPayloadHandler *)self profileHandler];
  v3 = [v2 isSetAside];

  if ((v3 & 1) == 0)
  {
    v4 = MCCTClearManagedCellularProfile();
    v5 = 0;
    if ((v4 & 1) == 0)
    {
      v6 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        v8 = [v5 MCVerboseDescription];
        *buf = 138543362;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not clear managed cellular settings. Ignoring. Error: %{public}@", buf, 0xCu);
      }
    }
  }
}

@end