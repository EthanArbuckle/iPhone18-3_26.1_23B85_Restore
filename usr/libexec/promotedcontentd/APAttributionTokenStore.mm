@interface APAttributionTokenStore
+ (id)storageLock;
- (APAttributionTokenStore)initWithStorage:(id)storage andSize:(unsigned int)size;
- (BOOL)addTokens:(id)tokens isDetailed:(BOOL)detailed error:(id *)error;
- (id)getToken:(BOOL)token error:(id *)error;
- (unint64_t)tokenCount:(BOOL)count error:(id *)error;
@end

@implementation APAttributionTokenStore

- (APAttributionTokenStore)initWithStorage:(id)storage andSize:(unsigned int)size
{
  storageCopy = storage;
  v13.receiver = self;
  v13.super_class = APAttributionTokenStore;
  v8 = [(APAttributionTokenStore *)&v13 init];
  v9 = v8;
  if (v8)
  {
    if (storageCopy)
    {
      objc_storeStrong(&v8->_storage, storage);
      v9->_size = size;
    }

    else
    {
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Attempting to initialize token store without a storage backing", v12, 2u);
      }
    }
  }

  return v9;
}

+ (id)storageLock
{
  if (qword_1004DF6C8 != -1)
  {
    sub_1003939CC();
  }

  v3 = qword_1004DF6C0;

  return v3;
}

- (id)getToken:(BOOL)token error:(id *)error
{
  tokenCopy = token;
  v6 = [APAttributionTokenStore storageLock:token];
  [v6 lock];

  v7 = @"com.apple.ap.pc.attribution.tokenCache.standard";
  if (tokenCopy)
  {
    v7 = @"com.apple.ap.pc.attribution.tokenCache.detailed";
  }

  v8 = v7;
  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [APKeychainSettings settingsForThisDeviceOnly:v8];
    *buf = 136643075;
    v40 = "[APAttributionTokenStore getToken:error:]";
    v41 = 2112;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{sensitive}s Using keychain settings %@", buf, 0x16u);
  }

  storage = [(APAttributionTokenStore *)self storage];
  v12 = [APKeychainSettings settingsForThisDeviceOnly:v8];
  v38 = 0;
  v13 = [storage valueForKey:v8 settings:v12 error:&v38];
  v14 = v38;

  if (v14 && [v14 code] != -25300)
  {
    v15 = APLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      code = [v14 code];
      localizedDescription = [v14 localizedDescription];
      *buf = 136643331;
      v40 = "[APAttributionTokenStore getToken:error:]";
      v41 = 2048;
      v42 = code;
      v43 = 2114;
      v44 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{sensitive}s Error reading tokens from cache code %ld: %{public}@", buf, 0x20u);
    }

    code2 = [v14 code];
    localizedDescription2 = [v14 localizedDescription];
    v20 = [NSString stringWithFormat:@"Error reading tokens from cache code %ld: %@", code2, localizedDescription2];
    userInfo = [v14 userInfo];
    CreateDiagnosticReport();
  }

  if (v13 && [v13 count])
  {
    v22 = [v13 mutableCopy];
    lastObject = [v22 lastObject];
    [v22 removeLastObject];

    storage2 = [(APAttributionTokenStore *)self storage];
    v25 = [APKeychainSettings settingsForThisDeviceOnly:v8];
    v37 = 0;
    [storage2 setValue:v22 forKey:v8 settings:v25 error:&v37];
    v14 = v37;

    if (v14)
    {
      v26 = APLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        code3 = [v14 code];
        localizedDescription3 = [v14 localizedDescription];
        *buf = 134218242;
        v40 = code3;
        v41 = 2114;
        v42 = localizedDescription3;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error setting tokens to cache code %ld: %{public}@", buf, 0x16u);
      }

      code4 = [v14 code];
      localizedDescription4 = [v14 localizedDescription];
      v31 = [NSString stringWithFormat:@"Error setting tokens to cache code %ld: %@", code4, localizedDescription4];
      userInfo2 = [v14 userInfo];
      CreateDiagnosticReport();

      v33 = +[APAttributionTokenStore storageLock];
      [v33 unlock];

      v34 = 0;
    }

    else
    {
      v35 = +[APAttributionTokenStore storageLock];
      [v35 unlock];

      v34 = lastObject;
    }
  }

  else
  {
    v22 = +[APAttributionTokenStore storageLock];
    [v22 unlock];
    v34 = 0;
  }

  return v34;
}

