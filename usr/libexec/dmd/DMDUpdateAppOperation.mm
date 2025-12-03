@interface DMDUpdateAppOperation
+ (id)whitelistedClassesForRequest;
- (void)_endOperationWithBundleIdentifier:(id)identifier;
- (void)_promptIfNeededAndUpdateAppForRequest:(id)request metadata:(id)metadata;
- (void)_resumeUpdateForBundleIdentifier:(id)identifier;
- (void)_runWithRequest:(id)request metadata:(id)metadata;
- (void)_setState:(unint64_t)state forBundleIdentifier:(id)identifier;
- (void)_showUpdateFailurePromptIfNeededForRequest:(id)request metadata:(id)metadata;
- (void)_startUpdateAppForRequest:(id)request metadata:(id)metadata;
- (void)endOperationWithError:(id)error;
- (void)endOperationWithResultObject:(id)object;
- (void)runWithRequest:(id)request;
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

- (void)endOperationWithResultObject:(id)object
{
  objectCopy = object;
  if (([(DMDUpdateAppOperation *)self isFinished]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = DMDUpdateAppOperation;
    [(DMDUpdateAppOperation *)&v5 endOperationWithResultObject:objectCopy];
  }
}

- (void)endOperationWithError:(id)error
{
  errorCopy = error;
  if (([(DMDUpdateAppOperation *)self isFinished]& 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = DMDUpdateAppOperation;
    [(DMDUpdateAppOperation *)&v5 endOperationWithError:errorCopy];
  }
}

- (void)runWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[DMDAppController sharedController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100074B1C;
  v7[3] = &unk_1000CF2C0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  [v5 getMetadataForAppRequest:v6 completion:v7];
}

- (void)_runWithRequest:(id)request metadata:(id)metadata
{
  requestCopy = request;
  metadataCopy = metadata;
  bundleIdentifier = [metadataCopy bundleIdentifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (+[DMDAppController sharedController](DMDAppController, "sharedController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 stateForBundleIdentifier:bundleIdentifier], v9, v10 != 12))
  {
    lifeCycle = [metadataCopy lifeCycle];
    currentState = [lifeCycle currentState];

    if (currentState <= 8)
    {
      if (((1 << currentState) & 0x10F) != 0)
      {
        v15 = DMFBundleIdentifierErrorKey;
        v16 = bundleIdentifier;
        v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v14 = DMFErrorWithCodeAndUserInfo();
        [(DMDUpdateAppOperation *)self endOperationWithError:v14];

        goto LABEL_7;
      }

      if (((1 << currentState) & 0x60) != 0)
      {
        [(DMDUpdateAppOperation *)self _endOperationWithBundleIdentifier:bundleIdentifier];
        goto LABEL_8;
      }

      if (currentState == 7)
      {
        [(DMDUpdateAppOperation *)self _resumeUpdateForBundleIdentifier:bundleIdentifier];
        goto LABEL_8;
      }
    }

    [(DMDUpdateAppOperation *)self _promptIfNeededAndUpdateAppForRequest:requestCopy metadata:metadataCopy];
    goto LABEL_8;
  }

  v11 = DMFErrorWithCodeAndUserInfo();
  [(DMDUpdateAppOperation *)self endOperationWithError:v11];
LABEL_7:

LABEL_8:
}

- (void)_resumeUpdateForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = DMFAppLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resume update for bundle identifier: %{public}@", buf, 0xCu);
  }

  v6 = +[DMDAppController sharedController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100074EB8;
  v8[3] = &unk_1000CDBD0;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [v6 resumeAppUpdateWithBundleIdentifier:v7 completion:v8];
}

- (void)_promptIfNeededAndUpdateAppForRequest:(id)request metadata:(id)metadata
{
  requestCopy = request;
  metadataCopy = metadata;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (+[DMDDeviceController shared](DMDDeviceController, "shared"), v8 = objc_claimAutoreleasedReturnValue(), [v8 isInSingleAppMode], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, !v10))
  {
    bundleIdentifier = [metadataCopy bundleIdentifier];
    v12 = +[DMDAppController sharedController];
    foregroundBundleIdentifiers = [v12 foregroundBundleIdentifiers];
    v14 = [foregroundBundleIdentifiers containsObject:bundleIdentifier];

    if (v14)
    {
      [(DMDUpdateAppOperation *)self setDidPromptUser:1];
      [(DMDUpdateAppOperation *)self _setState:12 forBundleIdentifier:bundleIdentifier];
      originator = [requestCopy originator];
      v32 = originator;
      isStoreApp = [metadataCopy isStoreApp];
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = v17;
      if (isStoreApp)
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

      displayName = [metadataCopy displayName];
      v24 = [NSString stringWithFormat:v31, originator, displayName];
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
      v30 = bundleIdentifier;
      v34 = v30;
      v35 = requestCopy;
      v36 = metadataCopy;
      [v29 showNotification:v20 completion:v33];

      [(DMDUpdateAppOperation *)self _endOperationWithBundleIdentifier:v30];
    }

    else
    {
      [(DMDUpdateAppOperation *)self _startUpdateAppForRequest:requestCopy metadata:metadataCopy];
    }
  }

  else
  {
    [(DMDUpdateAppOperation *)self _startUpdateAppForRequest:requestCopy metadata:metadataCopy];
  }
}

- (void)_startUpdateAppForRequest:(id)request metadata:(id)metadata
{
  requestCopy = request;
  metadataCopy = metadata;
  bundleIdentifier = [metadataCopy bundleIdentifier];
  bundleIdentifier2 = [metadataCopy bundleIdentifier];
  [requestCopy setBundleIdentifier:bundleIdentifier2];

  storeItemIdentifier = [metadataCopy storeItemIdentifier];
  [requestCopy setStoreItemIdentifier:storeItemIdentifier];

  v11 = DMFAppLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = requestCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Start updating app for request: %{public}@", buf, 0xCu);
  }

  v12 = +[DMDAppController sharedController];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100075534;
  v16[3] = &unk_1000CFE70;
  v16[4] = self;
  v17 = requestCopy;
  v18 = metadataCopy;
  v19 = bundleIdentifier;
  v13 = bundleIdentifier;
  v14 = metadataCopy;
  v15 = requestCopy;
  [v12 startUpdatingAppForRequest:v15 metadata:v14 completion:v16];
}

- (void)_showUpdateFailurePromptIfNeededForRequest:(id)request metadata:(id)metadata
{
  metadataCopy = metadata;
  requestCopy = request;
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

    displayName = [metadataCopy displayName];
    v15 = [NSString localizedStringWithFormat:v10, displayName];
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

- (void)_setState:(unint64_t)state forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  request = [(DMDUpdateAppOperation *)self request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = +[DMDAppController sharedController];
    v12 = 0;
    v10 = [v9 setState:state forBundleIdentifier:identifierCopy error:&v12];
    v11 = v12;

    if ((v10 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100087D28(state, identifierCopy);
    }
  }
}

- (void)_endOperationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  request = [(DMDUpdateAppOperation *)self request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = +[DMDAppController sharedController];
    v7 = [v6 stateForBundleIdentifier:identifierCopy];

    v8 = [[DMFMDMv1InstallAppResultObject alloc] initWithBundleIdentifier:identifierCopy state:v7];
  }

  else
  {
    v8 = 0;
  }

  [(DMDUpdateAppOperation *)self endOperationWithResultObject:v8];
}

@end