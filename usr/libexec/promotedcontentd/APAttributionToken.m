@interface APAttributionToken
+ (id)_createTokenDetailed:(BOOL)a3 error:(id *)a4;
+ (id)_getCachedToken:(BOOL)a3;
+ (id)keyChainLock;
+ (void)_generateOnDemandToken:(BOOL)a3 interval:(unint64_t)a4 completionHandler:(id)a5;
+ (void)_refillCacheWithTokensDetail:(BOOL)a3;
+ (void)createDetailed:(BOOL)a3 attributionTokenWithCompletionHandler:(id)a4;
+ (void)tokenWithDetail:(BOOL)a3 interval:(unint64_t)a4 completionHandler:(id)a5;
- (APAttributionToken)initWithCachedToken:(id)a3 detailed:(BOOL)a4;
- (APAttributionToken)initWithKey:(id)a3 payload:(id)a4 token:(id)a5 signature:(id)a6;
- (APAttributionToken)initWithKey:(id)a3 payload:(id)a4 token:(id)a5 signature:(id)a6 detailed:(BOOL)a7;
@end

@implementation APAttributionToken

- (APAttributionToken)initWithKey:(id)a3 payload:(id)a4 token:(id)a5 signature:(id)a6 detailed:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [(APAttributionToken *)self init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_key, a3);
    objc_storeStrong(&v18->_payload, a4);
    objc_storeStrong(&v18->_token, a5);
    v18->_detailed = a7;
    [v15 appendData:v16];
    v19 = [v15 base64EncodedStringWithOptions:0];
    signedAttributionToken = v18->_signedAttributionToken;
    v18->_signedAttributionToken = v19;
  }

  return v18;
}

- (APAttributionToken)initWithKey:(id)a3 payload:(id)a4 token:(id)a5 signature:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(APAttributionToken *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_key, a3);
    objc_storeStrong(&v16->_payload, a4);
    objc_storeStrong(&v16->_token, a5);
    [v13 appendData:v14];
    v17 = [v13 base64EncodedStringWithOptions:0];
    signedAttributionToken = v16->_signedAttributionToken;
    v16->_signedAttributionToken = v17;
  }

  return v16;
}

- (APAttributionToken)initWithCachedToken:(id)a3 detailed:(BOOL)a4
{
  v7 = a3;
  v8 = [(APAttributionToken *)self init];
  if (v8)
  {
    v9 = [[NSData alloc] initWithBase64EncodedString:v7 options:0];
    v10 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v9 bytes], 32);
    key = v8->_key;
    v8->_key = v10;

    v12 = [v9 subdataWithRange:{32, 8}];
    v13 = [NSData dataWithData:v12];
    payload = v8->_payload;
    v8->_payload = v13;

    v15 = [v9 subdataWithRange:{0, 32}];
    v16 = [NSData dataWithData:v15];
    token = v8->_token;
    v8->_token = v16;

    objc_storeStrong(&v8->_signedAttributionToken, a3);
    v8->_detailed = a4;
  }

  return v8;
}

+ (id)keyChainLock
{
  if (qword_1004DF6F8 != -1)
  {
    sub_100393A08();
  }

  v3 = qword_1004DF6F0;

  return v3;
}

+ (void)tokenWithDetail:(BOOL)a3 interval:(unint64_t)a4 completionHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = APLogForCategory();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Generating Token", buf, 2u);
    }

    v9 = [APAttributionToken _getCachedToken:v6];
    if (v9)
    {
      v10 = APLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Using cached Token", buf, 2u);
      }

      v11 = [[APAttributionToken alloc] initWithCachedToken:v9 detailed:v6];
      v12 = +[APAttributionTokenTracker defaultTracker];
      v13 = [(APAttributionToken *)v11 signedAttributionToken];
      v14 = [v12 isTokenUsed:v13];

      if (v14)
      {
        v15 = APPerfLogForCategory();
        v16 = v15;
        v17 = a4 - 1;
        if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
        {
          *buf = 134349314;
          v30 = a4;
          v31 = 2114;
          v32 = @"keychain";
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, a4, "Duplicate Token Found", "Duplicate Token Found id=%{public, name=id}lld cache=%{public, name=cache}@", buf, 0x16u);
        }

        [APAttributionAnalytics sendTokenDuplicateAnalytics:@"TokenDupeKeychain"];
        v18 = APLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [(APAttributionToken *)v11 signedAttributionToken];
          *buf = 138543362;
          v30 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "cached token has already been used %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v17 = a4 - 1;
      }

      v7[2](v7, v11, 1, 0);
      v20 = os_transaction_create();
      v21 = APPerfLogForCategory();
      v22 = v21;
      if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *buf = 134349056;
        v30 = a4;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, a4, "Cache GCD overhead", "id=%{public, name=id}lld", buf, 0xCu);
      }

      v23 = dispatch_get_global_queue(9, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10022F364;
      block[3] = &unk_100479690;
      v28 = v6;
      v26 = v20;
      v27 = a4;
      v24 = v20;
      dispatch_async(v23, block);
    }

    else
    {
      [APAttributionToken _generateOnDemandToken:v6 interval:a4 completionHandler:v7];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No handler", buf, 2u);
  }
}

