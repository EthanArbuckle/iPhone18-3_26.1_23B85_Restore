@interface GKStoreBag
+ (id)appleIdSession;
+ (id)contentDumpForDebugging:(id)debugging;
+ (id)deviceInfo;
+ (id)protocolVersionForClient:(id)client;
+ (id)redactPasswordFromDebuggingContent:(id)content;
+ (id)storeBagForEnvironment:(int64_t)environment;
+ (id)storeBagForEnvironment:(int64_t)environment dataRequestManager:(id)manager;
+ (id)storeBagForURL:(id)l dataRequestManager:(id)manager;
+ (id)storeBagURLForEnvironment:(int64_t)environment;
+ (id)storeBagURLTemplateForEnvironment:(int64_t)environment;
+ (void)addAuthHeadersToRequest:(id)request;
+ (void)addClientInfoAuthHeaderToRequest:(id)request;
- (BOOL)_isLastProtocolVersionUsedValid;
- (BOOL)_isValidAndNotExpired;
- (BOOL)_shouldUseHTTPPipelining;
- (BOOL)isLoadValidForBagKey:(id)key date:(id)date;
- (BOOL)shouldUseHTTPPipelining;
- (GKStoreBag)initWithURL:(id)l dataRequestManager:(id)manager;
- (id)_bagKeyValidationDict;
- (id)_networkSynchonizationQueue;
- (id)_storeBagForData:(id)data error:(id *)error;
- (id)description;
- (id)omnitureQueryParametersForContext:(id)context;
- (id)requestWithURL:(id)l playerID:(id)d authToken:(id)token pushToken:(id)pushToken client:(id)client gameDescriptor:(id)descriptor postData:(id)data includeUDID:(BOOL)self0 includeAPNS:(BOOL)self1 sapSession:(id)self2;
- (id)requestWithURL:(id)l playerID:(id)d authToken:(id)token pushToken:(id)pushToken client:(id)client gameDescriptor:(id)descriptor postData:(id)data includeUDID:(BOOL)self0 includeAPNS:(BOOL)self1 sapSession:(id)self2 includeClientInfoAuthHeader:(BOOL)self3 preconnect:(BOOL)self4;
- (id)valueForUndefinedKey:(id)key;
- (id)verifyEligibilityForBagKey:(id)key preconnect:(BOOL)preconnect checkingAllowedRequestKeys:(id)keys client:(id)client;
- (int)hashForPlayerID:(id)d;
- (int64_t)_achievementsThrottleThreshold;
- (int64_t)_gkSessionRateLimiting;
- (int64_t)_scoresThrottleThreshold;
- (int64_t)achievementsThrottleThreshold;
- (int64_t)gkSessionRateLimiting;
- (int64_t)scoresThrottleThreshold;
- (void)_fetchBagWithHandler:(id)handler;
- (void)_fetchFromCacheWithHandler:(id)handler;
- (void)_fetchFromServerWithHandler:(id)handler;
- (void)_loadDataForBagKey:(id)key preconnect:(BOOL)preconnect postData:(id)data client:(id)client credential:(id)credential completion:(id)completion;
- (void)_metricsThrottleThreshold:(id)threshold;
- (void)_sendAsynchronousRequest:(id)request responseMustBeSigned:(BOOL)signed preconnect:(BOOL)preconnect completion:(id)completion;
- (void)_sendOneAsyncTryWithRequest:(id)request responseMustBeSigned:(BOOL)signed session:(id)session retryCount:(int)count preconnect:(BOOL)preconnect completionHandler:(id)handler;
- (void)_setupAPNSRequired:(id)required;
- (void)_setupResponseSignatureRequired:(id)required;
- (void)_setupSignatureRequired:(id)required;
- (void)_updatePlayerIDHashParameters;
- (void)dealloc;
- (void)getURLForKey:(id)key queue:(id)queue handler:(id)handler;
- (void)getValuesForKeys:(id)keys queue:(id)queue completion:(id)completion;
- (void)getValuesWithCompletion:(id)completion;
- (void)invalidateBagKeys:(id)keys;
- (void)performSync:(id)sync;
- (void)readDataForBagKey:(id)key postData:(id)data client:(id)client credential:(id)credential completion:(id)completion;
- (void)readDataForBagKey:(id)key preconnect:(BOOL)preconnect postData:(id)data client:(id)client credential:(id)credential completion:(id)completion;
- (void)readDataForURL:(id)l postData:(id)data client:(id)client credential:(id)credential includeUDID:(BOOL)d includeAPNS:(BOOL)s completion:(id)completion;
- (void)signRequest:(id)request sapSession:(id)session postData:(id)data;
- (void)updateURLPatternCache;
- (void)verifyEligibilityForBagKey:(id)key preconnect:(BOOL)preconnect replyQueue:(id)queue client:(id)client completion:(id)completion;
- (void)writeDataForBagKey:(id)key postData:(id)data client:(id)client credential:(id)credential completion:(id)completion;
@end

@implementation GKStoreBag

+ (id)storeBagForEnvironment:(int64_t)environment
{
  v4 = +[GKDataRequestManager sharedManager];
  v5 = [GKStoreBag storeBagForEnvironment:environment dataRequestManager:v4];

  return v5;
}

