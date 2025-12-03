@interface NSPPrivateAccessTokenFetcher
+ (BOOL)checkOriginAllowedAsThirdParty:(id)party;
+ (void)fetchAuxiliaryAuthenticationDataFromCacheForType:(unint64_t)type label:(id)label cacheKey:(id)key completionHandler:(id)handler;
+ (void)saveAuxiliaryAuthenticationDataToCache:(id)cache type:(unint64_t)type forLabel:(id)label cacheKey:(id)key;
- (NSPPrivateAccessTokenFetcher)initWithChallenge:(id)challenge tokenKey:(id)key auxiliaryAuthenticationChallenge:(id)authenticationChallenge auxiliaryAuthenticationKey:(id)authenticationKey auxiliaryAuthenticationLabel:(id)label;
- (NSPPrivateAccessTokenFetcher)initWithChallenge:(id)challenge tokenKey:(id)key originNameKey:(id)nameKey;
- (id)initForKnownIssuerWithChallenge:(id)challenge;
- (id)initForKnownIssuerWithLongLivedTokenChallenge:(id)challenge oneTimeTokenChallenge:(id)tokenChallenge;
- (void)addSecondaryChallenge:(id)challenge tokenKey:(id)key originNameKey:(id)nameKey;
- (void)checkRemainingCostQuotaWithQueue:(id)queue completionHandler:(id)handler;
- (void)fetchLinkedTokenPairWithQueue:(id)queue completionHandler:(id)handler;
- (void)fetchTokenAndAuxiliaryAuthenticationWithQueue:(id)queue completionHandler:(id)handler;
- (void)fetchTokenPairWithQueue:(id)queue completionHandler:(id)handler;
- (void)fetchTokenWithQueue:(id)queue completionHandler:(id)handler;
- (void)generateTokenRequestWithQueue:(id)queue completionHandler:(id)handler;
- (void)handleTokenResponse:(id)response withQueue:(id)queue completionHandler:(id)handler;
- (void)saveOneTimeTokenToCache:(id)cache oneTimeTokenSalt:(id)salt longLivedToken:(id)token;
- (void)saveTokenToCache:(id)cache;
- (void)setCustomAttester:(id)attester headers:(id)headers;
@end

@implementation NSPPrivateAccessTokenFetcher

- (NSPPrivateAccessTokenFetcher)initWithChallenge:(id)challenge tokenKey:(id)key originNameKey:(id)nameKey
{
  challengeCopy = challenge;
  keyCopy = key;
  nameKeyCopy = nameKey;
  if (!challengeCopy)
  {
    v17 = nplog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
LABEL_9:

LABEL_12:
      v13 = 0;
      goto LABEL_5;
    }

    *buf = 136315138;
    v21 = "[NSPPrivateAccessTokenFetcher initWithChallenge:tokenKey:originNameKey:]";
    v18 = "%s called with null challenge";
LABEL_14:
    _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v18, buf, 0xCu);
    goto LABEL_9;
  }

  if (!keyCopy)
  {
    v17 = nplog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v21 = "[NSPPrivateAccessTokenFetcher initWithChallenge:tokenKey:originNameKey:]";
    v18 = "%s called with null tokenKey";
    goto LABEL_14;
  }

  v19.receiver = self;
  v19.super_class = NSPPrivateAccessTokenFetcher;
  v11 = [(NSPPrivateAccessTokenFetcher *)&v19 init];
  if (!v11)
  {
    self = nplog_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

    goto LABEL_12;
  }

  v13 = v11;
  objc_setProperty_atomic(v11, v12, challengeCopy, 64);
  objc_setProperty_atomic(v13, v14, keyCopy, 80);
  objc_setProperty_atomic(v13, v15, nameKeyCopy, 88);
LABEL_5:

  return v13;
}

