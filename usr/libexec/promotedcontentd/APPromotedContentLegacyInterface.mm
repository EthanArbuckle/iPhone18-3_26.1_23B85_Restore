@interface APPromotedContentLegacyInterface
+ (id)sharedInstance;
- (APPromotedContentLegacyInterface)init;
- (id)_currentRateLimits;
- (id)_loadRateLimitsFromUserDefaults;
- (id)_rateLimitPlacementTypes:(id)a3 context:(id)a4 token:(id)a5 completionHandler:(id)a6;
- (void)_handleAdRequesterResponseForToken:(id)a3 internalContent:(id)a4 completionHandler:(id)a5;
- (void)_loadRateLimitSettings;
- (void)requestPromotedContentOfTypesAccumulating:(id)a3 forContext:(id)a4 withToken:(id)a5 andBundleID:(id)a6 clientInfo:(id)a7 idAccount:(id)a8 completionHandler:(id)a9;
- (void)requestPromotedContentOfTypesWithoutAccumulating:(id)a3 forContext:(id)a4 withToken:(id)a5 andBundleID:(id)a6 clientInfo:(id)a7 idAccount:(id)a8 completionHandler:(id)a9;
- (void)setRateLimitRequestsInFeed:(float)a3 inArticle:(float)a4 betweenArticle:(float)a5 videoInArticle:(float)a6 nativeInFeed:(float)a7 nativeInArticle:(float)a8;
@end

@implementation APPromotedContentLegacyInterface

+ (id)sharedInstance
{
  if (qword_1004E6A68 != -1)
  {
    sub_100393F7C();
  }

  v3 = qword_1004E6A60;

  return v3;
}

- (APPromotedContentLegacyInterface)init
{
  v8.receiver = self;
  v8.super_class = APPromotedContentLegacyInterface;
  v2 = [(APPromotedContentLegacyInterface *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ap.pclegacyinterface", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [[APUnfairLock alloc] initWithOptions:1];
    rateLimitLock = v2->_rateLimitLock;
    v2->_rateLimitLock = v5;

    [(APPromotedContentLegacyInterface *)v2 _loadRateLimitSettings];
  }

  return v2;
}

- (void)requestPromotedContentOfTypesWithoutAccumulating:(id)a3 forContext:(id)a4 withToken:(id)a5 andBundleID:(id)a6 clientInfo:(id)a7 idAccount:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v41 = a4;
  v42 = a6;
  v15 = a7;
  v16 = a8;
  v40 = a9;
  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v41 identifier];
    *buf = 136315650;
    v49 = "[APPromotedContentLegacyInterface requestPromotedContentOfTypesWithoutAccumulating:forContext:withToken:andBundleID:clientInfo:idAccount:completionHandler:]";
    v50 = 2114;
    v51 = v18;
    v52 = 2114;
    v53 = v42;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: bundleID for context %{public}@ is %{public}@.", buf, 0x20u);
  }

  if ([v14 count])
  {
    v37 = self;
    v38 = v15;
    v19 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v39 = v14;
    v20 = v14;
    v21 = [v20 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v44;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v43 + 1) + 8 * i);
          v26 = [APAdRequestParameters alloc];
          v27 = +[NSUUID UUID];
          v28 = -[APAdRequestParameters initWithContext:bundleID:identifier:placement:completionHandler:](v26, "initWithContext:bundleID:identifier:placement:completionHandler:", v41, v42, v27, [v25 integerValue], v40);

          [v19 addObject:v28];
        }

        v22 = [v20 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v22);
    }

    v29 = [(APPromotedContentLegacyInterface *)v37 adRequesterLock];
    [v29 lock];

    v30 = [(APPromotedContentLegacyInterface *)v37 adRequesters];
    v31 = [v30 objectForKeyedSubscript:v42];

    v15 = v38;
    if (!v31)
    {
      v32 = [APAdRequester alloc];
      v33 = +[NSUUID UUID];
      v31 = [(APAdRequester *)v32 initWithBundleID:v42 identifier:v33 clientInfo:v38 idAccount:v16 accumulateRequests:0];

      v34 = [(APPromotedContentLegacyInterface *)v37 adRequesters];
      [v34 setObject:v31 forKeyedSubscript:v42];
    }

    v35 = [(APPromotedContentLegacyInterface *)v37 adRequesterLock];
    [v35 unlock];

    v36 = [v19 copy];
    [(APAdRequester *)v31 requestAds:v36];

    v14 = v39;
  }

  else
  {
    v19 = APLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Placement types list is empty, nothing to request.", buf, 2u);
    }
  }
}