+ (id)storeBagForEnvironment:(int64_t)environment dataRequestManager:(id)manager
{
  managerCopy = manager;
  v7 = [self storeBagURLForEnvironment:environment];
  if (v7)
  {
    v8 = [self storeBagForURL:v7 dataRequestManager:managerCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)storeBagURLForEnvironment:(int64_t)environment
{
  if (environment == 7)
  {
    v4 = +[GKPreferences shared];
    storeBagURL = [v4 storeBagURL];

    if (storeBagURL)
    {
      v6 = [NSURL URLWithString:storeBagURL];
      if (v6)
      {
        v7 = v6;
        goto LABEL_7;
      }
    }
  }

  storeBagURL = [GKStoreBag storeBagURLTemplateForEnvironment:environment];
  v8 = [storeBagURL stringByReplacingOccurrencesOfString:@"{ix}" withString:@"jgubuxqd"];
  v7 = [NSURL URLWithString:v8];

LABEL_7:

  return v7;
}

+ (id)storeBagURLTemplateForEnvironment:(int64_t)environment
{
  if ((environment - 3) > 7)
  {
    return @"https://init.gc.apple.com/WebObjects/GKInit.woa/wa/getBag?ix={ix}";
  }

  else
  {
    return off_1003675F0[environment - 3];
  }
}

- (void)performSync:(id)sync
{
  syncQueue = self->_syncQueue;
  if (dispatch_get_current_queue() == syncQueue)
  {
    +[NSException raise:format:](NSException, "raise:format:", @"GameKit Exception", @"%@", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (dispatch_get_current_queue() != queue)\n[%s (%s:%d)]", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s invoked on the same queue(%s), would deadlock at %@", "[GKStoreBag performSync:]", dispatch_queue_get_label(syncQueue), +[NSThread callStackSymbols]), "[GKStoreBag performSync:]", [[[NSString stringWithUTF8String:?]] UTF8String], 114));
  }

  dispatch_sync(syncQueue, sync);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = GKStoreBag;
  return [NSString stringWithFormat:@"%@ : %@", [(GKStoreBag *)&v3 description], [(GKStoreBag *)self url]];
}

+ (id)storeBagForURL:(id)l dataRequestManager:(id)manager
{
  if (qword_1003B9390 != -1)
  {
    sub_100293248();
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_100162C80;
  v13 = sub_100162C90;
  v14 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162C9C;
  block[3] = &unk_100369320;
  block[5] = manager;
  block[6] = &v9;
  block[4] = l;
  dispatch_sync(qword_1003B9380, block);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (GKStoreBag)initWithURL:(id)l dataRequestManager:(id)manager
{
  v8.receiver = self;
  v8.super_class = GKStoreBag;
  v6 = [(GKStoreBag *)&v8 init];
  if (v6)
  {
    v6->_url = [l copy];
    v6->_syncQueue = dispatch_queue_create("com.apple.GameKit.GKStoreBag.sync", 0);
    *&v6->_playerIDHashMod = vdup_n_s32(0xF4240u);
    v6->_activity = [GKActivity named:@"GKStoreBag initWithURL:"];
    v6->_dataRequestManager = manager;
  }

  return v6;
}

- (void)dealloc
{
  dispatch_release(self->_syncQueue);
  v3.receiver = self;
  v3.super_class = GKStoreBag;
  [(GKStoreBag *)&v3 dealloc];
}

- (BOOL)_isValidAndNotExpired
{
  v3 = [(NSDictionary *)self->_internalBag count];
  if (v3)
  {
    [(NSDate *)self->_expiration timeIntervalSinceNow];
    LOBYTE(v3) = v4 > 0.0;
  }

  return v3;
}

- (BOOL)_isLastProtocolVersionUsedValid
{
  v2 = [objc_opt_class() protocolVersionForClient:0];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [(NSUserDefaults *)v3 valueForKey:GKLastProtocolVersionUsedKey];

  return [v2 isEqualToString:v4];
}

- (void)_fetchFromCacheWithHandler:(id)handler
{
  current_queue = dispatch_get_current_queue();
  syncQueue = self->_syncQueue;
  if (current_queue != syncQueue)
  {
    label = dispatch_queue_get_label(current_queue);
    +[NSException raise:format:](NSException, "raise:format:", @"GameKit Exception", @"%@", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _syncQueue)\n[%s (%s:%d)]", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKStoreBag _fetchFromCacheWithHandler:]", label, dispatch_queue_get_label(syncQueue), +[NSThread callStackSymbols]), "[GKStoreBag _fetchFromCacheWithHandler:]", [[[NSString stringWithUTF8String:?]] UTF8String], 218));
  }

  if ([(GKStoreBag *)self _isLastProtocolVersionUsedValid])
  {
    v8 = [objc_msgSend(GKInsecureCacheRoot() stringByAppendingPathComponent:{@"StoreBag", "stringByAppendingPathComponent:", -[NSURL cacheKeyRepresentation](-[GKStoreBag url](self, "url"), "cacheKeyRepresentation")}];
    v9 = objc_alloc_init(NSFileManager);
    v10 = [NSData dataWithContentsOfFile:v8];
    [v9 _gkExpirationIntervalOfFileAtPath:v8];
    v12 = v11;

    v17 = 0;
    if (v10)
    {
      v10 = [(GKStoreBag *)self _storeBagForData:v10 error:&v17];
      v13 = [NSDate dateWithTimeIntervalSinceNow:v12];
      [(GKStoreBag *)self _setupAPNSRequired:v10];
      [(GKStoreBag *)self _setupSignatureRequired:v10];
      [(GKStoreBag *)self _setupResponseSignatureRequired:v10];
      v14 = v17;
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100163208;
    v16[3] = &unk_100369370;
    v16[4] = self;
    v16[5] = v10;
    v16[6] = v13;
    v16[7] = v14;
    v16[8] = handler;
    v15 = v16;
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001631F8;
    v18[3] = &unk_100369348;
    v18[4] = handler;
    v15 = v18;
  }

  [(GKStoreBag *)self performAsync:v15];
}

+ (id)protocolVersionForClient:(id)client
{
  if (client)
  {

    return [client protocolVersion];
  }

  else
  {
    [+[GKPreferences shared](GKPreferences shared];

    return GKGetProtocolVersionString();
  }
}

- (void)_fetchFromServerWithHandler:(id)handler
{
  current_queue = dispatch_get_current_queue();
  syncQueue = self->_syncQueue;
  if (current_queue != syncQueue)
  {
    label = dispatch_queue_get_label(current_queue);
    +[NSException raise:format:](NSException, "raise:format:", @"GameKit Exception", @"%@", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _syncQueue)\n[%s (%s:%d)]", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKStoreBag _fetchFromServerWithHandler:]", label, dispatch_queue_get_label(syncQueue), +[NSThread callStackSymbols]), "[GKStoreBag _fetchFromServerWithHandler:]", [[[NSString stringWithUTF8String:?]] UTF8String], 271));
  }

  v8 = [(GKStoreBag *)self url];
  v9 = [objc_opt_class() protocolVersionForClient:0];
  v10 = [NSMutableURLRequest _gkHTTPRequestWithURL:v8 postData:0 protocolVersion:v9];
  [v10 setRequestPriority:2];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100163490;
  v11[3] = &unk_1003693C0;
  v11[4] = self;
  v11[5] = v9;
  v11[6] = v8;
  v11[7] = handler;
  [objc_opt_class() _gkSendAsynchronousRequest:v10 completionHandler:v11];
}

