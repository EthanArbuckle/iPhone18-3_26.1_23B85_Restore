@interface WCDRetrievePairedListOperation
- (id)pairedDeviceInformationForDevice:(id)a3;
- (void)doWorkWithCompletionHandler:(id)a3;
@end

@implementation WCDRetrievePairedListOperation

- (void)doWorkWithCompletionHandler:(id)a3
{
  v40 = a3;
  v4 = wc_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v54 = "[WCDRetrievePairedListOperation doWorkWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v5 = objc_initWeak(&location, self);
  v6 = [(WCDRetrievePairedListOperation *)self isCancelled];

  if (!v6)
  {
    v8 = +[NRPairedDeviceRegistry sharedInstance];
    v39 = [v8 getActivePairedDevice];

    v9 = +[NRPairedDeviceRegistry sharedInstance];
    v10 = [v9 getPairedDevices];
    v37 = [v10 copy];

    v11 = 0;
    if (v39)
    {
      v38 = 0;
      v7 = 0;
      if (v37)
      {
        v12 = [v37 containsObject:v39];
        v13 = objc_loadWeakRetained(&location);
        v14 = v13;
        if ((v12 & 1) == 0)
        {
          v17 = [v13 isCancelled];

          if (!v17)
          {
            v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
            v40[2](v40, v34, @"getPairedDevices does not contain getActivePairedDevice");

            goto LABEL_33;
          }

LABEL_9:
          v16 = objc_loadWeakRetained(&location);
          [v16 finish];

LABEL_33:
          v11 = 0;
          v38 = 0;
          v7 = 0;
          goto LABEL_34;
        }

        v15 = [v13 isCancelled];

        if (v15)
        {
          goto LABEL_9;
        }

        [(WCDRetrievePairedListOperation *)self setPaired:1];
        v18 = NRDevicePropertyPairingID;
        v19 = [v39 valueForProperty:NRDevicePropertyPairingID];
        v38 = [v19 UUIDString];

        v7 = [(WCDRetrievePairedListOperation *)self pairedDeviceInformationForDevice:v39];
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        obj = v37;
        v11 = 0;
        v20 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v20)
        {
          v21 = *v47;
          while (2)
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v47 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v46 + 1) + 8 * i);
              v24 = objc_loadWeakRetained(&location);
              v25 = [v24 isCancelled];

              if (v25)
              {
                v35 = objc_loadWeakRetained(&location);
                [v35 finish];

                goto LABEL_34;
              }

              if (!v11)
              {
                v11 = objc_opt_new();
              }

              v26 = [v23 valueForProperty:v18];
              v27 = [v26 UUIDString];
              [v11 addObject:v27];
            }

            v20 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        if (!v38)
        {
          v28 = [NSString stringWithFormat:@"%s: %s cannot be nil.", "[WCDRetrievePairedListOperation doWorkWithCompletionHandler:]", "pairingID"];
          v29 = wc_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            v30 = v28;
            sub_10002A3B0([v28 UTF8String], buf, v29);
          }

          [NSException raise:NSInvalidArgumentException format:@"%@", v28];
        }

        if (!v11)
        {
          v31 = [NSString stringWithFormat:@"%s: %s cannot be nil.", "[WCDRetrievePairedListOperation doWorkWithCompletionHandler:]", "pairedDevicesPairingIDs"];
          v32 = wc_log();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            v33 = v31;
            sub_10002A3B0([v31 UTF8String], v51, v32);
          }

          [NSException raise:NSInvalidArgumentException format:@"%@", v31];
          v11 = 0;
        }
      }
    }

    else
    {
      v38 = 0;
      v7 = 0;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B818;
    block[3] = &unk_100048CB0;
    objc_copyWeak(&v45, &location);
    block[4] = self;
    v38 = v38;
    v42 = v38;
    v7 = v7;
    v43 = v7;
    v11 = v11;
    v44 = v11;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v45);
LABEL_34:

    goto LABEL_35;
  }

  v7 = objc_loadWeakRetained(&location);
  [v7 finish];
LABEL_35:

  objc_destroyWeak(&location);
}

- (id)pairedDeviceInformationForDevice:(id)a3
{
  v3 = NRDevicePropertyIsInternalInstall;
  v4 = a3;
  v5 = [v4 valueForProperty:v3];
  v6 = [v5 BOOLValue];
  v7 = @"Production";
  if (v6)
  {
    v7 = @"Internal";
  }

  v8 = v7;

  v18 = [v4 valueForProperty:NRDevicePropertyHWModelString];
  v9 = [v4 valueForProperty:NRDevicePropertyProductType];
  v10 = [NSString stringWithFormat:@"%@ (%@)", v18, v9];
  v11 = [v4 valueForProperty:NRDevicePropertySystemName];
  v12 = [v4 valueForProperty:NRDevicePropertySystemVersion];
  v13 = [v4 valueForProperty:NRDevicePropertySystemBuildVersion];
  v14 = [NSString stringWithFormat:@"%@ %@ (%@)", v11, v12, v13];
  v15 = [v4 valueForProperty:NRDevicePropertyName];

  v16 = [NSString stringWithFormat:@"%@: %@, %@, %@", v8, v10, v14, v15];

  return v16;
}

@end