- (id)initForKnownIssuerWithChallenge:(id)challenge
{
  challengeCopy = challenge;
  if (!challengeCopy)
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v12 = "[NSPPrivateAccessTokenFetcher initForKnownIssuerWithChallenge:]";
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "%s called with null challenge", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v10.receiver = self;
  v10.super_class = NSPPrivateAccessTokenFetcher;
  v5 = [(NSPPrivateAccessTokenFetcher *)&v10 init];
  if (!v5)
  {
    self = nplog_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

LABEL_10:

    v7 = 0;
    goto LABEL_4;
  }

  v7 = v5;
  objc_setProperty_atomic(v5, v6, challengeCopy, 64);
LABEL_4:

  return v7;
}

- (id)initForKnownIssuerWithLongLivedTokenChallenge:(id)challenge oneTimeTokenChallenge:(id)tokenChallenge
{
  challengeCopy = challenge;
  tokenChallengeCopy = tokenChallenge;
  v8 = tokenChallengeCopy;
  if (!challengeCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
LABEL_9:

LABEL_12:
      v11 = 0;
      goto LABEL_5;
    }

    *buf = 136315138;
    v18 = "[NSPPrivateAccessTokenFetcher initForKnownIssuerWithLongLivedTokenChallenge:oneTimeTokenChallenge:]";
    v15 = "%s called with null longLivedTokenChallenge";
LABEL_14:
    _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v15, buf, 0xCu);
    goto LABEL_9;
  }

  if (!tokenChallengeCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v18 = "[NSPPrivateAccessTokenFetcher initForKnownIssuerWithLongLivedTokenChallenge:oneTimeTokenChallenge:]";
    v15 = "%s called with null oneTimeTokenChallenge";
    goto LABEL_14;
  }

  v16.receiver = self;
  v16.super_class = NSPPrivateAccessTokenFetcher;
  v9 = [(NSPPrivateAccessTokenFetcher *)&v16 init];
  if (!v9)
  {
    self = nplog_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

    goto LABEL_12;
  }

  v11 = v9;
  objc_setProperty_atomic(v9, v10, challengeCopy, 64);
  objc_setProperty_atomic(v11, v12, v8, 72);
LABEL_5:

  return v11;
}

- (NSPPrivateAccessTokenFetcher)initWithChallenge:(id)challenge tokenKey:(id)key auxiliaryAuthenticationChallenge:(id)authenticationChallenge auxiliaryAuthenticationKey:(id)authenticationKey auxiliaryAuthenticationLabel:(id)label
{
  challengeCopy = challenge;
  keyCopy = key;
  authenticationChallengeCopy = authenticationChallenge;
  authenticationKeyCopy = authenticationKey;
  labelCopy = label;
  if (!challengeCopy)
  {
    v25 = nplog_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
LABEL_9:

LABEL_12:
      v19 = 0;
      goto LABEL_5;
    }

    *buf = 136315138;
    v29 = "[NSPPrivateAccessTokenFetcher initWithChallenge:tokenKey:auxiliaryAuthenticationChallenge:auxiliaryAuthenticationKey:auxiliaryAuthenticationLabel:]";
    v26 = "%s called with null challenge";
LABEL_14:
    _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, v26, buf, 0xCu);
    goto LABEL_9;
  }

  if (!authenticationChallengeCopy)
  {
    v25 = nplog_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v29 = "[NSPPrivateAccessTokenFetcher initWithChallenge:tokenKey:auxiliaryAuthenticationChallenge:auxiliaryAuthenticationKey:auxiliaryAuthenticationLabel:]";
    v26 = "%s called with null auxiliaryAuthenticationChallenge";
    goto LABEL_14;
  }

  v27.receiver = self;
  v27.super_class = NSPPrivateAccessTokenFetcher;
  v17 = [(NSPPrivateAccessTokenFetcher *)&v27 init];
  if (!v17)
  {
    self = nplog_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

    goto LABEL_12;
  }

  v19 = v17;
  objc_setProperty_atomic(v17, v18, challengeCopy, 64);
  objc_setProperty_atomic(v19, v20, keyCopy, 80);
  objc_setProperty_atomic(v19, v21, authenticationChallengeCopy, 96);
  objc_setProperty_atomic(v19, v22, authenticationKeyCopy, 104);
  objc_setProperty_atomic(v19, v23, labelCopy, 112);
