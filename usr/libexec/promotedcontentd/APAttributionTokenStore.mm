@interface APAttributionTokenStore
+ (id)storageLock;
- (APAttributionTokenStore)initWithStorage:(id)a3 andSize:(unsigned int)a4;
- (BOOL)addTokens:(id)a3 isDetailed:(BOOL)a4 error:(id *)a5;
- (id)getToken:(BOOL)a3 error:(id *)a4;
- (unint64_t)tokenCount:(BOOL)a3 error:(id *)a4;
@end

@implementation APAttributionTokenStore

- (APAttributionTokenStore)initWithStorage:(id)a3 andSize:(unsigned int)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = APAttributionTokenStore;
  v8 = [(APAttributionTokenStore *)&v13 init];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      objc_storeStrong(&v8->_storage, a3);
      v9->_size = a4;
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

- (id)getToken:(BOOL)a3 error:(id *)a4
{
  v4 = a3;
  v6 = [APAttributionTokenStore storageLock:a3];
  [v6 lock];

  v7 = @"com.apple.ap.pc.attribution.tokenCache.standard";
  if (v4)
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

  v11 = [(APAttributionTokenStore *)self storage];
  v12 = [APKeychainSettings settingsForThisDeviceOnly:v8];
  v38 = 0;
  v13 = [v11 valueForKey:v8 settings:v12 error:&v38];
  v14 = v38;

  if (v14 && [v14 code] != -25300)
  {
    v15 = APLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v14 code];
      v17 = [v14 localizedDescription];
      *buf = 136643331;
      v40 = "[APAttributionTokenStore getToken:error:]";
      v41 = 2048;
      v42 = v16;
      v43 = 2114;
      v44 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{sensitive}s Error reading tokens from cache code %ld: %{public}@", buf, 0x20u);
    }

    v18 = [v14 code];
    v19 = [v14 localizedDescription];
    v20 = [NSString stringWithFormat:@"Error reading tokens from cache code %ld: %@", v18, v19];
    v21 = [v14 userInfo];
    CreateDiagnosticReport();
  }

  if (v13 && [v13 count])
  {
    v22 = [v13 mutableCopy];
    v23 = [v22 lastObject];
    [v22 removeLastObject];

    v24 = [(APAttributionTokenStore *)self storage];
    v25 = [APKeychainSettings settingsForThisDeviceOnly:v8];
    v37 = 0;
    [v24 setValue:v22 forKey:v8 settings:v25 error:&v37];
    v14 = v37;

    if (v14)
    {
      v26 = APLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v14 code];
        v28 = [v14 localizedDescription];
        *buf = 134218242;
        v40 = v27;
        v41 = 2114;
        v42 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error setting tokens to cache code %ld: %{public}@", buf, 0x16u);
      }

      v29 = [v14 code];
      v30 = [v14 localizedDescription];
      v31 = [NSString stringWithFormat:@"Error setting tokens to cache code %ld: %@", v29, v30];
      v32 = [v14 userInfo];
      CreateDiagnosticReport();

      v33 = +[APAttributionTokenStore storageLock];
      [v33 unlock];

      v34 = 0;
    }

    else
    {
      v35 = +[APAttributionTokenStore storageLock];
      [v35 unlock];

      v34 = v23;
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

- (unint64_t)tokenCount:(BOOL)a3 error:(id *)a4
{
  v6 = @"com.apple.ap.pc.attribution.tokenCache.standard";
  if (a3)
  {
    v6 = @"com.apple.ap.pc.attribution.tokenCache.detailed";
  }

  v7 = v6;
  v8 = +[APAttributionTokenStore storageLock];
  [v8 lock];

  v9 = [(APAttributionTokenStore *)self storage];
  v10 = [APKeychainSettings settingsForThisDeviceOnly:v7];
  v18 = 0;
  v11 = [v9 valueForKey:v7 settings:v10 error:&v18];

  v12 = v18;
  v13 = +[APAttributionTokenStore storageLock];
  [v13 unlock];

  if (v11)
  {
    v14 = [v11 count];
  }

  else
  {
    v15 = [v12 code];
    v14 = 0;
    if (a4 && v15 != -25300)
    {
      v16 = v12;
      v14 = 0;
      *a4 = v12;
    }
  }

  return v14;
}

- (BOOL)addTokens:(id)a3 isDetailed:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = @"com.apple.ap.pc.attribution.tokenCache.standard";
  if (v6)
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

  v14 = [(APAttributionTokenStore *)self storage];
  v15 = [APKeychainSettings settingsForThisDeviceOnly:v10];
  v41 = 0;
  v16 = [v14 valueForKey:v10 settings:v15 error:&v41];
  v17 = v41;

  if (!v17 || [v17 code] == -25300)
  {

    v18 = +[NSMutableArray array];
    [v18 addObjectsFromArray:v16];
    [v18 addObjectsFromArray:v8];
    v19 = [v18 count];
    if (v19 <= [(APAttributionTokenStore *)self size])
    {
      v24 = [(APAttributionTokenStore *)self storage];
      v25 = [APKeychainSettings settingsForThisDeviceOnly:v10];
      v40 = 0;
      [v24 setValue:v18 forKey:v10 settings:v25 error:&v40];
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
        v27 = [v17 code];
        v28 = [v17 localizedDescription];
        *buf = 134218242;
        v45 = v27;
        v46 = 2114;
        v47 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error setting tokens to refill cache code %ld: %{public}@", buf, 0x16u);
      }

      v29 = [v17 code];
      v30 = [v17 localizedDescription];
      v31 = [NSString stringWithFormat:@"Error setting tokens to refill cache code %ld: %@", v29, v30];
      v32 = [v17 userInfo];
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

      if (a5)
      {
        v42 = NSLocalizedDescriptionKey;
        v43 = v20;
        v22 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        *a5 = [NSError errorWithDomain:@"com.apple.ap.attribution.token" code:1300 userInfo:v22];
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
    v35 = [v17 code];
    v36 = [v17 localizedDescription];
    *buf = 136643331;
    v45 = "[APAttributionTokenStore addTokens:isDetailed:error:]";
    v46 = 2048;
    v47 = v35;
    v48 = 2114;
    v49 = v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{sensitive}s Error reading tokens from cache code %ld: %{public}@", buf, 0x20u);
  }

  v37 = [v17 userInfo];
  CreateDiagnosticReport();

  if (a5)
  {
    v38 = v17;
    *a5 = v17;
  }

  v18 = +[APAttributionTokenStore storageLock];
  [v18 unlock];
  v33 = 0;
LABEL_24:

  return v33;
}

@end