- (void)_fetchBagWithHandler:(id)handler
{
  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKStorebag: _fetchBagWithHandler:", buf, 2u);
  }

  current_queue = dispatch_get_current_queue();
  syncQueue = self->_syncQueue;
  if (current_queue != syncQueue)
  {
    label = dispatch_queue_get_label(current_queue);
    +[NSException raise:format:](NSException, "raise:format:", @"GameKit Exception", @"%@", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == _syncQueue)\n[%s (%s:%d)]", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKStoreBag _fetchBagWithHandler:]", label, dispatch_queue_get_label(syncQueue), +[NSThread callStackSymbols]), "[GKStoreBag _fetchBagWithHandler:]", [[[NSString stringWithUTF8String:?]] UTF8String], 337));
  }

  v9 = [GKDispatchGroup dispatchGroupWithName:[NSString stringWithFormat:@"%s:%d %s", "GKStoreBag+NoARC.m", 338, "[GKStoreBag _fetchBagWithHandler:]"]];
  v10 = v9;
  fetchGroup = self->_fetchGroup;
  if (fetchGroup)
  {
    v12 = self->_syncQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100163B20;
    v15[3] = &unk_1003693E8;
    v15[4] = self;
    v15[5] = handler;
    [(GKDispatchGroup *)v9 join:fetchGroup queue:v12 block:v15];
  }

  else
  {
    self->_fetchGroup = v9;
    if ([(GKStoreBag *)self _isValid])
    {
      v14[12] = _NSConcreteStackBlock;
      v14[13] = 3221225472;
      v14[14] = sub_100163B44;
      v14[15] = &unk_100369410;
      v14[16] = self;
    }

    else
    {
      v14[6] = _NSConcreteStackBlock;
      v14[7] = 3221225472;
      v14[8] = sub_100163BC4;
      v14[9] = &unk_100369460;
      v14[10] = self;
      v14[11] = v10;
    }

    [(GKDispatchGroup *)v10 perform:?];
    v13 = self->_syncQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100163D54;
    v14[3] = &unk_100369488;
    v14[4] = self;
    v14[5] = handler;
    [(GKDispatchGroup *)v10 notifyOnQueue:v13 block:v14];
  }
}

- (void)getValuesWithCompletion:(id)completion
{
  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "GKStorebag: getBagWithHandler", buf, 2u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100163E8C;
  v6[3] = &unk_100369488;
  v6[4] = self;
  v6[5] = completion;
  [(GKStoreBag *)self performAsync:v6];
}

- (void)_setupAPNSRequired:(id)required
{
  v4 = [required objectForKey:@"gk-push-token-required"];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &off_100383460;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NSException raise:@"GameKit Exception" format:@"%@", [NSString stringWithFormat:@"%@ ([APNSRequiredArray isKindOfClass:[NSArray class]])\n[%s (%s:%d)]", [NSString stringWithFormat:@"got %@, expected NSArray", objc_opt_class()], "[GKStoreBag _setupAPNSRequired:]", [[[NSString stringWithUTF8String:?]] UTF8String], 427]];
  }

  v6 = [NSSet setWithArray:v5];

  [(GKStoreBag *)self setAPNSRequired:v6];
}

