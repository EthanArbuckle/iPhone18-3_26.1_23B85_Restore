@interface DMDUpdateAppOperation
+ (id)whitelistedClassesForRequest;
- (void)_endOperationWithBundleIdentifier:(id)a3;
- (void)_promptIfNeededAndUpdateAppForRequest:(id)a3 metadata:(id)a4;
- (void)_resumeUpdateForBundleIdentifier:(id)a3;
- (void)_runWithRequest:(id)a3 metadata:(id)a4;
- (void)_setState:(unint64_t)a3 forBundleIdentifier:(id)a4;
- (void)_showUpdateFailurePromptIfNeededForRequest:(id)a3 metadata:(id)a4;
- (void)_startUpdateAppForRequest:(id)a3 metadata:(id)a4;
- (void)endOperationWithError:(id)a3;
- (void)endOperationWithResultObject:(id)a3;
- (void)runWithRequest:(id)a3;
- (void)waitUntilFinished;
@end

@implementation DMDUpdateAppOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDUpdateAppOperation;
  [(DMDAppOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)endOperationWithResultObject:(id)a3
{
  v4 = a3;
  if (([(DMDUpdateAppOperation *)self isFinished]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = DMDUpdateAppOperation;
    [(DMDUpdateAppOperation *)&v5 endOperationWithResultObject:v4];
  }
}

- (void)endOperationWithError:(id)a3
{
  v4 = a3;
  if (([(DMDUpdateAppOperation *)self isFinished]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = DMDUpdateAppOperation;
    [(DMDUpdateAppOperation *)&v5 endOperationWithError:v4];
  }
}

- (void)runWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[DMDAppController sharedController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074B1C;
  v7[3] = &unk_1000CF2C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getMetadataForAppRequest:v6 completion:v7];
}

- (void)_runWithRequest:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 bundleIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (+[DMDAppController sharedController](DMDAppController, "sharedController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 stateForBundleIdentifier:v8], v9, v10 != 12))
  {
    v12 = [v7 lifeCycle];
    v13 = [v12 currentState];

    if (v13 <= 8)
    {
      if (((1 << v13) & 0x10F) != 0)
      {
        v15 = DMFBundleIdentifierErrorKey;
        v16 = v8;
        v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v14 = DMFErrorWithCodeAndUserInfo();
        [(DMDUpdateAppOperation *)self endOperationWithError:v14];

        goto LABEL_7;
      }

      if (((1 << v13) & 0x60) != 0)
      {
        [(DMDUpdateAppOperation *)self _endOperationWithBundleIdentifier:v8];
        goto LABEL_8;
      }

      if (v13 == 7)
      {
        [(DMDUpdateAppOperation *)self _resumeUpdateForBundleIdentifier:v8];
        goto LABEL_8;
      }
    }

    [(DMDUpdateAppOperation *)self _promptIfNeededAndUpdateAppForRequest:v6 metadata:v7];
    goto LABEL_8;
  }

  v11 = DMFErrorWithCodeAndUserInfo();
  [(DMDUpdateAppOperation *)self endOperationWithError:v11];
LABEL_7:

LABEL_8:
}

- (void)_resumeUpdateForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resume update for bundle identifier: %{public}@", buf, 0xCu);
  }

  v6 = +[DMDAppController sharedController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100074EB8;
  v8[3] = &unk_1000CDBD0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 resumeAppUpdateWithBundleIdentifier:v7 completion:v8];
}

- (void)_promptIfNeededAndUpdateAppForRequest:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (+[DMDDeviceController shared](DMDDeviceController, "shared"), v8 = objc_claimAutoreleasedReturnValue(), [v8 isInSingleAppMode], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, !v10))
  {
    v11 = [v7 bundleIdentifier];
    v12 = +[DMDAppController sharedController];
    v13 = [v12 foregroundBundleIdentifiers];
    v14 = [v13 containsObject:v11];

    if (v14)
    {
      [(DMDUpdateAppOperation *)self setDidPromptUser:1];
      [(DMDUpdateAppOperation *)self _setState:12 forBundleIdentifier:v11];
      v15 = [v6 originator];
      v32 = v15;
      v16 = [v7 isStoreApp];
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = v17;
      if (v16)
      {
        v19 = @"%@ is about to update the app “%@” from the App Store.";
      }

      else
      {
        v19 = @"%@ is about to update the app “%@”.";
      }

      v31 = [v17 localizedStringForKey:v19 value:&stru_1000D0428 table:@"DMFNotifications"];

      v20 = objc_opt_new();
      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"App Update" value:&stru_1000D0428 table:@"DMFNotifications"];
      [v20 setHeader:v22];

      v23 = [v7 displayName];
      v24 = [NSString stringWithFormat:v31, v15, v23];
      [v20 setMessage:v24];

      v25 = [NSBundle bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"Update" value:&stru_1000D0428 table:@"DMFNotifications"];
      [v20 setDefaultButtonTitle:v26];

      v27 = [NSBundle bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"Cancel" value:&stru_1000D0428 table:@"DMFNotifications"];
      [v20 setAlternateButtonTitle:v28];

      v29 = +[DMDUserNotificationController sharedController];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000752CC;
      v33[3] = &unk_1000CFF98;
      v33[4] = self;
      v30 = v11;
      v34 = v30;
      v35 = v6;
      v36 = v7;
      [v29 showNotification:v20 completion:v33];

      [(DMDUpdateAppOperation *)self _endOperationWithBundleIdentifier:v30];
    }

    else
    {
      [(DMDUpdateAppOperation *)self _startUpdateAppForRequest:v6 metadata:v7];
    }
  }

  else
  {
    [(DMDUpdateAppOperation *)self _startUpdateAppForRequest:v6 metadata:v7];
  }
}

