@interface FMDAccessoryInfoRequest
- (FMDAccessoryInfoRequest)initWithAccount:(id)account registry:(id)registry accessoryTypes:(id)types;
- (id)requestBody;
- (id)requestHeaders;
- (id)requestUrl;
@end

@implementation FMDAccessoryInfoRequest

- (FMDAccessoryInfoRequest)initWithAccount:(id)account registry:(id)registry accessoryTypes:(id)types
{
  accountCopy = account;
  registryCopy = registry;
  typesCopy = types;
  v17.receiver = self;
  v17.super_class = FMDAccessoryInfoRequest;
  v11 = [(FMDRequest *)&v17 initWithAccount:accountCopy];
  if (!v11)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extAccessoryConfigURL = [accountCopy extAccessoryConfigURL];
    baseURL = v11->_baseURL;
    v11->_baseURL = extAccessoryConfigURL;

    objc_storeStrong(&v11->_registry, registry);
    objc_storeStrong(&v11->_accessoryTypes, types);
LABEL_4:
    v14 = v11;
    goto LABEL_8;
  }

  v15 = sub_10000BE38();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1002265FC(accountCopy, v15);
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (id)requestUrl
{
  baseURL = [(FMDAccessoryInfoRequest *)self baseURL];
  v3 = [NSString stringWithFormat:@"%@/accessoryInfo", baseURL];

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
  requestHeaders = [(FMDRequest *)&v6 requestHeaders];
  v3 = +[FMDServerConfig sharedInstance];
  mmeClientInfo = [v3 mmeClientInfo];
  [requestHeaders fm_safelyMapKey:@"X-MMe-Client-Info" toObject:mmeClientInfo];

  return requestHeaders;
}

- (id)requestBody
{
  v25.receiver = self;
  v25.super_class = FMDAccessoryInfoRequest;
  requestBody = [(FMDRequest *)&v25 requestBody];
  v3 = [NSMutableArray alloc];
  accessoryTypes = [(FMDAccessoryInfoRequest *)self accessoryTypes];
  v5 = [v3 initWithCapacity:{objc_msgSend(accessoryTypes, "count")}];

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
        registry = [(FMDAccessoryInfoRequest *)self registry];
        v12 = [registry configForAccessoryType:v10];
        version = [v12 version];
        v14 = version;
        v15 = &stru_1002DCE08;
        if (version)
        {
          v15 = version;
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

  [requestBody fm_safeSetObject:v5 forKey:@"accessoryTypes"];

  return requestBody;
}

@end