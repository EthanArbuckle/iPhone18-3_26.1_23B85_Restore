@interface APPromotedContentLegacyInterface
+ (id)sharedInstance;
- (APPromotedContentLegacyInterface)init;
- (id)_currentRateLimits;
- (id)_loadRateLimitsFromUserDefaults;
- (id)_rateLimitPlacementTypes:(id)types context:(id)context token:(id)token completionHandler:(id)handler;
- (void)_handleAdRequesterResponseForToken:(id)token internalContent:(id)content completionHandler:(id)handler;
- (void)_loadRateLimitSettings;
- (void)requestPromotedContentOfTypesAccumulating:(id)accumulating forContext:(id)context withToken:(id)token andBundleID:(id)d clientInfo:(id)info idAccount:(id)account completionHandler:(id)handler;
- (void)requestPromotedContentOfTypesWithoutAccumulating:(id)accumulating forContext:(id)context withToken:(id)token andBundleID:(id)d clientInfo:(id)info idAccount:(id)account completionHandler:(id)handler;
- (void)setRateLimitRequestsInFeed:(float)feed inArticle:(float)article betweenArticle:(float)betweenArticle videoInArticle:(float)inArticle nativeInFeed:(float)inFeed nativeInArticle:(float)nativeInArticle;
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

- (void)requestPromotedContentOfTypesWithoutAccumulating:(id)accumulating forContext:(id)context withToken:(id)token andBundleID:(id)d clientInfo:(id)info idAccount:(id)account completionHandler:(id)handler
{
  accumulatingCopy = accumulating;
  contextCopy = context;
  dCopy = d;
  infoCopy = info;
  accountCopy = account;
  handlerCopy = handler;
  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    identifier = [contextCopy identifier];
    *buf = 136315650;
    v49 = "[APPromotedContentLegacyInterface requestPromotedContentOfTypesWithoutAccumulating:forContext:withToken:andBundleID:clientInfo:idAccount:completionHandler:]";
    v50 = 2114;
    v51 = identifier;
    v52 = 2114;
    v53 = dCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s: bundleID for context %{public}@ is %{public}@.", buf, 0x20u);
  }

  if ([accumulatingCopy count])
  {
    selfCopy = self;
    v38 = infoCopy;
    v19 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [accumulatingCopy count]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v39 = accumulatingCopy;
    v20 = accumulatingCopy;
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
          v28 = -[APAdRequestParameters initWithContext:bundleID:identifier:placement:completionHandler:](v26, "initWithContext:bundleID:identifier:placement:completionHandler:", contextCopy, dCopy, v27, [v25 integerValue], handlerCopy);

          [v19 addObject:v28];
        }

        v22 = [v20 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v22);
    }

    adRequesterLock = [(APPromotedContentLegacyInterface *)selfCopy adRequesterLock];
    [adRequesterLock lock];

    adRequesters = [(APPromotedContentLegacyInterface *)selfCopy adRequesters];
    v31 = [adRequesters objectForKeyedSubscript:dCopy];

    infoCopy = v38;
    if (!v31)
    {
      v32 = [APAdRequester alloc];
      v33 = +[NSUUID UUID];
      v31 = [(APAdRequester *)v32 initWithBundleID:dCopy identifier:v33 clientInfo:v38 idAccount:accountCopy accumulateRequests:0];

      adRequesters2 = [(APPromotedContentLegacyInterface *)selfCopy adRequesters];
      [adRequesters2 setObject:v31 forKeyedSubscript:dCopy];
    }

    adRequesterLock2 = [(APPromotedContentLegacyInterface *)selfCopy adRequesterLock];
    [adRequesterLock2 unlock];

    v36 = [v19 copy];
    [(APAdRequester *)v31 requestAds:v36];

    accumulatingCopy = v39;
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

- (void)requestPromotedContentOfTypesAccumulating:(id)accumulating forContext:(id)context withToken:(id)token andBundleID:(id)d clientInfo:(id)info idAccount:(id)account completionHandler:(id)handler
{
  accumulatingCopy = accumulating;
  contextCopy = context;
  tokenCopy = token;
  dCopy = d;
  infoCopy = info;
  accountCopy = account;
  handlerCopy = handler;
  v21 = APLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    identifier = [contextCopy identifier];
    *buf = 136315650;
    v57 = "[APPromotedContentLegacyInterface requestPromotedContentOfTypesAccumulating:forContext:withToken:andBundleID:clientInfo:idAccount:completionHandler:]";
    v58 = 2114;
    v59 = identifier;
    v60 = 2114;
    v61 = dCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s: bundleID for context %{public}@ is %{public}@.", buf, 0x20u);
  }

  if ([accumulatingCopy count])
  {
    v23 = [(APPromotedContentLegacyInterface *)self _rateLimitPlacementTypes:accumulatingCopy context:contextCopy token:tokenCopy completionHandler:handlerCopy];
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

      adRequesterLock = [(APPromotedContentLegacyInterface *)self adRequesterLock];
      [adRequesterLock lock];

      adRequesters = [(APPromotedContentLegacyInterface *)self adRequesters];
      v26 = [adRequesters objectForKeyedSubscript:dCopy];

      if (!v26)
      {
        if (!dCopy)
        {
          adRequesterLock2 = [(APPromotedContentLegacyInterface *)self adRequesterLock];
          [adRequesterLock2 unlock];

          identifier2 = [contextCopy identifier];
          v39 = [NSString stringWithFormat:@"Request from context %@ is missing the bundle identifier. Cannot create ad requester.", identifier2];

          APSimulateCrash();
          (*(handlerCopy + 2))(handlerCopy, 0, 0);
LABEL_18:

          v23 = v48;
          goto LABEL_24;
        }

        v27 = [APAdRequester alloc];
        v28 = +[NSUUID UUID];
        v26 = [(APAdRequester *)v27 initWithBundleID:dCopy identifier:v28 clientInfo:infoCopy idAccount:accountCopy accumulateRequests:1];

        adRequesters2 = [(APPromotedContentLegacyInterface *)self adRequesters];
        [adRequesters2 setObject:v26 forKeyedSubscript:dCopy];
      }

      v45 = v26;
      v46 = infoCopy;
      adRequesterLock3 = [(APPromotedContentLegacyInterface *)self adRequesterLock];
      [adRequesterLock3 unlock];

      v31 = +[NSMutableArray array];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v47 = accumulatingCopy;
      v32 = accumulatingCopy;
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

            v37 = -[APAdRequestParameters initWithContext:bundleID:identifier:placement:completionHandler:]([APAdRequestParameters alloc], "initWithContext:bundleID:identifier:placement:completionHandler:", contextCopy, dCopy, tokenCopy, [*(*(&v50 + 1) + 8 * i) unsignedIntValue], handlerCopy);
            [v31 addObject:v37];
          }

          v34 = [v32 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v34);
      }

      v38 = [v31 copy];
      v39 = v45;
      [(APAdRequester *)v45 accumulateAdRequests:v38];

      infoCopy = v46;
      accumulatingCopy = v47;
      goto LABEL_18;
    }

    v40 = APLogForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      [contextCopy identifier];
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