+ (id)_getCachedToken:(BOOL)a3
{
  v3 = a3;
  v4 = +[APAttributionToken keyChainLock];
  [v4 lock];

  v5 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:0];
  v6 = [[APAttributionTokenStore alloc] initWithStorage:v5];
  v15 = 0;
  v7 = [(APAttributionTokenStore *)v6 getToken:v3 error:&v15];
  v8 = v15;
  if (v8)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 code];
      v11 = [v8 localizedDescription];
      *buf = 136643331;
      v17 = "+[APAttributionToken _getCachedToken:]";
      v18 = 2048;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{sensitive}s Error reading token from token store %ld: %{public}@", buf, 0x20u);
    }
  }

  v12 = +[APAttributionToken keyChainLock];
  [v12 unlock];

  if (v7)
  {
    v13 = v7;
  }

  return v7;
}

+ (void)_generateOnDemandToken:(BOOL)a3 interval:(unint64_t)a4 completionHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = generateRandomBytes(0x20uLL);
  v9 = generatePayload(8, v6);
  v10 = createTokenFromKey(v8, v9);
  v11 = +[APMescalSigningService service];

  if (v11)
  {
    v12 = os_transaction_create();
    v13 = +[APMescalSigningService service];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10022F968;
    v17[3] = &unk_1004796B8;
    v22 = v7;
    v18 = v8;
    v19 = v9;
    v23 = a4;
    v24 = v6;
    v20 = v10;
    v21 = v12;
    v14 = v12;
    [v13 rawSignatureForData:v20 waitTime:v17 completion:10.0];
  }

  else
  {
    v15 = APLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Signing Service Not available", buf, 2u);
    }

    v26 = NSLocalizedDescriptionKey;
    v27 = @"Error signing token, service not available";
    v16 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.ap.attribution.token" code:1 userInfo:v16];

    (*(v7 + 2))(v7, 0, 0, v14);
  }
}

+ (void)createDetailed:(BOOL)a3 attributionTokenWithCompletionHandler:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = generateRandomBytes(0x20uLL);
  v7 = generatePayload(8, v4);
  v8 = createTokenFromKey(v6, v7);
  v9 = +[APMescalSigningService service];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10022FEFC;
  v14[3] = &unk_1004796E0;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v5;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  [v9 rawSignatureForData:v10 waitTime:v14 completion:10.0];
}

+ (id)_createTokenDetailed:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v6 = generateRandomBytes(0x20uLL);
  v7 = generatePayload(8, v5);
  v8 = createTokenFromKey(v6, v7);
  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Mescal signing request for token", v14, 2u);
  }

  v10 = +[APMescalSigningService service];
  v11 = [v10 rawSignatureForData:v8 error:a4];

  if (v11 && !*a4)
  {
    v12 = [[APAttributionToken alloc] initWithKey:v6 payload:v7 token:v8 signature:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)_refillCacheWithTokensDetail:(BOOL)a3
{
  v3 = a3;
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Refill cache with tokens", buf, 2u);
  }

  v5 = +[APAttributionToken keyChainLock];
  [v5 lock];

  v6 = [[APSettingsStorageKeychain alloc] initWithDefaultValues:0];
  v7 = [[APAttributionTokenStore alloc] initWithStorage:v6 andSize:5];
  v32 = 0;
  v8 = [(APAttributionTokenStore *)v7 tokenCount:v3 error:&v32];
  v9 = v32;
  if (v9)
  {
    v10 = v9;
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 code];
      v13 = [v10 localizedDescription];
      *buf = 136315650;
      v34 = "+[APAttributionToken _refillCacheWithTokensDetail:]";
      v35 = 2048;
      v36 = v12;
      v37 = 2114;
      v38 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Error reading token count store code %ld: %{public}@", buf, 0x20u);
    }

    v14 = +[APAttributionToken keyChainLock];
    [v14 unlock];
  }

  else if (v8 < 5)
  {
    v29 = v6;
    v16 = [NSMutableArray arrayWithCapacity:5];
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v34) = 5 - v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Attempt to fill (%d) tokens in cache", buf, 8u);
    }

    v18 = 0;
    v19 = v8 - 5;
    do
    {
      v20 = v18;
      v31 = v18;
      v21 = [APAttributionToken _createTokenDetailed:v3 error:&v31];
      v18 = v31;

      if (v21)
      {
        v22 = [v21 signedAttributionToken];
        [v16 addObject:v22];
      }

      else
      {
        v22 = APLogForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = [v18 localizedDescription];
          *buf = 138543362;
          v34 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error generating token %{public}@", buf, 0xCu);
        }
      }
    }

    while (!__CFADD__(v19++, 1));
    v30 = v18;
    v25 = [(APAttributionTokenStore *)v7 addTokens:v16 isDetailed:v3 error:&v30];
    v10 = v30;

    v6 = v29;
    if ((v25 & 1) == 0)
    {
      v26 = APLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v10 localizedDescription];
        *buf = 138543362;
        v34 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error refilling tokens %{public}@", buf, 0xCu);
      }
    }

    v28 = +[APAttributionToken keyChainLock];
    [v28 unlock];
  }

  else
  {
    v15 = APLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "token cache full", buf, 2u);
    }

    v10 = +[APAttributionToken keyChainLock];
    [v10 unlock];
  }
}

@end