@interface MSDAppLauncherTerminator
+ (BOOL)launchApp:(id)app withOptions:(id)options outError:(id *)error;
+ (BOOL)terminateApp:(id)app outError:(id *)error;
@end

@implementation MSDAppLauncherTerminator

+ (BOOL)launchApp:(id)app withOptions:(id)options outError:(id *)error
{
  appCopy = app;
  optionsCopy = options;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100017148;
  v31 = sub_100017158;
  v32 = 0;
  v9 = dispatch_semaphore_create(0);
  v10 = dispatch_time(0, 5000000000);
  v11 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v39 = FBSOpenApplicationOptionKeyUnlockDevice;
  v40 = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v13 = [NSMutableDictionary dictionaryWithDictionary:v12];

  if (optionsCopy)
  {
    [v13 addEntriesFromDictionary:optionsCopy];
  }

  v14 = [FBSOpenApplicationOptions optionsWithDictionary:v13];
  v15 = sub_100063A54();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = appCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Launching app: %{public}@", buf, 0xCu);
  }

  v16 = sub_100063A54();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_1000C8BC4(v13, v16);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100017160;
  v22[3] = &unk_10016A108;
  v25 = &v27;
  v17 = appCopy;
  v23 = v17;
  v26 = &v33;
  v18 = v9;
  v24 = v18;
  [v11 openApplication:v17 withOptions:v14 completion:v22];
  if (dispatch_semaphore_wait(v18, v10))
  {
    v19 = sub_100063A54();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000C8C3C(v19);
    }
  }

  if (error)
  {
    *error = v28[5];
  }

  v20 = *(v34 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v20 & 1;
}

+ (BOOL)terminateApp:(id)app outError:(id *)error
{
  appCopy = app;
  v6 = [RBSProcessPredicate predicateMatchingBundleIdentifier:appCopy];
  v7 = [[RBSTerminateContext alloc] initWithExplanation:@"Terminated by demod"];
  v8 = [[RBSTerminateRequest alloc] initWithPredicate:v6 context:v7];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = appCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Terminating app: %{public}@", buf, 0xCu);
  }

  v14 = 0;
  v10 = [v8 execute:&v14];
  v11 = v14;
  if ((v10 & 1) == 0)
  {
    sub_1000C8D24(appCopy, v11);
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (error)
  {
LABEL_5:
    v12 = v11;
    *error = v11;
  }

LABEL_6:

  return v10;
}

@end