- (void)_handleAdRequesterResponseForToken:(id)token internalContent:(id)content completionHandler:(id)handler
{
  tokenCopy = token;
  contentCopy = content;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  handlerCopy[2](handlerCopy, contentCopy);
  objc_sync_exit(selfCopy);
}

- (void)setRateLimitRequestsInFeed:(float)feed inArticle:(float)article betweenArticle:(float)betweenArticle videoInArticle:(float)inArticle nativeInFeed:(float)inFeed nativeInArticle:(float)nativeInArticle
{
  if (+[APSystemInternal isAppleInternalInstall]&& ([(APPromotedContentLegacyInterface *)self _loadRateLimitsFromUserDefaults], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    rateLimitLock = [(APPromotedContentLegacyInterface *)self rateLimitLock];
    [rateLimitLock lock];
    [(APPromotedContentLegacyInterface *)self setRateLimits:v21];
    v16 = +[NSDate now];
    [v16 timeIntervalSince1970];
    [(APPromotedContentLegacyInterface *)self setRateLimitsLastUpdatedOn:?];

    [rateLimitLock unlock];
  }

  else
  {
    v17 = [APRateLimits alloc];
    *&v18 = feed;
    v21 = sub_100393B48(&v17->super.isa, v18, article, betweenArticle, inArticle, inFeed, nativeInArticle);
    rateLimitLock = +[NSDate now];
    rateLimitLock2 = [(APPromotedContentLegacyInterface *)self rateLimitLock];
    [rateLimitLock2 lock];
    v20 = objc_alloc_init(APRateLimitSettings);
    [(APRateLimitSettings *)v20 setLastUpdated:rateLimitLock];
    [(APRateLimitSettings *)v20 setRateLimitsObject:v21];
    [rateLimitLock timeIntervalSince1970];
    [(APPromotedContentLegacyInterface *)self setRateLimitsLastUpdatedOn:?];
    [(APPromotedContentLegacyInterface *)self setRateLimits:v21];
    [rateLimitLock2 unlock];
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
    lastUpdated = [(APRateLimitSettings *)v13 lastUpdated];
    if (lastUpdated)
    {
      v8 = +[NSDate now];
      [v8 timeIntervalSinceDate:lastUpdated];
      v10 = v9;

      if (v10 <= 86400.0)
      {
        rateLimitsObject = [(APRateLimitSettings *)v13 rateLimitsObject];
        if (v13)
        {
          objc_storeStrong(&self->_rateLimits, rateLimitsObject);
          [lastUpdated timeIntervalSince1970];
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

  rateLimitLock = [(APPromotedContentLegacyInterface *)self rateLimitLock];
  [rateLimitLock lock];
  [(APPromotedContentLegacyInterface *)self rateLimitsLastUpdatedOn];
  v8 = v7;
  rateLimits = [(APPromotedContentLegacyInterface *)self rateLimits];
  if (!rateLimits || v8 == 0.0)
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

  rateLimits2 = [(APPromotedContentLegacyInterface *)self rateLimits];
  [rateLimitLock unlock];

  return rateLimits2;
}

- (id)_rateLimitPlacementTypes:(id)types context:(id)context token:(id)token completionHandler:(id)handler
{
  typesCopy = types;
  contextCopy = context;
  v38 = COERCE_DOUBLE(token);
  handlerCopy = handler;
  _currentRateLimits = [(APPromotedContentLegacyInterface *)self _currentRateLimits];
  if (!_currentRateLimits)
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

    v31 = typesCopy;
    goto LABEL_27;
  }

  adPosition = [contextCopy adPosition];
  v14 = sub_100393DC0(_currentRateLimits, adPosition);
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

  v35 = _currentRateLimits;
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
    v17 = [typesCopy count];
    v18 = adPositionToString(adPosition);
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

  v19 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(typesCopy, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v36 = typesCopy;
  v20 = typesCopy;
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
          queue = [(APPromotedContentLegacyInterface *)self queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1002B7D24;
          block[3] = &unk_10047D1A0;
          block[4] = v25;
          v40 = contextCopy;
          v41 = *&v38;
          v42 = handlerCopy;
          dispatch_async(queue, block);
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
  typesCopy = v36;
  _currentRateLimits = v35;
LABEL_27:

  return v31;
}

@end