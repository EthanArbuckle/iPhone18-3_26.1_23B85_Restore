@interface FMDCommandHandlerDataUpdate
- (void)handleCommand;
- (void)sendAckWithCompletion:(id)completion;
@end

@implementation FMDCommandHandlerDataUpdate

- (void)handleCommand
{
  commandParams = [(FMDCommandHandler *)self commandParams];
  v4 = [commandParams objectForKey:off_100313188];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = +[FMDExtConfigurationRegistry sharedInstance];
    configurations = [v6 configurations];
    allKeys = [configurations allKeys];

    [v6 fetchSupportedAccessoryTypes];
    [v6 fetchConfigForAccessoryTypes:allKeys];
  }

  commandParams2 = [(FMDCommandHandler *)self commandParams];
  v10 = [commandParams2 objectForKey:off_100313160];
  bOOLValue2 = [v10 BOOLValue];

  if (bOOLValue2)
  {
    commandParams3 = [(FMDCommandHandler *)self commandParams];
    v13 = [commandParams3 objectForKey:off_100313158];

    commandParams4 = [(FMDCommandHandler *)self commandParams];
    v15 = [commandParams4 objectForKey:off_100313168];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = +[FMDServiceProvider activeServiceProvider];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        detachNotificationManager = [v16 detachNotificationManager];
        [detachNotificationManager updateAccessoryIds:v13 version:v15 withCompletion:0];
      }
    }
  }

  commandParams5 = [(FMDCommandHandler *)self commandParams];
  v19 = [commandParams5 objectForKey:off_100313178];
  bOOLValue3 = [v19 BOOLValue];

  v21 = sub_100002880();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_10022BD8C(self, v21);
  }

  if (bOOLValue3)
  {
    commandParams6 = [(FMDCommandHandler *)self commandParams];
    v23 = [commandParams6 objectForKey:off_100313170];

    commandParams7 = [(FMDCommandHandler *)self commandParams];
    v25 = [commandParams7 objectForKey:off_100313180];

    v26 = +[FMDMagSafeDataStore sharedInstance];
    readLostModeAccessoriesListVersion = [v26 readLostModeAccessoriesListVersion];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v25 isEqualToString:readLostModeAccessoriesListVersion] & 1) == 0)
    {
      v55 = readLostModeAccessoriesListVersion;
      v30 = sub_100002880();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        sub_10022BE24(v25, v23, v30);
      }

      v31 = +[FMDMagSafeDataStore sharedInstance];
      v32 = [v31 writeLostModeInfo:v23 version:v25];

      v28 = +[FMDServiceProvider activeServiceProvider];
      accessoryRegistry = [v28 accessoryRegistry];
      [accessoryRegistry allAccessories];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v33 = v59 = 0u;
      v34 = [v33 countByEnumeratingWithState:&v56 objects:v68 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v57;
        while (2)
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v57 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v56 + 1) + 8 * i);
            if ([v38 connectionState] == 1)
            {
              accessoryIdentifier = [v38 accessoryIdentifier];
              v40 = [v23 containsObject:accessoryIdentifier];

              if (v40)
              {
                v41 = +[NSNotificationCenter defaultCenter];
                [v41 postNotificationName:@"com.apple.accessories.connection.passedMFi4Auth" object:0];

                goto LABEL_29;
              }
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v56 objects:v68 count:16];
          if (v35)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:

      readLostModeAccessoriesListVersion = v55;
    }

    else
    {
      v28 = sub_100002880();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v61 = v23;
        v62 = 2112;
        v63 = objc_opt_class();
        v64 = 2112;
        v65 = readLostModeAccessoriesListVersion;
        v66 = 2112;
        v67 = v25;
        v29 = v63;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "lostModeInfo got unexpected info = %@, %@, cachedVersion = %@, newVersion = %@", buf, 0x2Au);
      }
    }
  }

  commandParams8 = [(FMDCommandHandler *)self commandParams];
  v43 = [commandParams8 objectForKey:off_100313198];

  commandParams9 = [(FMDCommandHandler *)self commandParams];
  v45 = commandParams9;
  if (!v43)
  {
    v49 = [commandParams9 objectForKey:off_100313190];

    if (!v49)
    {
LABEL_45:

      goto LABEL_46;
    }

    v51 = +[FMDLocalActivationLockInfoManager sharedInstance];
    v52 = v51;
    goto LABEL_40;
  }

  v46 = [commandParams9 objectForKey:off_100313198];
  bOOLValue4 = [v46 BOOLValue];

  if (bOOLValue4)
  {
    commandParams10 = [(FMDCommandHandler *)self commandParams];
    v49 = [commandParams10 objectForKey:off_100313190];

    v50 = v49 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && [v49 length] != 0;
    v51 = +[FMDLocalActivationLockInfoManager sharedInstance];
    v52 = v51;
    if (!v50)
    {
      v53 = sub_100002880();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Clearing maskedAppleID via dataUpdate command", buf, 2u);
      }

      [v52 clearMaskedAppleIDValue];
      goto LABEL_44;
    }

LABEL_40:
    [v51 updateMaskedAppleID:v49];
LABEL_44:

    goto LABEL_45;
  }

LABEL_46:
  [(FMDCommandHandler *)self didHandleCommandWithAckData:0];
}

- (void)sendAckWithCompletion:(id)completion
{
  completionCopy = completion;
  commandParams = [(FMDCommandHandler *)self commandParams];
  v6 = [commandParams objectForKeyedSubscript:@"ackURL"];

  provider = [(FMDCommandHandler *)self provider];
  if (v6)
  {
    v8 = [NSURL URLWithString:v6];
    v9 = [FMDRequestAckDataUpdate alloc];
    account = [provider account];
    commandParams2 = [(FMDCommandHandler *)self commandParams];
    v12 = [(FMDRequestAckDataUpdate *)v9 initWithAccount:account dataUpdateCommand:commandParams2 ackURL:v8];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100190990;
    v14[3] = &unk_1002CD1D0;
    v15 = completionCopy;
    [(FMDRequest *)v12 setCompletionHandler:v14];
    [provider enqueueRequest:v12];
  }

  else
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not acking the dataUpdate command because there is no ack URL", v13, 2u);
    }
  }
}

@end