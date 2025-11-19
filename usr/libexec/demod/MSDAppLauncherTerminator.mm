@interface MSDAppLauncherTerminator
+ (BOOL)launchApp:(id)a3 withOptions:(id)a4 outError:(id *)a5;
+ (BOOL)terminateApp:(id)a3 outError:(id *)a4;
@end

@implementation MSDAppLauncherTerminator

+ (BOOL)launchApp:(id)a3 withOptions:(id)a4 outError:(id *)a5
{
  v7 = a3;
  v8 = a4;
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

  if (v8)
  {
    [v13 addEntriesFromDictionary:v8];
  }

  v14 = [FBSOpenApplicationOptions optionsWithDictionary:v13];
  v15 = sub_100063A54();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v7;
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
  v17 = v7;
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

  if (a5)
  {
    *a5 = v28[5];
  }

  v20 = *(v34 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v20 & 1;
}

+ (BOOL)terminateApp:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v5];
  v7 = [[RBSTerminateContext alloc] initWithExplanation:@"Terminated by demod"];
  v8 = [[RBSTerminateRequest alloc] initWithPredicate:v6 context:v7];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Terminating app: %{public}@", buf, 0xCu);
  }

  v14 = 0;
  v10 = [v8 execute:&v14];
  v11 = v14;
  if ((v10 & 1) == 0)
  {
    sub_1000C8D24(v5, v11);
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    v12 = v11;
    *a4 = v11;
  }

LABEL_6:

  return v10;
}

@end