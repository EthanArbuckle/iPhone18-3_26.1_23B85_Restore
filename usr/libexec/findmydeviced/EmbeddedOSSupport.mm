@interface EmbeddedOSSupport
- (NSNumber)bioLockState;
- (id)disableBiometricID;
@end

@implementation EmbeddedOSSupport

- (NSNumber)bioLockState
{
  v2 = +[BiometricKit manager];
  v3 = [v2 identities:0];
  v21 = [v3 copy];

  v31 = 1;
  +[BKDeviceManager availableDevices];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v22 = *v28;
    *&v5 = 138412290;
    v19 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [BKDevice deviceWithDescriptor:*(*(&v27 + 1) + 8 * i) error:0, v19];
        if (v9)
        {
          v10 = sub_100002880();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v34 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking biometry device state - %@", buf, 0xCu);
          }

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v11 = v21;
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
LABEL_11:
            v15 = 0;
            while (1)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(v11);
              }

              if ([v9 bioLockoutState:&v31 forUser:objc_msgSend(*(*(&v23 + 1) + 8 * v15) error:{"userID"), 0}])
              {
                v16 = [NSNumber numberWithInteger:v31];

                v7 = v16;
                if (v31 != 1)
                {
                  break;
                }
              }

              if (v13 == ++v15)
              {
                v13 = [v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
                v16 = v7;
                if (v13)
                {
                  goto LABEL_11;
                }

                break;
              }
            }
          }

          else
          {
            v16 = v7;
          }

          v7 = v16;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;

  return v17;
}

- (id)disableBiometricID
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disabling biometry devices...", buf, 2u);
  }

  if (objc_opt_class())
  {
    v3 = +[BKDeviceManager availableDevices];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v21;
      v18 = NSLocalizedDescriptionKey;
      v17 = NSUnderlyingErrorKey;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [BKDevice deviceWithDescriptor:*(*(&v20 + 1) + 8 * i) error:0, v17, v18];
          v10 = sub_100002880();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v27 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disabling biometry device - %@", buf, 0xCu);
          }

          if (v9)
          {
            v19 = v6;
            v11 = [v9 forceBioLockoutForAllUsersWithError:&v19];
            v12 = v19;

            v13 = sub_100002880();
            v14 = v13;
            if (v11)
            {
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully disabled biometry", buf, 2u);
              }

              v6 = v12;
            }

            else
            {
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v27 = v12;
                _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error disabling biometry: %@", buf, 0xCu);
              }

              v24[0] = v18;
              v24[1] = v17;
              v25[0] = @"Couldn't disable biometry";
              v25[1] = v12;
              v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
              v6 = [NSError errorWithDomain:@"com.apple.icloud.FindMyDevice.EmbeddedOSSupport" code:3 userInfo:v14];
            }
          }

          else
          {
            v14 = sub_100002880();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not a biometry capable device", buf, 2u);
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v15 = sub_100002880();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10022EF78(v15);
    }

    v6 = [NSError errorWithDomain:@"com.apple.icloud.FindMyDevice.EmbeddedOSSupport" code:1 userInfo:0];
  }

  return v6;
}

@end