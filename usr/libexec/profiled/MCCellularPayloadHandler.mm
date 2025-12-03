@interface MCCellularPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCCellularPayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  if (MCCTHasCellular())
  {
    v37 = 0;
    MCCTGetManagedCellularProfile();
    v8 = 0;
    if (v8)
    {
      v9 = MCCellularErrorDomain;
      payload = MCErrorArray();
      v11 = [NSError MCErrorWithDomain:v9 code:36000 descriptionArray:payload errorType:MCErrorTypeFatal, 0];
    }

    else
    {
      payload = [(MCNewPayloadHandler *)self payload];
      v14 = +[NSMutableDictionary dictionary];
      attachAPN = [payload attachAPN];
      v16 = attachAPN;
      if (attachAPN)
      {
        telephonyRepresentation = [attachAPN telephonyRepresentation];
        [v14 setObject:telephonyRepresentation forKeyedSubscript:@"AttachAPN"];
      }

      aPNs = [payload APNs];
      v19 = [aPNs count];

      if (v19)
      {
        v30 = v16;
        aPNs2 = [payload APNs];
        v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [aPNs2 count]);

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        aPNs3 = [payload APNs];
        v23 = [aPNs3 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
                objc_enumerationMutation(aPNs3);
              }

              telephonyRepresentation2 = [*(*(&v33 + 1) + 8 * i) telephonyRepresentation];
              [v21 addObject:telephonyRepresentation2];
            }

            v24 = [aPNs3 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
    if (error && v11)
    {
      v28 = v11;
      *error = v11;
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
      mCVerboseDescription = [v5 MCVerboseDescription];
      *buf = 138543362;
      v10 = mCVerboseDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not set aside managed cellular settings. Error: %{public}@", buf, 0xCu);
    }
  }

  MCCTClearManagedCellularProfile();
}

- (void)unsetAside
{
  setAsideDictionary = [(MCCellularPayloadHandler *)self setAsideDictionary];

  if (setAsideDictionary)
  {
    setAsideDictionary2 = [(MCCellularPayloadHandler *)self setAsideDictionary];
    MCCTSetManagedCellularProfile();
  }
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {
    v4 = MCCTClearManagedCellularProfile();
    v5 = 0;
    if ((v4 & 1) == 0)
    {
      v6 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        mCVerboseDescription = [v5 MCVerboseDescription];
        *buf = 138543362;
        v10 = mCVerboseDescription;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not clear managed cellular settings. Ignoring. Error: %{public}@", buf, 0xCu);
      }
    }
  }
}

@end