LABEL_5:

  return v19;
}

- (void)addSecondaryChallenge:(id)challenge tokenKey:(id)key originNameKey:(id)nameKey
{
  nameKeyCopy = nameKey;
  keyCopy = key;
  challengeCopy = challenge;
  v17 = [[NSPPrivateAccessTokenFetcher alloc] initWithChallenge:challengeCopy tokenKey:keyCopy originNameKey:nameKeyCopy];

  v12 = v17;
  if (v17)
  {
    if (self)
    {
      if (!objc_getProperty(self, v11, 120, 1))
      {
        v14 = objc_alloc_init(NSMutableArray);
        objc_setProperty_atomic(self, v15, v14, 120);
      }

      Property = objc_getProperty(self, v13, 120, 1);
    }

    else
    {

      Property = 0;
    }

    [Property addObject:v17];
    v12 = v17;
  }
}

- (void)setCustomAttester:(id)attester headers:(id)headers
{
  if (self)
  {
    newValue = headers;
    objc_setProperty_atomic(self, v6, attester, 48);
    objc_setProperty_atomic(self, v7, newValue, 56);
  }
}

- (void)fetchTokenWithQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (!queueCopy)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "[NSPPrivateAccessTokenFetcher fetchTokenWithQueue:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "[NSPPrivateAccessTokenFetcher fetchTokenWithQueue:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v9 = getServerConnection();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B7AD4;
  v12[3] = &unk_10010B278;
  v13 = queueCopy;
  v14 = v8;
  [v9 fetchPrivateAccessTokenWithFetcher:self allowRetry:1 completionHandler:v12];

  v10 = v13;
LABEL_4:
}

- (void)fetchTokenPairWithQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (!queueCopy)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "[NSPPrivateAccessTokenFetcher fetchTokenPairWithQueue:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "[NSPPrivateAccessTokenFetcher fetchTokenPairWithQueue:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v9 = getServerConnection();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B7DE8;
  v12[3] = &unk_10010B2C8;
  v13 = queueCopy;
  v14 = v8;
  [v9 fetchPrivateAccessTokenPairWithFetcher:self allowRetry:1 completionHandler:v12];

  v10 = v13;
LABEL_4:
}

- (void)fetchLinkedTokenPairWithQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (!queueCopy)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "[NSPPrivateAccessTokenFetcher fetchLinkedTokenPairWithQueue:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "[NSPPrivateAccessTokenFetcher fetchLinkedTokenPairWithQueue:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v9 = getServerConnection();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B8124;
  v12[3] = &unk_10010B2C8;
  v13 = queueCopy;
  v14 = v8;
  [v9 fetchPrivateAccessTokenPairWithFetcher:self allowRetry:1 completionHandler:v12];

  v10 = v13;
LABEL_4:
}

- (void)fetchTokenAndAuxiliaryAuthenticationWithQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (!queueCopy)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "[NSPPrivateAccessTokenFetcher fetchTokenAndAuxiliaryAuthenticationWithQueue:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "[NSPPrivateAccessTokenFetcher fetchTokenAndAuxiliaryAuthenticationWithQueue:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v9 = getServerConnection();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B8488;
  v12[3] = &unk_10010B318;
  v13 = queueCopy;
  v14 = v8;
  [v9 fetchPrivateAccessTokenAndAuxAuthWithFetcher:self allowRetry:1 completionHandler:v12];

  v10 = v13;
LABEL_4:
}