- (void)_setupSignatureRequired:(id)required
{
  v4 = [required objectForKey:@"gk-sap-signed-requests"];
  [(GKStoreBag *)self setSignatureRequired:0];
  if (v4)
  {
    v5 = [NSSet setWithArray:v4];

    [(GKStoreBag *)self setSignatureRequired:v5];
  }
}

- (void)_metricsThrottleThreshold:(id)threshold
{
  v4 = [threshold objectForKey:@"gk-metrics-pct"];

  [(GKStoreBag *)self setMetricsPassthroughPercentage:v4];
}

- (void)_setupResponseSignatureRequired:(id)required
{
  v4 = [required objectForKey:@"gk-sap-signed-response-include-patterns"];
  [(GKStoreBag *)self setResponseSignatureRequired:0];
  if (v4)
  {
    v5 = [NSSet setWithArray:v4];

    [(GKStoreBag *)self setResponseSignatureRequired:v5];
  }
}

- (void)getURLForKey:(id)key queue:(id)queue handler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001642F8;
  v5[3] = &unk_100369528;
  v5[4] = self;
  v5[5] = key;
  v5[6] = queue;
  v5[7] = handler;
  [(GKActivity *)[(GKStoreBag *)self activity] childNamed:[NSString execute:"stringWithFormat:" stringWithFormat:"GKStoreBag+NoARC.m", 460, "[GKStoreBag getURLForKey:queue:handler:]"], v5];
}

- (void)getValuesForKeys:(id)keys queue:(id)queue completion:(id)completion
{
  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKStoreBag: getValuesForKeys", buf, 2u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10016453C;
  v10[3] = &unk_100369500;
  v10[4] = keys;
  v10[5] = queue;
  v10[6] = self;
  v10[7] = completion;
  [(GKStoreBag *)self getValuesWithCompletion:v10];
}

- (id)valueForUndefinedKey:(id)key
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100162C80;
  v10 = sub_100162C90;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001646E4;
  v5[3] = &unk_100369320;
  v5[5] = key;
  v5[6] = &v6;
  v5[4] = self;
  [(GKStoreBag *)self performSync:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)omnitureQueryParametersForContext:(id)context
{
  v4 = [(NSDictionary *)self->_internalBag objectForKey:GKQueryParamsBagKey];

  return [v4 objectForKey:context];
}

- (BOOL)shouldUseHTTPPipelining
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100164824;
  v4[3] = &unk_100369550;
  v4[4] = self;
  v4[5] = &v5;
  [(GKStoreBag *)self performSync:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)_shouldUseHTTPPipelining
{
  v3 = [+[GKPreferences shared](GKPreferences "shared")];
  if (v3 == 2)
  {
    return 1;
  }

  if (v3)
  {
    return 0;
  }

  return [-[NSDictionary objectForKey:](self->_internalBag objectForKey:{@"gk-disable-http-pipelining", "BOOLValue"}] ^ 1;
}

- (int64_t)gkSessionRateLimiting
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100164978;
  v4[3] = &unk_100369550;
  v4[4] = self;
  v4[5] = &v5;
  [(GKStoreBag *)self performSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int64_t)_gkSessionRateLimiting
{
  result = [-[NSDictionary valueForKey:](self->_internalBag valueForKey:{GKSessionRateLimiting), "integerValue"}];
  if (!result)
  {
    return 5;
  }

  return result;
}

- (int64_t)achievementsThrottleThreshold
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100164AA0;
  v4[3] = &unk_100369550;
  v4[4] = self;
  v4[5] = &v5;
  [(GKStoreBag *)self performSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int64_t)_achievementsThrottleThreshold
{
  result = [-[NSDictionary valueForKey:](self->_internalBag valueForKey:{GKAchievementsThrottleThreshold), "integerValue"}];
  if (!result)
  {
    return 5;
  }

  return result;
}

- (int64_t)scoresThrottleThreshold
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100164BC8;
  v4[3] = &unk_100369550;
  v4[4] = self;
  v4[5] = &v5;
  [(GKStoreBag *)self performSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int64_t)_scoresThrottleThreshold
{
  result = [-[NSDictionary valueForKey:](self->_internalBag valueForKey:{GKScoresThrottleThreshold), "integerValue"}];
  if (!result)
  {
    return 5;
  }

  return result;
}

- (id)_storeBagForData:(id)data error:(id *)error
{
  v22 = 100;
  v5 = [NSPropertyListSerialization propertyListWithData:data options:0 format:&v22 error:error];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v10 = os_log_GKDaemon;
    if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v11 = objc_opt_class();
    v12 = *error;
    *buf = 138412546;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    v13 = "GKStoreBag: %@: bad responseDict: %@";
    v14 = v10;
    v15 = 22;
    goto LABEL_12;
  }

  v7 = [v6 objectForKey:@"bag"];
  if (!v7)
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v20 = os_log_GKDaemon;
    if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v21 = objc_opt_class();
    *buf = 138412290;
    v24 = v21;
    v13 = "GKStoreBag: %@: bad bagData";
    v14 = v20;
    v15 = 12;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v13, buf, v15);
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v8 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:&v22 error:error];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 0;
      if (!error)
      {
        return v8;
      }

      goto LABEL_15;
    }
  }

  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  v17 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v18 = objc_opt_class();
    v19 = *error;
    *buf = 138412546;
    v24 = v18;
    v25 = 2112;
    v26 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "GKStoreBag: %@: Could not unserialize the URL bag: %@", buf, 0x16u);
  }