- (void)requestPromotedContentOfTypesAccumulating:(id)a3 forContext:(id)a4 withToken:(id)a5 andBundleID:(id)a6 clientInfo:(id)a7 idAccount:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v49 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = APLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v49 identifier];
    *buf = 136315650;
    v57 = "[APPromotedContentLegacyInterface requestPromotedContentOfTypesAccumulating:forContext:withToken:andBundleID:clientInfo:idAccount:completionHandler:]";
    v58 = 2114;
    v59 = v22;
    v60 = 2114;
    v61 = v17;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s: bundleID for context %{public}@ is %{public}@.", buf, 0x20u);
  }

  if ([v15 count])
  {
    v23 = [(APPromotedContentLegacyInterface *)self _rateLimitPlacementTypes:v15 context:v49 token:v16 completionHandler:v20];
    if ([v23 count])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002B7030;
      block[3] = &unk_1004790A8;
      block[4] = self;
      v48 = v23;
      if (qword_1004E6A70 != -1)
      {
        dispatch_once(&qword_1004E6A70, block);
      }

      v24 = [(APPromotedContentLegacyInterface *)self adRequesterLock];
      [v24 lock];

      v25 = [(APPromotedContentLegacyInterface *)self adRequesters];
      v26 = [v25 objectForKeyedSubscript:v17];

      if (!v26)
      {
        if (!v17)
        {
          v43 = [(APPromotedContentLegacyInterface *)self adRequesterLock];
          [v43 unlock];

          v44 = [v49 identifier];
          v39 = [NSString stringWithFormat:@"Request from context %@ is missing the bundle identifier. Cannot create ad requester.", v44];

          APSimulateCrash();
          (*(v20 + 2))(v20, 0, 0);
LABEL_18:

          v23 = v48;
          goto LABEL_24;
        }

        v27 = [APAdRequester alloc];
        v28 = +[NSUUID UUID];
        v26 = [(APAdRequester *)v27 initWithBundleID:v17 identifier:v28 clientInfo:v18 idAccount:v19 accumulateRequests:1];

        v29 = [(APPromotedContentLegacyInterface *)self adRequesters];
        [v29 setObject:v26 forKeyedSubscript:v17];
      }

      v45 = v26;
      v46 = v18;
      v30 = [(APPromotedContentLegacyInterface *)self adRequesterLock];
      [v30 unlock];

      v31 = +[NSMutableArray array];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v47 = v15;
      v32 = v15;
      v33 = [v32 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v51;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v51 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = -[APAdRequestParameters initWithContext:bundleID:identifier:placement:completionHandler:]([APAdRequestParameters alloc], "initWithContext:bundleID:identifier:placement:completionHandler:", v49, v17, v16, [*(*(&v50 + 1) + 8 * i) unsignedIntValue], v20);
            [v31 addObject:v37];
          }

          v34 = [v32 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v34);
      }

      v38 = [v31 copy];
      v39 = v45;
      [(APAdRequester *)v45 accumulateAdRequests:v38];

      v18 = v46;
      v15 = v47;
      goto LABEL_18;
    }

    v40 = APLogForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      [v49 identifier];
      v42 = v41 = v23;
      *buf = 138543362;
      v57 = v42;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "All content types filtered out for context %{public}@", buf, 0xCu);

      v23 = v41;
    }
  }

  else
  {
    v23 = APLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Placement types list is empty, nothing to request.", buf, 2u);
    }
  }