- (void)_startUpdateAppForRequest:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 bundleIdentifier];
  v9 = [v7 bundleIdentifier];
  [v6 setBundleIdentifier:v9];

  v10 = [v7 storeItemIdentifier];
  [v6 setStoreItemIdentifier:v10];

  v11 = DMFAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Start updating app for request: %{public}@", buf, 0xCu);
  }

  v12 = +[DMDAppController sharedController];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100075534;
  v16[3] = &unk_1000CFE70;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  [v12 startUpdatingAppForRequest:v15 metadata:v14 completion:v16];
}

- (void)_showUpdateFailurePromptIfNeededForRequest:(id)a3 metadata:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [(DMDUpdateAppOperation *)self didPromptUser])
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"The app “%@” could not be updated." value:&stru_1000D0428 table:@"DMFNotifications"];

    v11 = objc_opt_new();
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"App Update" value:&stru_1000D0428 table:@"DMFNotifications"];
    [v11 setHeader:v13];

    v14 = [v6 displayName];
    v15 = [NSString localizedStringWithFormat:v10, v14];
    [v11 setMessage:v15];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"Dismiss" value:&stru_1000D0428 table:@"DMFNotifications"];
    [v11 setDefaultButtonTitle:v17];

    v18 = DMFAppLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100087CE4(v18);
    }

    v19 = +[DMDUserNotificationController sharedController];
    [v19 showNotification:v11 completion:0];
  }
}

- (void)_setState:(unint64_t)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(DMDUpdateAppOperation *)self request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = +[DMDAppController sharedController];
    v12 = 0;
    v10 = [v9 setState:a3 forBundleIdentifier:v6 error:&v12];
    v11 = v12;

    if ((v10 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100087D28(a3, v6);
    }
  }
}

- (void)_endOperationWithBundleIdentifier:(id)a3
{
  v9 = a3;
  v4 = [(DMDUpdateAppOperation *)self request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = +[DMDAppController sharedController];
    v7 = [v6 stateForBundleIdentifier:v9];

    v8 = [[DMFMDMv1InstallAppResultObject alloc] initWithBundleIdentifier:v9 state:v7];
  }

  else
  {
    v8 = 0;
  }

  [(DMDUpdateAppOperation *)self endOperationWithResultObject:v8];
}

@end