LABEL_14:
  v9 = [NSError userErrorForCode:3 underlyingError:0];
  if (error)
  {
LABEL_15:
    *error = v9;
  }

  return v8;
}

- (void)updateURLPatternCache
{
  if ([(GKDataRequestManager *)[(GKStoreBag *)self dataRequestManager] storeBag]!= self)
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v3 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "Received update for bag that isn't current. Ignoring. See <rdar://problem/12960277>.";
      v5 = v3;
      v6 = 2;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v4, buf, v6);
      return;
    }

    return;
  }

  internalBag = [(GKStoreBag *)self internalBag];
  v8 = [(NSDictionary *)internalBag objectForKeyedSubscript:@"gk-launch-gamecenter-host-patterns"];
  v9 = [(NSDictionary *)internalBag objectForKeyedSubscript:@"gk-launch-gamecenter-path-patterns"];
  if (!v8)
  {
    return;
  }

  v10 = v9;
  if (!v9)
  {
    return;
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [(NSUserDefaults *)v11 URLForKey:@"GKURLPatternCacheBagURLUserDefaultsKey"];
  [-[NSUserDefaults objectForKey:](v11 objectForKey:{@"GKURLPatternCacheExpirationDateUserDefaultsKey", "timeIntervalSinceDate:", -[GKStoreBag expiration](self, "expiration")}];
  v14 = v13;
  if ([(NSURL *)[(GKStoreBag *)self url] isEqual:v12])
  {
    if (v14 >= 0.0)
    {
      return;
    }
  }

  [(NSUserDefaults *)v11 setURL:[(GKStoreBag *)self url] forKey:@"GKURLPatternCacheBagURLUserDefaultsKey"];
  [(NSUserDefaults *)v11 setObject:[(GKStoreBag *)self expiration] forKey:@"GKURLPatternCacheExpirationDateUserDefaultsKey"];
  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  v15 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Updating URL pattern cache", buf, 2u);
  }

  v24[1] = @"gk-launch-gamecenter-path-patterns";
  v25[0] = v8;
  v24[0] = @"gk-launch-gamecenter-host-patterns";
  v25[1] = [v10 arrayByAddingObject:@"^/(me|players|friends|games|requests|challenges|htmlResources)($|/.*)"];
  v16 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v17 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Caches/com.apple.gamed/url-resolution.plist"];
  v21 = 0;
  if (!-[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", [v17 stringByDeletingLastPathComponent], 1, 0, &v21))
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v20 = os_log_GKDaemon;
    if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 138412290;
    v23 = v21;
    v4 = "Failed to create folder for url pattern cache: %@";
LABEL_32:
    v5 = v20;
    v6 = 12;
    goto LABEL_6;
  }

  v18 = [NSPropertyListSerialization dataWithPropertyList:v16 format:200 options:0 error:&v21];
  if (!v18)
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v20 = os_log_GKDaemon;
    if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 138412290;
    v23 = v21;
    v4 = "Failed to decode data for url pattern cache: %@";
    goto LABEL_32;
  }

  if ([(NSData *)v18 writeToFile:v17 options:0 error:&v21])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.gamed.changed-url-resolution", 0, 0, 1u);
    return;
  }

  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  v20 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v21;
    v4 = "Failed to write url pattern cache: %@";
    goto LABEL_32;
  }
}

- (void)_updatePlayerIDHashParameters
{
  internalBag = [(GKStoreBag *)self internalBag];
  v3 = [(NSDictionary *)internalBag objectForKey:GKPlayerIDHashModKey];
  v4 = [(NSDictionary *)internalBag objectForKey:GKPlayerIDHashAddKey];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    do
    {
      [v3 integerValue];
    }

    while (!GKAtomicCompareAndSwap32Barrier());
    do
    {
      [v6 integerValue];
    }

    while (!GKAtomicCompareAndSwap32Barrier());
  }
}

- (int)hashForPlayerID:(id)d
{
  v4 = [d hash];
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  return self->_playerIDHashAdd + v5 % self->_playerIDHashMod;
}

