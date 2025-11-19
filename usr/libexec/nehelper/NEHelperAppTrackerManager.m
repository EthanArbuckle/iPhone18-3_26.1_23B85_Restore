@interface NEHelperAppTrackerManager
- (NEHelperAppTrackerManager)initWithFirstMessage:(id)a3;
- (void)handleMessage:(id)a3;
@end

@implementation NEHelperAppTrackerManager

- (void)handleMessage:(id)a3
{
  v3 = a3;
  v4 = sub_1000016DC();
  if (!v4 || (v5 = v4[12], v4, (v5 & 1) == 0))
  {
    sub_10000BA0C(NEHelperServer, v3, 22, 0);
    goto LABEL_23;
  }

  uint64 = xpc_dictionary_get_uint64(v3, "app-tracker-check");
  v7 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "app-tracker-signing-identifier")];
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    if (uint64)
    {
      v26 = 0;
      v9 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v7 allowPlaceholder:0 error:&v26];
      v10 = v26;
      if (v10 || !v9)
      {
        sub_10000BA0C(NEHelperServer, v3, 22, 0);

        goto LABEL_20;
      }

      v11 = [v9 privacyTrackingDomains];
      if (v11)
      {
        v12 = v11;
        v13 = xpc_array_create(0, 0);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v23;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v23 != v17)
              {
                objc_enumerationMutation(v14);
              }

              xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v22 + 1) + 8 * i) UTF8String]);
            }

            v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
          }

          while (v16);
        }

        xpc_dictionary_set_value(v8, "app-tracker-domains", v13);
      }
    }

    v19 = v3;
    v20 = 0;
    v21 = v8;
  }

  else
  {
    v19 = v3;
    v20 = 22;
    v21 = 0;
  }

  sub_10000BA0C(NEHelperServer, v19, v20, v21);
LABEL_20:

LABEL_23:
}

- (NEHelperAppTrackerManager)initWithFirstMessage:(id)a3
{
  v4 = qword_100046978;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&qword_100046978, &stru_10003CC68);
  }

  v6 = xpc_dictionary_get_remote_connection(v5);

  objc_opt_self();
  v9.receiver = self;
  v9.super_class = NEHelperAppTrackerManager;
  v7 = [(NEHelperAppTrackerManager *)&v9 init];

  return v7;
}

@end