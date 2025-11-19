@interface CDAuthInfoProvider
+ (id)createWithRequest:(id)a3 client:(id)a4 error:(id *)a5;
@end

@implementation CDAuthInfoProvider

+ (id)createWithRequest:(id)a3 client:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [a3 overrideBundleIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v7 bundleIdentifier];
  }

  v11 = v10;

  if ([v11 length])
  {
    v18 = 0;
    v12 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v11 allowPlaceholder:0 error:&v18];
    v13 = v18;
    if (v12)
    {
      v14 = [[CDAuthInfoInstalledApplication alloc] initWithApplicationRecord:v12];
      goto LABEL_13;
    }

    v16 = cps_session_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10005E160(v13, v16);
    }

    v13 = v13;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_8:
    v15 = v12;
    v14 = 0;
    *a5 = v12;
    goto LABEL_13;
  }

  v12 = NSErrorF();
  v13 = 0;
  if (v12)
  {
    goto LABEL_8;
  }

LABEL_12:
  v14 = 0;
LABEL_13:

  return v14;
}

@end