- (void)signRequest:(id)request sapSession:(id)session postData:(id)data
{
  [request _gkSetSAPSession:session];
  [request setHTTPShouldUsePipelining:{-[GKStoreBag _shouldUseHTTPPipelining](self, "_shouldUseHTTPPipelining")}];
  if (session)
  {
    if (data)
    {
      v9 = [objc_msgSend(request "HTTPBody")];
      if (v9)
      {
        v10 = v9;
        v15 = 0;
        if (CC_SHA1([v9 bytes], objc_msgSend(v9, "length"), md))
        {
          v11 = [NSData dataWithBytes:md length:20];
        }

        else
        {
          if (!os_log_GKGeneral)
          {
            GKOSLoggers();
          }

          v12 = os_log_GKDaemon;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "GKStoreBag:ISSHA1DataForBytes failed", buf, 2u);
          }

          v11 = 0;
        }

        [request setHTTPBody:v10];
        [request setSAPSignature:{objc_msgSend(session, "signatureForData:error:", v11, &v15)}];
        [request setSAPversion:{objc_msgSend(session, "SAPVersion")}];
        [request setValue:@"gzip" forHTTPHeaderField:@"content-encoding"];
        if (!os_log_GKGeneral)
        {
          GKOSLoggers();
        }

        v13 = os_log_GKDaemon;
        if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
        {
          loggableHeaders = [request loggableHeaders];
          *md = 138412546;
          requestCopy = request;
          v19 = 2112;
          v20 = loggableHeaders;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "MESCAL:signed body of request:%@ %@", md, 0x16u);
        }
      }
    }
  }
}

- (id)requestWithURL:(id)l playerID:(id)d authToken:(id)token pushToken:(id)pushToken client:(id)client gameDescriptor:(id)descriptor postData:(id)data includeUDID:(BOOL)self0 includeAPNS:(BOOL)self1 sapSession:(id)self2
{
  LOWORD(v14) = 0;
  LOWORD(v13) = __PAIR16__(s, iD);
  return [GKStoreBag requestWithURL:"requestWithURL:playerID:authToken:pushToken:client:gameDescriptor:postData:includeUDID:includeAPNS:sapSession:includeClientInfoAuthHeader:preconnect:" playerID:l authToken:d pushToken:token client:pushToken gameDescriptor:client postData:descriptor includeUDID:data includeAPNS:v13 sapSession:session includeClientInfoAuthHeader:v14 preconnect:?];
}

- (id)requestWithURL:(id)l playerID:(id)d authToken:(id)token pushToken:(id)pushToken client:(id)client gameDescriptor:(id)descriptor postData:(id)data includeUDID:(BOOL)self0 includeAPNS:(BOOL)self1 sapSession:(id)self2 includeClientInfoAuthHeader:(BOOL)self3 preconnect:(BOOL)self4
{
  lCopy = l;
  if (preconnect)
  {
    lCopy = [l _gkGetPreconnectURL];
  }

  v21 = +[NSMutableURLRequest _gkHTTPRequestWithURL:postData:protocolVersion:](NSMutableURLRequest, "_gkHTTPRequestWithURL:postData:protocolVersion:", lCopy, data, [objc_opt_class() protocolVersionForClient:client]);
  [v21 setPlayerID:d hash:-[GKStoreBag hashForPlayerID:](self authToken:{"hashForPlayerID:", d), token}];
  if (s)
  {
    [v21 setPushToken:pushToken];
  }

  if (!descriptor)
  {
    descriptor = [client gameDescriptor];
  }

  [v21 setGameDescriptor:descriptor];
  [v21 setLocale:{objc_msgSend(client, "locale")}];
  if (iD)
  {
    [v21 setDeviceUniqueID];
  }

  if (header)
  {
    [objc_opt_class() addClientInfoAuthHeaderToRequest:v21];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v21 _gkAddHeadersFromDictionary:{objc_msgSend(data, "headers")}];
  }

  [(GKStoreBag *)self signRequest:v21 sapSession:session postData:data];
  return v21;
}

+ (id)contentDumpForDebugging:(id)debugging
{
  if (!debugging)
  {
    return @"(null: empty body)";
  }

  bytes = [debugging bytes];
  v6 = [debugging length];
  v7 = v6;
  if (v6 < 5)
  {
    if (v6 < 2)
    {
      goto LABEL_19;
    }

    v8 = *bytes;
  }

  else
  {
    v8 = *bytes;
    if (v8 == 255)
    {
      if (bytes[1] == 216)
      {
        return @"(probably JPEG data)";
      }

      goto LABEL_19;
    }

    if (v6 >= 9 && v8 == 137)
    {
      if (bytes[1] == 80 && bytes[2] == 78 && bytes[3] == 71)
      {
        return @"(probably PNG data)";
      }

      goto LABEL_19;
    }
  }

  if (v8 == 123 && bytes[v6 - 1] == 125)
  {
    *buf = 0;
    v10 = [NSJSONSerialization JSONObjectWithData:debugging options:0 error:buf];
    if (!v10)
    {
      return @"(probably JSON object data)";
    }

    return [self redactPasswordFromDebuggingContent:v10];
  }

LABEL_19:
  v13 = 0;
  v14 = 100;
  v10 = [NSPropertyListSerialization propertyListWithData:debugging options:0 format:&v14 error:&v13];
  if (v10)
  {
    return [self redactPasswordFromDebuggingContent:v10];
  }

  if (v7 >= 128)
  {
    v11 = 128;
  }

  else
  {
    v11 = v7;
  }

  if (memmem(bytes, v11, "<html", 5uLL) || memmem(bytes, v11, "<xml", 4uLL))
  {
    return [[NSString alloc] initWithBytes:bytes length:v7 encoding:4];
  }

  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  v12 = os_log_GKHTTP;
  if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    *&buf[4] = v7;
    v16 = 2112;
    debuggingCopy = debugging;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "(couldn't decode data of length:%ld as plist/html or xml) %@", buf, 0x16u);
  }

  return 0;
}

