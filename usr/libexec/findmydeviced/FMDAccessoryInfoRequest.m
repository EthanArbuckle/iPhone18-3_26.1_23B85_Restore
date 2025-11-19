@interface FMDAccessoryInfoRequest
- (FMDAccessoryInfoRequest)initWithAccount:(id)a3 registry:(id)a4 accessoryTypes:(id)a5;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDAccessoryInfoRequest

- (FMDAccessoryInfoRequest)initWithAccount:(id)a3 registry:(id)a4 accessoryTypes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = FMDAccessoryInfoRequest;
  v11 = [(FMDRequest *)&v17 initWithAccount:v8];
  if (!v11)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v8 extAccessoryConfigURL];
    baseURL = v11->_baseURL;
    v11->_baseURL = v12;

    objc_storeStrong(&v11->_registry, a4);
    objc_storeStrong(&v11->_accessoryTypes, a5);
LABEL_4:
    v14 = v11;
    goto LABEL_8;
  }

  v15 = sub_10000BE38();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1002265FC(v8, v15);
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (id)requestUrl
{
  v2 = [(FMDAccessoryInfoRequest *)self baseURL];
  v3 = [NSString stringWithFormat:@"%@/accessoryInfo", v2];

  v4 = [NSURL URLWithString:v3];
  v5 = sub_10000BE38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDAccessoryInfoRequest requestURL = %@", buf, 0xCu);
  }

  return v4;
}

- (id)requestHeaders
{
  v6.receiver = self;
  v6.super_class = FMDAccessoryInfoRequest;
  v2 = [(FMDRequest *)&v6 requestHeaders];
  v3 = +[FMDServerConfig sharedInstance];
  v4 = [v3 mmeClientInfo];
  [v2 fm_safelyMapKey:@"X-MMe-Client-Info" toObject:v4];

  return v2;
}

- (id)requestBody
{
  v25.receiver = self;
  v25.super_class = FMDAccessoryInfoRequest;
  v19 = [(FMDRequest *)&v25 requestBody];
  v3 = [NSMutableArray alloc];
  v4 = [(FMDAccessoryInfoRequest *)self accessoryTypes];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(FMDAccessoryInfoRequest *)self accessoryTypes];
  v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [(FMDAccessoryInfoRequest *)self registry];
        v12 = [v11 configForAccessoryType:v10];
        v13 = [v12 version];
        v14 = v13;
        v15 = &stru_1002DCE08;
        if (v13)
        {
          v15 = v13;
        }

        v16 = v15;

        v17 = [[NSMutableDictionary alloc] initWithCapacity:2];
        [v17 fm_safeSetObject:v10 forKey:@"type"];
        [v17 fm_safeSetObject:v16 forKey:@"cachedVersion"];

        [v5 addObject:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  [v19 fm_safeSetObject:v5 forKey:@"accessoryTypes"];

  return v19;
}

@end