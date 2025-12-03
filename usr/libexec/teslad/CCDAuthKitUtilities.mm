@interface CCDAuthKitUtilities
+ (BOOL)shouldActivateAnisette;
+ (void)midWithCompletion:(id)completion;
@end

@implementation CCDAuthKitUtilities

+ (BOOL)shouldActivateAnisette
{
  v9 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v2 = off_100025A00;
  v13 = off_100025A00;
  if (!off_100025A00)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v15 = sub_10000150C;
    v16 = &unk_10001C638;
    v17 = &v10;
    sub_10000150C(&buf);
    v2 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v2)
  {
    sub_10000F93C();
    __break(1u);
  }

  v3 = v2(&v9);
  v4 = v9;
  if (v4 || !v3)
  {
    v7 = *(DEPLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to load activation record when activating anisette with error: %{public}@", &buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v5 = [v3 objectForKeyedSubscript:@"DeviceConfigurationFlags"];
    v6 = (~[v5 integerValue] & 0x21) == 0;
  }

  return v6;
}

+ (void)midWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = qword_100025A10;
  v14 = qword_100025A10;
  if (!qword_100025A10)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000016C0;
    v10[3] = &unk_10001C638;
    v10[4] = &v11;
    sub_1000016C0(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = objc_opt_new();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000013FC;
  v8[3] = &unk_10001C610;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 anisetteDataWithCompletion:v8];
}

@end