+ (id)redactPasswordFromDebuggingContent:(id)content
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![content objectForKeyedSubscript:@"password"])
  {
    return content;
  }

  v4 = [content mutableCopy];
  [v4 setObject:@"PASSWORD REDACTED" forKeyedSubscript:@"password"];

  return v4;
}

+ (id)appleIdSession
{
  if (qword_1003B93A0 != -1)
  {
    sub_10029325C();
  }

  return qword_1003B9398;
}

+ (id)deviceInfo
{
  if (qword_1003B93B0 != -1)
  {
    sub_100293270();
  }

  return qword_1003B93A8;
}

+ (void)addClientInfoAuthHeaderToRequest:(id)request
{
  v4 = +[GKStoreBag deviceInfo];

  [request setValue:v4 forHTTPHeaderField:@"X-MMe-Client-Info"];
}

+ (void)addAuthHeadersToRequest:(id)request
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100165C10;
  v3[3] = &unk_1003695B8;
  v3[4] = request;
  [objc_msgSend(objc_msgSend(objc_opt_class() "appleIdSession")];
}

- (void)_sendAsynchronousRequest:(id)request responseMustBeSigned:(BOOL)signed preconnect:(BOOL)preconnect completion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100165D64;
  v6[3] = &unk_100369608;
  v6[4] = self;
  v6[5] = request;
  signedCopy = signed;
  preconnectCopy = preconnect;
  v6[6] = completion;
  [(GKActivity *)[(GKStoreBag *)self activity] childNamed:[NSString execute:"stringWithFormat:" stringWithFormat:"GKStoreBag+NoARC.m", 953, "[GKStoreBag _sendAsynchronousRequest:responseMustBeSigned:preconnect:completion:]"], v6];
}

- (void)_sendOneAsyncTryWithRequest:(id)request responseMustBeSigned:(BOOL)signed session:(id)session retryCount:(int)count preconnect:(BOOL)preconnect completionHandler:(id)handler
{
  if (request)
  {
    preconnectCopy = preconnect;
    v15 = objc_opt_class();
    v16 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      if (!os_log_GKGeneral)
      {
        GKOSLoggers();
        v16 = os_log_GKHTTP;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        requestCopy = request;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "timestamp at which REQUEST %@ was sent", buf, 0xCu);
      }
    }

    [GKStoreBag addAuthHeadersToRequest:request];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100166098;
    v20[3] = &unk_100369630;
    v20[4] = session;
    v20[5] = request;
    countCopy = count;
    signedCopy = signed;
    v23 = preconnectCopy;
    v20[6] = self;
    v20[7] = handler;
    [v15 _gkSendAsynchronousRequest:request preconnect:preconnectCopy completionHandler:v20];
  }

  else if (handler)
  {
    preconnect = [NSError userErrorForCode:17 userInfo:0, session, *&count, preconnect];
    v18 = *(handler + 2);
    v19.n128_u64[0] = 0;

    v18(handler, 0, preconnect, v19);
  }
}

- (id)_bagKeyValidationDict
{
  if (qword_1003B93C0 != -1)
  {
    sub_10029339C();
  }

  return qword_1003B93B8;
}

- (void)invalidateBagKeys:(id)keys
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001668D8;
  v4[3] = &unk_100369678;
  v4[4] = keys;
  v4[5] = +[NSDate date];
  [-[GKStoreBag _bagKeyValidationDict](self "_bagKeyValidationDict")];
}

- (BOOL)isLoadValidForBagKey:(id)key date:(id)date
{
  v5 = [-[GKStoreBag _bagKeyValidationDict](self "_bagKeyValidationDict")];
  if (!v5)
  {
    return 1;
  }

  [date timeIntervalSinceDate:v5];
  return v6 > 0.0;
}

- (id)_networkSynchonizationQueue
{
  if (qword_1003B93D0 != -1)
  {
    sub_1002933B0();
  }

  return qword_1003B93C8;
}