LABEL_24:
}

- (void)_handleAdRequesterResponseForToken:(id)a3 internalContent:(id)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v9[2](v9, v8);
  objc_sync_exit(v10);
}

- (void)setRateLimitRequestsInFeed:(float)a3 inArticle:(float)a4 betweenArticle:(float)a5 videoInArticle:(float)a6 nativeInFeed:(float)a7 nativeInArticle:(float)a8
{
  if (+[APSystemInternal isAppleInternalInstall]&& ([(APPromotedContentLegacyInterface *)self _loadRateLimitsFromUserDefaults], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = [(APPromotedContentLegacyInterface *)self rateLimitLock];
    [v15 lock];
    [(APPromotedContentLegacyInterface *)self setRateLimits:v21];
    v16 = +[NSDate now];
    [v16 timeIntervalSince1970];
    [(APPromotedContentLegacyInterface *)self setRateLimitsLastUpdatedOn:?];

    [v15 unlock];
  }

  else
  {
    v17 = [APRateLimits alloc];
    *&v18 = a3;
    v21 = sub_100393B48(&v17->super.isa, v18, a4, a5, a6, a7, a8);
    v15 = +[NSDate now];
    v19 = [(APPromotedContentLegacyInterface *)self rateLimitLock];
    [v19 lock];
    v20 = objc_alloc_init(APRateLimitSettings);
    [(APRateLimitSettings *)v20 setLastUpdated:v15];
    [(APRateLimitSettings *)v20 setRateLimitsObject:v21];
    [v15 timeIntervalSince1970];
    [(APPromotedContentLegacyInterface *)self setRateLimitsLastUpdatedOn:?];
    [(APPromotedContentLegacyInterface *)self setRateLimits:v21];
    [v19 unlock];
  }
}

- (id)_loadRateLimitsFromUserDefaults
{
  v2 = [NSUserDefaults alloc];
  v3 = [v2 initWithSuiteName:APDefaultsBundleID];
  v4 = [v3 dictionaryForKey:@"RateLimits"];
  if (v4)
  {
    v12[0] = kAPMetricInternalMessageInFeedRateKey;
    v12[1] = kAPMetricInternalMessageInArticleRateKey;
    v13[0] = &off_100492400;
    v13[1] = &off_100492418;
    v12[2] = kAPMetricInternalMessageBetweenArticleRateKey;
    v12[3] = kAPMetricInternalMessageVideoInArticleRateKey;
    v13[2] = &off_100492430;
    v13[3] = &off_100492448;
    v12[4] = kAPMetricInternalMessageNativeInFeedRateKey;
    v12[5] = kAPMetricInternalMessageNativeInArticleRateKey;
    v13[4] = &off_100492460;
    v13[5] = &off_100492478;
    v5 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:6];
    +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002B74FC;
    v10 = v9[3] = &unk_10047D178;
    v11 = v4;
    v6 = v10;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = sub_100393D18([APRateLimits alloc], v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_loadRateLimitSettings
{
  if (+[APSystemInternal isAppleInternalInstall]&& ([(APPromotedContentLegacyInterface *)self _loadRateLimitsFromUserDefaults], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    rateLimits = self->_rateLimits;
    self->_rateLimits = v3;
    v5 = v3;

    v13 = +[NSDate now];

    [(APRateLimitSettings *)v13 timeIntervalSince1970];
    self->_rateLimitsLastUpdatedOn = v6;
  }

  else
  {
    v13 = objc_alloc_init(APRateLimitSettings);
    v7 = [(APRateLimitSettings *)v13 lastUpdated];
    if (v7)
    {
      v8 = +[NSDate now];
      [v8 timeIntervalSinceDate:v7];
      v10 = v9;

      if (v10 <= 86400.0)
      {
        v11 = [(APRateLimitSettings *)v13 rateLimitsObject];
        if (v13)
        {
          objc_storeStrong(&self->_rateLimits, v11);
          [v7 timeIntervalSince1970];
          self->_rateLimitsLastUpdatedOn = v12;
        }
      }

      else
      {
        [(APRateLimitSettings *)v13 setLastUpdated:0];
        [(APRateLimitSettings *)v13 setRateLimitsObject:0];
      }
    }
  }
}

- (id)_currentRateLimits
{
  v3 = +[NSDate now];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v6 = [(APPromotedContentLegacyInterface *)self rateLimitLock];
  [v6 lock];
  [(APPromotedContentLegacyInterface *)self rateLimitsLastUpdatedOn];
  v8 = v7;
  v9 = [(APPromotedContentLegacyInterface *)self rateLimits];
  if (!v9 || v8 == 0.0)
  {
  }

  else
  {

    if (v5 - v8 > 86400.0)
    {
      v10 = objc_alloc_init(APRateLimitSettings);
      [(APRateLimitSettings *)v10 setLastUpdated:0];
      [(APRateLimitSettings *)v10 setRateLimitsObject:0];
      [(APPromotedContentLegacyInterface *)self setRateLimits:0];
      [(APPromotedContentLegacyInterface *)self setRateLimitsLastUpdatedOn:0.0];
      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Rate limit was expired. Setting it to 1.0.", v14, 2u);
      }
    }
  }

  v12 = [(APPromotedContentLegacyInterface *)self rateLimits];
  [v6 unlock];

  return v12;
}

- (id)_rateLimitPlacementTypes:(id)a3 context:(id)a4 token:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v38 = COERCE_DOUBLE(a5);
  v37 = a6;
  v12 = [(APPromotedContentLegacyInterface *)self _currentRateLimits];
  if (!v12)
  {
    v32 = APLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 141558274;
      v49 = 1752392040;
      v50 = 2112;
      v51 = v38;
      v33 = "No rate limits set, sending all requests. Token: %{mask.hash}@";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, v33, buf, 0x16u);
    }

LABEL_26:

    v31 = v10;
    goto LABEL_27;
  }

  v13 = [v11 adPosition];
  v14 = sub_100393DC0(v12, v13);
  if (v14 >= 1.0)
  {
    v32 = APLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 141558274;
      v49 = 1752392040;
      v50 = 2112;
      v51 = v38;
      v33 = "Rate limit is 1.0, sending all requests. Token: %{mask.hash}@";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v35 = v12;
  if (v14 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = APLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v10 count];
    v18 = adPositionToString(v13);
    *buf = 134219010;
    v49 = v17;
    v50 = 2048;
    v51 = v15;
    v52 = 2114;
    v53 = v18;
    v54 = 2160;
    v55 = 1752392040;
    v56 = 2112;
    v57 = v38;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Rate limiting %lu request(s) using %f rate. Ad position: %{public}@. Token: %{mask.hash}@", buf, 0x34u);
  }

  v19 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v36 = v10;
  v20 = v10;
  v21 = [v20 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v44;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v43 + 1) + 8 * i);
        if (arc4random_uniform(0x3E8u) >= (v15 * 1000.0))
        {
          v26 = [(APPromotedContentLegacyInterface *)self queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1002B7D24;
          block[3] = &unk_10047D1A0;
          block[4] = v25;
          v40 = v11;
          v41 = *&v38;
          v42 = v37;
          dispatch_async(v26, block);
        }

        else
        {
          [v19 addObject:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v22);
  }

  v27 = APLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [v20 count];
    v29 = v28 - [v19 count];
    v30 = COERCE_DOUBLE([v19 count]);
    *buf = 134218754;
    v49 = v29;
    v50 = 2048;
    v51 = v30;
    v52 = 2160;
    v53 = 1752392040;
    v54 = 2112;
    v55 = *&v38;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Rate limited: %ld request(s). Going to send: %ld request(s). Token: %{mask.hash}@", buf, 0x2Au);
  }

  v31 = [v19 copy];
  v10 = v36;
  v12 = v35;
LABEL_27:

  return v31;
}

@end