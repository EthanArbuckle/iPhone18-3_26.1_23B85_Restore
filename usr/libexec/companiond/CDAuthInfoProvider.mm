@interface CDAuthInfoProvider
+ (id)createWithRequest:(id)request client:(id)client error:(id *)error;
@end

@implementation CDAuthInfoProvider

+ (id)createWithRequest:(id)request client:(id)client error:(id *)error
{
  clientCopy = client;
  overrideBundleIdentifier = [request overrideBundleIdentifier];
  v9 = overrideBundleIdentifier;
  if (overrideBundleIdentifier)
  {
    bundleIdentifier = overrideBundleIdentifier;
  }

  else
  {
    bundleIdentifier = [clientCopy bundleIdentifier];
  }

  v11 = bundleIdentifier;

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
    *error = v12;
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