- (void)verifyEligibilityForBagKey:(id)key preconnect:(BOOL)preconnect replyQueue:(id)queue client:(id)client completion:(id)completion
{
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100166B94;
  v13[3] = &unk_1003696C0;
  objc_copyWeak(&v14, &location);
  preconnectCopy = preconnect;
  v13[4] = key;
  v13[5] = client;
  v13[6] = queue;
  v13[7] = completion;
  [(GKStoreBag *)self getValuesWithCompletion:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)verifyEligibilityForBagKey:(id)key preconnect:(BOOL)preconnect checkingAllowedRequestKeys:(id)keys client:(id)client
{
  preconnectCopy = preconnect;
  v10 = objc_alloc_init(GKPlayerInternalProvider);
  v11 = [-[GKPlayerInternalProvider localPlayer](v10 "localPlayer")];

  v12 = -[GKNetworkRequestEligibilityChecker initWithHasAcknowledgedLatestGDPR:alwaysAllowedBagKeysObject:isAppDistributorThirdParty:isInDebugMode:isPreconnecting:]([GKNetworkRequestEligibilityChecker alloc], "initWithHasAcknowledgedLatestGDPR:alwaysAllowedBagKeysObject:isAppDistributorThirdParty:isInDebugMode:isPreconnecting:", v11, keys, [client isAppDistributorThirdParty], objc_msgSend(client, "isInDebugMode"), preconnectCopy);
  v13 = [(GKNetworkRequestEligibilityChecker *)v12 verifyEligibilityWithBagKey:key];

  return v13;
}

- (void)_loadDataForBagKey:(id)key preconnect:(BOOL)preconnect postData:(id)data client:(id)client credential:(id)credential completion:(id)completion
{
  clientCopy = client;
  if (!client)
  {
    if (!os_log_GKGeneral)
    {
      GKOSLoggers();
    }

    v15 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "_loadDataForBagKey: nil client provided, will instantiate one", buf, 2u);
    }

    clientCopy = +[GKClientProxy gameCenterClient];
  }

  *buf = 0;
  v25 = buf;
  v26 = 0x3052000000;
  v27 = sub_100162C80;
  v28 = sub_100162C90;
  v29 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3052000000;
  v23[3] = sub_100162C80;
  v23[4] = sub_100162C90;
  v23[5] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v16 = dispatch_group_create();
  v17 = +[NSDate date];
  if (!data)
  {
    if ([key isEqual:@"gk-sap-setup-cert-url"])
    {
      data = 0;
    }

    else
    {
      data = -[NSDictionary _gkPlistXMLDataForAppSession:](+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v17, @"gk-post-data", 0), "_gkPlistXMLDataForAppSession:", [clientCopy appSessionForCredential:credential]);
    }
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100167044;
  v19[3] = &unk_1003697D0;
  v19[4] = self;
  v19[5] = v16;
  preconnectCopy = preconnect;
  v19[6] = key;
  v19[7] = clientCopy;
  v19[8] = credential;
  v19[9] = data;
  v19[12] = v23;
  v19[13] = buf;
  v19[14] = v22;
  v19[10] = v17;
  v19[11] = completion;
  v21 = client == 0;
  [(GKActivity *)[(GKStoreBag *)self activity] childNamed:[NSString execute:"stringWithFormat:" stringWithFormat:"GKStoreBag+NoARC.m", 1234, "[GKStoreBag _loadDataForBagKey:preconnect:postData:client:credential:completion:]"], v19];
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(buf, 8);
}

- (void)writeDataForBagKey:(id)key postData:(id)data client:(id)client credential:(id)credential completion:(id)completion
{
  if (!os_log_GKGeneral)
  {
    GKOSLoggers();
  }

  v13 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GKStoreBag: writeDataForBagKey", buf, 2u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100167B14;
  v14[3] = &unk_100369820;
  v14[4] = self;
  v14[5] = key;
  v14[6] = data;
  v14[7] = client;
  v14[8] = credential;
  v14[9] = completion;
  dispatch_barrier_async([(GKStoreBag *)self _networkSynchonizationQueue], v14);
}

- (void)readDataForBagKey:(id)key postData:(id)data client:(id)client credential:(id)credential completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100167C98;
  v7[3] = &unk_100369820;
  v7[4] = self;
  v7[5] = key;
  v7[6] = data;
  v7[7] = client;
  v7[8] = credential;
  v7[9] = completion;
  [(GKActivity *)[(GKStoreBag *)self activity] childNamed:[NSString execute:"stringWithFormat:" stringWithFormat:"GKStoreBag+NoARC.m", 1387, "[GKStoreBag readDataForBagKey:postData:client:credential:completion:]"], v7];
}

- (void)readDataForBagKey:(id)key preconnect:(BOOL)preconnect postData:(id)data client:(id)client credential:(id)credential completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100167E30;
  v8[3] = &unk_100369848;
  v8[4] = self;
  v8[5] = key;
  preconnectCopy = preconnect;
  v8[6] = data;
  v8[7] = client;
  v8[8] = credential;
  v8[9] = completion;
  [(GKActivity *)[(GKStoreBag *)self activity] childNamed:[NSString execute:"stringWithFormat:" stringWithFormat:"GKStoreBag+NoARC.m", 1401, "[GKStoreBag readDataForBagKey:preconnect:postData:client:credential:completion:]"], v8];
}

- (void)readDataForURL:(id)l postData:(id)data client:(id)client credential:(id)credential includeUDID:(BOOL)d includeAPNS:(BOOL)s completion:(id)completion
{
  clientCopy = client;
  if (!client)
  {
    clientCopy = +[GKClientProxy gameCenterClient];
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3052000000;
  v24[3] = sub_100162C80;
  v24[4] = sub_100162C90;
  v24[5] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3052000000;
  v23[3] = sub_100162C80;
  v23[4] = sub_100162C90;
  v23[5] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100168120;
  block[3] = &unk_100369898;
  block[4] = self;
  block[5] = l;
  block[6] = credential;
  block[7] = clientCopy;
  dCopy = d;
  sCopy = s;
  block[8] = data;
  block[9] = v14;
  block[10] = v24;
  block[11] = v22;
  block[12] = v23;
  dispatch_async([(GKStoreBag *)self _networkSynchonizationQueue], block);
  global_queue = dispatch_get_global_queue(0, 0);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100168334;
  v18[3] = &unk_1003698C0;
  v18[4] = completion;
  v18[5] = v24;
  v18[6] = v22;
  v18[7] = v23;
  dispatch_group_notify(v14, global_queue, v18);
  dispatch_release(v14);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
}

@end