- (unint64_t)tokenCount:(BOOL)count error:(id *)error
{
  v6 = @"com.apple.ap.pc.attribution.tokenCache.standard";
  if (count)
  {
    v6 = @"com.apple.ap.pc.attribution.tokenCache.detailed";
  }

  v7 = v6;
  v8 = +[APAttributionTokenStore storageLock];
  [v8 lock];

  storage = [(APAttributionTokenStore *)self storage];
  v10 = [APKeychainSettings settingsForThisDeviceOnly:v7];
  v18 = 0;
  v11 = [storage valueForKey:v7 settings:v10 error:&v18];

  v12 = v18;
  v13 = +[APAttributionTokenStore storageLock];
  [v13 unlock];

  if (v11)
  {
    v14 = [v11 count];
  }

  else
  {
    code = [v12 code];
    v14 = 0;
    if (error && code != -25300)
    {
      v16 = v12;
      v14 = 0;
      *error = v12;
    }
  }

  return v14;
}

- (BOOL)addTokens:(id)tokens isDetailed:(BOOL)detailed error:(id *)error
{
  detailedCopy = detailed;
  tokensCopy = tokens;
  v9 = @"com.apple.ap.pc.attribution.tokenCache.standard";
  if (detailedCopy)
  {
    v9 = @"com.apple.ap.pc.attribution.tokenCache.detailed";
  }

  v10 = v9;
  v11 = +[APAttributionTokenStore storageLock];
  [v11 lock];

  v12 = APLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [APKeychainSettings settingsForThisDeviceOnly:v10];
    *buf = 136643075;
    v45 = "[APAttributionTokenStore addTokens:isDetailed:error:]";
    v46 = 2112;
    v47 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{sensitive}s Using keychain settings %@", buf, 0x16u);
  }

  storage = [(APAttributionTokenStore *)self storage];
  v15 = [APKeychainSettings settingsForThisDeviceOnly:v10];
  v41 = 0;
  v16 = [storage valueForKey:v10 settings:v15 error:&v41];
  v17 = v41;

  if (!v17 || [v17 code] == -25300)
  {

    v18 = +[NSMutableArray array];
    [v18 addObjectsFromArray:v16];
    [v18 addObjectsFromArray:tokensCopy];
    v19 = [v18 count];
    if (v19 <= [(APAttributionTokenStore *)self size])
    {
      storage2 = [(APAttributionTokenStore *)self storage];
      v25 = [APKeychainSettings settingsForThisDeviceOnly:v10];
      v40 = 0;
      [storage2 setValue:v18 forKey:v10 settings:v25 error:&v40];
      v17 = v40;

      if (!v17)
      {
        v20 = +[APAttributionTokenStore storageLock];
        [v20 unlock];
        v33 = 1;
        goto LABEL_18;
      }

      v26 = APLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        code = [v17 code];
        localizedDescription = [v17 localizedDescription];
        *buf = 134218242;
        v45 = code;
        v46 = 2114;
        v47 = localizedDescription;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error setting tokens to refill cache code %ld: %{public}@", buf, 0x16u);
      }

      code2 = [v17 code];
      localizedDescription2 = [v17 localizedDescription];
      v31 = [NSString stringWithFormat:@"Error setting tokens to refill cache code %ld: %@", code2, localizedDescription2];
      userInfo = [v17 userInfo];
      CreateDiagnosticReport();

      v20 = +[APAttributionTokenStore storageLock];
      [v20 unlock];
    }

    else
    {
      v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%{sensitive}s Adding more tokens than space available in cache %lu", "-[APAttributionTokenStore addTokens:isDetailed:error:]", [v18 count]);
      v21 = APLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      if (error)
      {
        v42 = NSLocalizedDescriptionKey;
        v43 = v20;
        v22 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        *error = [NSError errorWithDomain:@"com.apple.ap.attribution.token" code:1300 userInfo:v22];
      }

      v23 = +[APAttributionTokenStore storageLock];
      [v23 unlock];

      v17 = 0;
    }

    v33 = 0;
LABEL_18:

    goto LABEL_24;
  }

  v34 = APLogForCategory();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    code3 = [v17 code];
    localizedDescription3 = [v17 localizedDescription];
    *buf = 136643331;
    v45 = "[APAttributionTokenStore addTokens:isDetailed:error:]";
    v46 = 2048;
    v47 = code3;
    v48 = 2114;
    v49 = localizedDescription3;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{sensitive}s Error reading tokens from cache code %ld: %{public}@", buf, 0x20u);
  }

  userInfo2 = [v17 userInfo];
  CreateDiagnosticReport();

  if (error)
  {
    v38 = v17;
    *error = v17;
  }

  v18 = +[APAttributionTokenStore storageLock];
  [v18 unlock];
  v33 = 0;
LABEL_24:

  return v33;
}

@end