+ (BOOL)checkOriginAllowedAsThirdParty:(id)party
{
  partyCopy = party;
  if (partyCopy)
  {
    v4 = getServerConnection();
    v5 = [v4 checkOriginAllowedAsThirdParty:partyCopy];
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "+[NSPPrivateAccessTokenFetcher checkOriginAllowedAsThirdParty:]";
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s called with null origin", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (void)generateTokenRequestWithQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (self)
  {
    if (objc_getProperty(self, v7, 128, 1))
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot fetch multiple local tokens with a single token fetcher", buf, 2u);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BA99C;
      block[3] = &unk_10010A8A8;
      v20 = handlerCopy;
      dispatch_async(queueCopy, block);
      v11 = v20;
      goto LABEL_6;
    }

    if (objc_getProperty(self, v9, 80, 1))
    {
      Property = objc_getProperty(self, v12, 80, 1);
      sub_1000BA188(self, Property, queueCopy, handlerCopy);
      goto LABEL_9;
    }
  }

  v14 = getServerConnection();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000BAA7C;
  v15[3] = &unk_10010B368;
  v16 = queueCopy;
  selfCopy = self;
  v18 = handlerCopy;
  [v14 fetchKnownPrivateAccessTokenKeyWithFetcher:self allowRetry:1 completionHandler:v15];

  v11 = v16;
LABEL_6:

LABEL_9:
}

- (void)handleTokenResponse:(id)response withQueue:(id)queue completionHandler:(id)handler
{
  responseCopy = response;
  queueCopy = queue;
  handlerCopy = handler;
  if (responseCopy && self && (v12 = objc_getProperty(self, v10, 128, 1)) != 0 && (v14 = v12, Property = objc_getProperty(self, v13, 136, 1), v14, Property))
  {
    v39 = objc_getProperty(self, v16, 152, 1);
    v17 = [NSPPrivateAccessTokenChallenge alloc];
    v19 = [(NSPPrivateAccessTokenChallenge *)v17 initWithData:objc_getProperty(self, v18, 64, 1)];
    v21 = objc_getProperty(self, v20, 128, 1);
    v48 = v21;
    v22 = [NSArray arrayWithObjects:&v48 count:1];
    v25 = objc_getProperty(self, v23, 144, 1);
    v38 = v21;
    if (v25)
    {
      v37 = objc_getProperty(self, v24, 144, 1);
      v47 = v37;
      v26 = [NSArray arrayWithObjects:&v47 count:1];
    }

    else
    {
      v26 = 0;
    }

    v46 = responseCopy;
    v29 = [NSArray arrayWithObjects:&v46 count:1];
    v28 = sub_1000B99D0(NSPPrivateAccessTokenFetcher, v22, v19, v39, v26, v29);

    if (v25)
    {
    }

    [v28 count];
    v30 = nplog_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Generated token from response", buf, 2u);
    }

    [v28 firstObject];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000BB054;
    v41 = v40[3] = &unk_10010B340;
    v42 = handlerCopy;
    v31 = v41;
    v32 = handlerCopy;
    dispatch_async(queueCopy, v40);
    objc_setProperty_atomic(self, v33, 0, 128);
    objc_setProperty_atomic(self, v34, 0, 136);
    objc_setProperty_atomic(self, v35, 0, 144);
    objc_setProperty_atomic(self, v36, 0, 152);
  }

  else
  {
    v27 = nplog_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Invalid state, cannot handle token response", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BAF74;
    block[3] = &unk_10010A8A8;
    v44 = handlerCopy;
    v19 = handlerCopy;
    dispatch_async(queueCopy, block);
    v28 = v44;
  }
}

- (void)saveTokenToCache:(id)cache
{
  cacheCopy = cache;
  if (cacheCopy)
  {
    v5 = getServerConnection();
    [v5 addToken:cacheCopy toCacheForFetcher:self];
  }

  else
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "[NSPPrivateAccessTokenFetcher saveTokenToCache:]";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null token", &v7, 0xCu);
    }
  }
}

- (void)saveOneTimeTokenToCache:(id)cache oneTimeTokenSalt:(id)salt longLivedToken:(id)token
{
  cacheCopy = cache;
  saltCopy = salt;
  tokenCopy = token;
  v11 = tokenCopy;
  if (!cacheCopy)
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v15 = 136315138;
      v16 = "[NSPPrivateAccessTokenFetcher saveOneTimeTokenToCache:oneTimeTokenSalt:longLivedToken:]";
      v14 = "%s called with null oneTimeToken";
      goto LABEL_13;
    }

LABEL_11:

    goto LABEL_5;
  }

  if (!saltCopy)
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v15 = 136315138;
      v16 = "[NSPPrivateAccessTokenFetcher saveOneTimeTokenToCache:oneTimeTokenSalt:longLivedToken:]";
      v14 = "%s called with null oneTimeTokenSalt";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!tokenCopy)
  {
    v13 = nplog_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v15 = 136315138;
    v16 = "[NSPPrivateAccessTokenFetcher saveOneTimeTokenToCache:oneTimeTokenSalt:longLivedToken:]";
    v14 = "%s called with null longLivedToken";
LABEL_13:
    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v14, &v15, 0xCu);
    goto LABEL_11;
  }

  v12 = getServerConnection();
  [v12 addOneTimeToken:cacheCopy oneTimeTokenSalt:saltCopy longLivedToken:v11 toCacheForFetcher:self];

LABEL_5:
}

+ (void)saveAuxiliaryAuthenticationDataToCache:(id)cache type:(unint64_t)type forLabel:(id)label cacheKey:(id)key
{
  cacheCopy = cache;
  labelCopy = label;
  keyCopy = key;
  v12 = keyCopy;
  if (!cacheCopy)
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v16 = 136315138;
      v17 = "+[NSPPrivateAccessTokenFetcher saveAuxiliaryAuthenticationDataToCache:type:forLabel:cacheKey:]";
      v15 = "%s called with null auxiliaryData";
      goto LABEL_13;
    }

LABEL_11:

    goto LABEL_5;
  }

  if (!labelCopy)
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v16 = 136315138;
      v17 = "+[NSPPrivateAccessTokenFetcher saveAuxiliaryAuthenticationDataToCache:type:forLabel:cacheKey:]";
      v15 = "%s called with null label";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!keyCopy)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v16 = 136315138;
    v17 = "+[NSPPrivateAccessTokenFetcher saveAuxiliaryAuthenticationDataToCache:type:forLabel:cacheKey:]";
    v15 = "%s called with null cacheKey";
LABEL_13:
    _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, v15, &v16, 0xCu);
    goto LABEL_11;
  }

  v13 = getServerConnection();
  [v13 addAuxiliaryAuthenticationData:cacheCopy type:type label:labelCopy cacheKey:v12];

LABEL_5:
}

+ (void)fetchAuxiliaryAuthenticationDataFromCacheForType:(unint64_t)type label:(id)label cacheKey:(id)key completionHandler:(id)handler
{
  labelCopy = label;
  keyCopy = key;
  handlerCopy = handler;
  if (!labelCopy)
  {
    v13 = nplog_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
LABEL_8:

      goto LABEL_4;
    }

    v15 = 136315138;
    v16 = "+[NSPPrivateAccessTokenFetcher fetchAuxiliaryAuthenticationDataFromCacheForType:label:cacheKey:completionHandler:]";
    v14 = "%s called with null label";
LABEL_10:
    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v14, &v15, 0xCu);
    goto LABEL_8;
  }

  if (!keyCopy)
  {
    v13 = nplog_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v15 = 136315138;
    v16 = "+[NSPPrivateAccessTokenFetcher fetchAuxiliaryAuthenticationDataFromCacheForType:label:cacheKey:completionHandler:]";
    v14 = "%s called with null cacheKey";
    goto LABEL_10;
  }

  v12 = getServerConnection();
  [v12 fetchAuxiliaryAuthenticationDataFromCacheForType:type label:labelCopy cacheKey:keyCopy completionHandler:handlerCopy];

LABEL_4:
}

- (void)checkRemainingCostQuotaWithQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (!queueCopy)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "[NSPPrivateAccessTokenFetcher checkRemainingCostQuotaWithQueue:completionHandler:]";
    v11 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, v11, buf, 0xCu);
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v16 = "[NSPPrivateAccessTokenFetcher checkRemainingCostQuotaWithQueue:completionHandler:]";
    v11 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v9 = getServerConnection();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BB7A8;
  v12[3] = &unk_10010B3B8;
  v13 = queueCopy;
  v14 = v8;
  [v9 checkRemainingCostQuotaWithFetcher:self allowRetry:1 completionHandler:v12];

  v10 = v13;
LABEL_4:
}

@end