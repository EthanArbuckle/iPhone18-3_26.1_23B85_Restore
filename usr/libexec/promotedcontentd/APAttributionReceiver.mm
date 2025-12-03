@interface APAttributionReceiver
- (APAttributionReceiver)initWithConnection:(id)connection devicePipelinesAttribution:(id)attribution;
- (BOOL)canReturnToken:(id)token;
- (void)_attributionTokenRequestTimestamp:(id)timestamp completionHandler:(id)handler;
- (void)_continueAttribution:(id)attribution token:(id)token cached:(BOOL)cached requestTimestamp:(id)timestamp error:(id)error constructionWithCompletionHandler:(id)handler;
- (void)_runDevicePipelinesAttributionForBundleId:(id)id metadata:(id)metadata isDelayEnabled:(BOOL)enabled;
- (void)attributionAnalytics:(unint64_t)analytics end:(unint64_t)end Handler:(id)handler;
- (void)attributionTokenRequestTimestamp:(id)timestamp interval:(unint64_t)interval completionHandler:(id)handler;
- (void)terminateConnection;
@end

@implementation APAttributionReceiver

- (APAttributionReceiver)initWithConnection:(id)connection devicePipelinesAttribution:(id)attribution
{
  connectionCopy = connection;
  attributionCopy = attribution;
  v18.receiver = self;
  v18.super_class = APAttributionReceiver;
  v9 = [(APAttributionReceiver *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    v11 = objc_alloc_init(APAttributionAnalytics);
    analytics = v10->_analytics;
    v10->_analytics = v11;

    objc_storeStrong(&v10->_attribution, attribution);
    v13 = [[APUnfairLock alloc] initWithOptions:1];
    attributionCoordinatorLock = v10->_attributionCoordinatorLock;
    v10->_attributionCoordinatorLock = v13;

    v15 = objc_alloc_init(_TtC11Attribution22ODAttributionAnalytics);
    oDAttrAnalytics = v10->_oDAttrAnalytics;
    v10->_oDAttrAnalytics = v15;
  }

  return v10;
}

- (BOOL)canReturnToken:(id)token
{
  tokenCopy = token;
  v4 = [[APItunesMetaData alloc] initWithBundleID:tokenCopy];

  if ([(APItunesMetaData *)v4 installedByAppStore])
  {
    installedAsTestApp = 1;
  }

  else
  {
    installedAsTestApp = [(APItunesMetaData *)v4 installedAsTestApp];
  }

  return installedAsTestApp;
}

- (void)attributionTokenRequestTimestamp:(id)timestamp interval:(unint64_t)interval completionHandler:(id)handler
{
  timestampCopy = timestamp;
  handlerCopy = handler;
  [(APAttributionReceiver *)self setIntervalId:interval];
  v10 = APPerfLogForCategory();
  [(APAttributionReceiver *)self setAttemptId:os_signpost_id_generate(v10)];

  if (handlerCopy)
  {
    v11 = +[APIDAccountProvider privateUserAccount];
    v12 = APPerfLogForCategory();
    intervalId = [(APAttributionReceiver *)self intervalId];
    if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = intervalId;
      if (os_signpost_enabled(v12))
      {
        *buf = 134349312;
        intervalId2 = [(APAttributionReceiver *)self intervalId];
        v23 = 2050;
        attemptId = [(APAttributionReceiver *)self attemptId];
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Token Request", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
      }
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10022A4B4;
    v16[3] = &unk_100479520;
    v17 = timestampCopy;
    v18 = v11;
    selfCopy = self;
    v20 = handlerCopy;
    v15 = v11;
    [(APAttributionReceiver *)self _attributionTokenRequestTimestamp:v17 completionHandler:v16];
  }
}

- (void)_attributionTokenRequestTimestamp:(id)timestamp completionHandler:(id)handler
{
  timestampCopy = timestamp;
  handlerCopy = handler;
  v94 = 0u;
  v95 = 0u;
  connection = [(APAttributionReceiver *)self connection];
  v8 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  if (ba_is_process_extension())
  {
    v103 = NSLocalizedDescriptionKey;
    v104 = @"Attribution services not available in extensions";
    v9 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    bundleID = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:3 userInfo:v9];
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136642819;
      *&buf[4] = "[APAttributionReceiver _attributionTokenRequestTimestamp:completionHandler:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{sensitive}s, Attribution services not available in extensions", buf, 0xCu);
    }

    v12 = [[AAAttributionResult alloc] initWithError:bundleID];
    handlerCopy[2](handlerCopy, v12);
  }

  else
  {
    v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    analytics = [(APAttributionReceiver *)self analytics];
    [analytics setTokenDaemonStart:v13];

    v9 = objc_alloc_init(APAttributionRequest);
    [(APAttributionRequest *)v9 loadIDAccountDetails];
    connection2 = [(APAttributionReceiver *)self connection];
    bundleID = [connection2 bundleID];

    [(APAttributionRequest *)v9 setBundleId:bundleID];
    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = bundleID;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request for Attribution from bundle %{public}@", buf, 0xCu);
    }

    bundleId = [(APAttributionRequest *)v9 bundleId];
    v18 = bundleId == 0;

    if (v18)
    {
      v28 = APLogForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "BundleID nil", buf, 2u);
      }

      v101 = NSLocalizedDescriptionKey;
      v102 = @"BundleID nil";
      v12 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      v85 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v12];
      v29 = [[AAAttributionResult alloc] initWithError:v85];
      handlerCopy[2](handlerCopy, v29);
    }

    else
    {
      if (+[APSystemInternal isAppleInternalInstall])
      {
        v19 = [APSettingsStorageUserDefaults alloc];
        v20 = [@"APAttribution.bundleID" componentsSeparatedByString:@"."];
        lastObject = [v20 lastObject];
        v99 = lastObject;
        v100 = bundleID;
        v22 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
        v23 = [v19 initWithDefaultValues:v22];

        v24 = [v23 valueForKey:@"APAttribution.bundleID"];

        [(APAttributionRequest *)v9 setBundleId:v24];
        v25 = [v23 valueForKey:@"APAttribution.applyRateLimiting"];
        v26 = v25;
        if (v25)
        {
          bOOLValue = [v25 BOOLValue];
        }

        else
        {
          bOOLValue = 1;
        }

        v30 = APLogForCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v24;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Using override bundleID %{public}@ to pull attribution data", buf, 0xCu);
        }

        bundleID = v24;
      }

      else
      {
        bOOLValue = 1;
      }

      v85 = objc_alloc_init(APLegacyFeatureFlags);
      if ([v85 attributionV3Enabled])
      {
        bundleId2 = [(APAttributionRequest *)v9 bundleId];
        v93 = 0;
        v12 = [APItunesAppMetaData loadWithBundleId:bundleId2 error:&v93];
      }

      else
      {
        v12 = 0;
      }

      bundleId3 = [(APAttributionRequest *)v9 bundleId];
      v33 = [(APAttributionReceiver *)self canReturnToken:bundleId3];

      v34 = APLogForCategory();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
      if (v33)
      {
        if (v35)
        {
          bundleId4 = [(APAttributionRequest *)v9 bundleId];
          *buf = 138477827;
          *&buf[4] = bundleId4;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Continuing with Attribution for %{private}@ app installed by a supported marketplace", buf, 0xCu);
        }

        if (bOOLValue)
        {
          bundleId5 = [(APAttributionRequest *)v9 bundleId];
          v29 = [APAttributionCacheElement cachedElementForBundleIdentifier:bundleId5];
        }

        else
        {
          bundleId5 = APLogForCategory();
          if (os_log_type_enabled(bundleId5, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, bundleId5, OS_LOG_TYPE_INFO, "Rate limiting is disabled", buf, 2u);
          }

          v29 = 0;
        }

        v41 = APPerfLogForCategory();
        intervalId = [(APAttributionReceiver *)self intervalId];
        if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          intervalId2 = [(APAttributionReceiver *)self intervalId];
          attemptId = [(APAttributionReceiver *)self attemptId];
          *buf = 134349312;
          *&buf[4] = intervalId2;
          *&buf[12] = 2050;
          *&buf[14] = attemptId;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_BEGIN, intervalId, "Check ATT", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
        }

        connection3 = [(APAttributionReceiver *)self connection];
        v46 = connection3;
        if (connection3)
        {
          [connection3 auditToken];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v84 = [APAttributionAppTracking appTrackingStatus:buf];

        v47 = APPerfLogForCategory();
        intervalId3 = [(APAttributionReceiver *)self intervalId];
        if (intervalId3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
        {
          intervalId4 = [(APAttributionReceiver *)self intervalId];
          attemptId2 = [(APAttributionReceiver *)self attemptId];
          *buf = 134349312;
          *&buf[4] = intervalId4;
          *&buf[12] = 2050;
          *&buf[14] = attemptId2;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, intervalId3, "Check ATT", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
        }

        if (v29 && (-[APAttributionRequest toroId](v9, "toroId"), v51 = objc_claimAutoreleasedReturnValue(), v52 = [v29 isValidCheckWithToroID:v51 andTrackingStatus:v84], v51, v52))
        {
          v53 = APPerfLogForCategory();
          intervalId5 = [(APAttributionReceiver *)self intervalId];
          if (intervalId5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
          {
            intervalId6 = [(APAttributionReceiver *)self intervalId];
            attemptId3 = [(APAttributionReceiver *)self attemptId];
            *buf = 134349312;
            *&buf[4] = intervalId6;
            *&buf[12] = 2050;
            *&buf[14] = attemptId3;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_EVENT, intervalId5, "Use Cached Token", "Use Cached Token id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
          }

          v57 = APLogForCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            *&buf[4] = bundleID;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Token requested before previous expired, returning cached token for %{public}@", buf, 0xCu);
          }

          v58 = APLogForCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            token = [v29 token];
            *buf = 141558274;
            *&buf[4] = 1752392040;
            *&buf[12] = 2112;
            *&buf[14] = token;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "Token = %{mask.hash}@", buf, 0x16u);
          }

          v60 = +[APAttributionTokenTracker defaultTracker];
          token2 = [v29 token];
          bundleId6 = [(APAttributionRequest *)v9 bundleId];
          v63 = [v60 isTokenUsedByOtherBundle:token2 bundleID:bundleId6];

          if (v63)
          {
            [APAttributionAnalytics sendTokenDuplicateAnalytics:@"TokenDupeCache"];
            v64 = APPerfLogForCategory();
            intervalId7 = [(APAttributionReceiver *)self intervalId];
            if (intervalId7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
            {
              intervalId8 = [(APAttributionReceiver *)self intervalId];
              attemptId4 = [(APAttributionReceiver *)self attemptId];
              *buf = 134349570;
              *&buf[4] = intervalId8;
              *&buf[12] = 2050;
              *&buf[14] = attemptId4;
              *&buf[22] = 2114;
              *&buf[24] = @"local";
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_EVENT, intervalId7, "Duplicate Token Found", "Duplicate Token Found id=%{public, name=id}lld attempt=%{public, name=attempt}lld cache=%{public, name=cache}@", buf, 0x20u);
            }
          }

          else
          {
            v64 = +[APAttributionTokenTracker defaultTracker];
            token3 = [v29 token];
            bundleId7 = [(APAttributionRequest *)v9 bundleId];
            [v64 addToken:token3 bundleID:bundleId7];
          }

          v81 = [AAAttributionResult alloc];
          token4 = [v29 token];
          v83 = [v81 initWithToken:token4 tokenKey:0 source:1];
          handlerCopy[2](handlerCopy, v83);
        }

        else
        {
          v68 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          analytics2 = [(APAttributionReceiver *)self analytics];
          [analytics2 setTokenStart:v68];

          v70 = APPerfLogForCategory();
          intervalId9 = [(APAttributionReceiver *)self intervalId];
          if (intervalId9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
          {
            intervalId10 = [(APAttributionReceiver *)self intervalId];
            attemptId5 = [(APAttributionReceiver *)self attemptId];
            *buf = 134349312;
            *&buf[4] = intervalId10;
            *&buf[12] = 2050;
            *&buf[14] = attemptId5;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_INTERVAL_BEGIN, intervalId9, "Create Token", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
          }

          objc_initWeak(buf, self);
          v74 = APLogForCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            *v92 = 0;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "Creating token", v92, 2u);
          }

          if ([v85 attributionV3Enabled])
          {
            v75 = APLogForCategory();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
            {
              *v92 = 0;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "V3 enabled Flow", v92, 2u);
            }

            oDAttrAnalytics = [(APAttributionReceiver *)self oDAttrAnalytics];
            [oDAttrAnalytics recordAttributionODStart];

            bundleId8 = [(APAttributionRequest *)v9 bundleId];
            -[APAttributionReceiver _runDevicePipelinesAttributionForBundleId:metadata:isDelayEnabled:](self, "_runDevicePipelinesAttributionForBundleId:metadata:isDelayEnabled:", bundleId8, v12, [v85 odcaP0]);
          }

          intervalId11 = [(APAttributionReceiver *)self intervalId];
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_10022B694;
          v87[3] = &unk_100479548;
          objc_copyWeak(&v91, buf);
          v88 = v9;
          v89 = timestampCopy;
          v90 = handlerCopy;
          [APAttributionToken tokenWithDetail:v84 interval:intervalId11 completionHandler:v87];

          objc_destroyWeak(&v91);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        if (v35)
        {
          bundleId9 = [(APAttributionRequest *)v9 bundleId];
          *buf = 138477827;
          *&buf[4] = bundleId9;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Cannot attribute %{private}@ as it was installed by an unsupported marketplace.", buf, 0xCu);
        }

        v97 = NSLocalizedDescriptionKey;
        v98 = @"App is not able to be attributed";
        v29 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v39 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v29];
        v40 = [[AAAttributionResult alloc] initWithError:v39];
        handlerCopy[2](handlerCopy, v40);
      }
    }
  }
}

- (void)_continueAttribution:(id)attribution token:(id)token cached:(BOOL)cached requestTimestamp:(id)timestamp error:(id)error constructionWithCompletionHandler:(id)handler
{
  cachedCopy = cached;
  attributionCopy = attribution;
  tokenCopy = token;
  timestampCopy = timestamp;
  errorCopy = error;
  handlerCopy = handler;
  v112 = timestampCopy;
  v113 = tokenCopy;
  if (tokenCopy)
  {
    v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    analytics = [(APAttributionReceiver *)self analytics];
    [analytics setTokenEnd:v19];

    v21 = APPerfLogForCategory();
    intervalId = [(APAttributionReceiver *)self intervalId];
    if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v23 = intervalId;
      if (os_signpost_enabled(v21))
      {
        *buf = 134349312;
        *&buf[4] = [(APAttributionReceiver *)self intervalId];
        *&buf[12] = 2050;
        *&buf[14] = [(APAttributionReceiver *)self attemptId];
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v23, "Create Token", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
      }
    }

    v24 = APLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Created token", buf, 2u);
    }

    v109 = cachedCopy;

    v25 = [tokenCopy key];
    v26 = [v25 base64EncodedStringWithOptions:0];
    [attributionCopy setAttributionKey:v26];

    v27 = APPerfLogForCategory();
    intervalId2 = [(APAttributionReceiver *)self intervalId];
    if (intervalId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v29 = intervalId2;
      if (os_signpost_enabled(v27))
      {
        intervalId3 = [(APAttributionReceiver *)self intervalId];
        attemptId = [(APAttributionReceiver *)self attemptId];
        *buf = 134349312;
        *&buf[4] = intervalId3;
        *&buf[12] = 2050;
        *&buf[14] = attemptId;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, v29, "Load Metadata", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
      }
    }

    v32 = [APItunesMetaData alloc];
    bundleId = [attributionCopy bundleId];
    v34 = [(APItunesMetaData *)v32 initWithBundleID:bundleId];

    v119 = 0;
    LOBYTE(v32) = [(APItunesMetaData *)v34 loadMetaDataWithError:&v119];
    v35 = v119;
    v36 = v35;
    if (v32)
    {
      v110 = v35;
      [attributionCopy setDevelopmentApp:{-[APItunesMetaData installedAsTestApp](v34, "installedAsTestApp")}];
      [attributionCopy addMetaData:v34];
      [attributionCopy loadDeviceInfo];
      v37 = objc_alloc_init(APAttributionCapData);
      adamID = [(APItunesMetaData *)v34 adamID];
      [(APAttributionCapData *)v37 loadCapData:adamID];

      v111 = attributionCopy;
      [attributionCopy addCapData:v37];
      v39 = APPerfLogForCategory();
      intervalId4 = [(APAttributionReceiver *)self intervalId];
      v108 = v37;
      if (intervalId4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v41 = intervalId4;
        if (os_signpost_enabled(v39))
        {
          intervalId5 = [(APAttributionReceiver *)self intervalId];
          attemptId2 = [(APAttributionReceiver *)self attemptId];
          *buf = 134349312;
          *&buf[4] = intervalId5;
          v37 = v108;
          *&buf[12] = 2050;
          *&buf[14] = attemptId2;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v41, "Load Metadata", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
        }
      }

      v44 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      analytics2 = [(APAttributionReceiver *)self analytics];
      [analytics2 setServerPostStart:v44];

      analytics3 = [(APAttributionReceiver *)self analytics];
      v47 = os_transaction_create();
      v48 = +[NSDate date];
      v106 = objc_alloc_init(APLegacyFeatureFlags);
      v104 = handlerCopy;
      v105 = errorCopy;
      v107 = v47;
      if ([v106 attributionV2Enabled])
      {
        intervalId6 = [(APAttributionReceiver *)self intervalId];
        v118 = v110;
        v114[0] = _NSConcreteStackBlock;
        v114[1] = 3221225472;
        v114[2] = sub_10022C45C;
        v114[3] = &unk_100479570;
        v115 = analytics3;
        selfCopy = self;
        v117 = v47;
        v50 = [APAttributionServer sendRequestToServer:v111 requestTimestamp:timestampCopy payloadDeliveryTimestamp:v48 interval:intervalId6 error:&v118 completionHandler:v114];
        v51 = v118;

        if (v50)
        {
          handlerCopy = v104;
        }

        else
        {
          v123 = NSLocalizedDescriptionKey;
          v124 = @"Error posting to Attribution server";
          v71 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];
          v72 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v71];

          handlerCopy = v104;
          errorCopy = v105;
          v73 = [[AAAttributionResult alloc] initWithError:v72];
          handlerCopy[2](handlerCopy, v73);

          v37 = v108;
          v51 = v72;
        }

        v110 = v51;
        v74 = v107;
        if ((v50 & 1) == 0)
        {
LABEL_49:

          attributionCopy = v111;
LABEL_50:

          goto LABEL_51;
        }
      }

      else
      {
        v60 = APLogForCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "v2 not enabled preventing sending v2 payload", buf, 2u);
        }
      }

      storefront = [v111 storefront];
      analytics4 = [(APAttributionReceiver *)self analytics];
      [analytics4 setStorefrontID:storefront];

      v77 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      analytics5 = [(APAttributionReceiver *)self analytics];
      [analytics5 setTokenDaemonEnd:v77];

      signedAttributionToken = [v113 signedAttributionToken];

      if (signedAttributionToken)
      {
        signedAttributionToken2 = [v113 signedAttributionToken];
        bundleId2 = [v111 bundleId];
        connection = [(APAttributionReceiver *)self connection];
        v83 = connection;
        if (connection)
        {
          [connection auditToken];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v86 = [APAttributionAppTracking appTrackingStatus:buf];
        toroId = [v111 toroId];
        v88 = [APAttributionCacheElement elementWithToken:signedAttributionToken2 andBundle:bundleId2 andAppTrackingStatus:v86 andToroID:toroId];

        analytics6 = [(APAttributionReceiver *)self analytics];
        [analytics6 setStatus:@"Success"];

        analytics7 = [(APAttributionReceiver *)self analytics];
        [analytics7 sendTokenAnalytics];

        v91 = APLogForCategory();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
        {
          signedAttributionToken3 = [v113 signedAttributionToken];
          *buf = 141558274;
          *&buf[4] = 1752392040;
          *&buf[12] = 2112;
          *&buf[14] = signedAttributionToken3;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "Token %{mask.hash}@", buf, 0x16u);
        }

        v93 = +[APAttributionTokenTracker defaultTracker];
        signedAttributionToken4 = [v113 signedAttributionToken];
        bundleId3 = [v111 bundleId];
        v96 = [v93 isTokenUsedByOtherBundle:signedAttributionToken4 bundleID:bundleId3];

        handlerCopy = v104;
        if ((v96 & 1) == 0)
        {
          v97 = +[APAttributionTokenTracker defaultTracker];
          signedAttributionToken5 = [v113 signedAttributionToken];
          bundleId4 = [v111 bundleId];
          [v97 addToken:signedAttributionToken5 bundleID:bundleId4];
        }

        if (v109)
        {
          v100 = 2;
        }

        else
        {
          v100 = 3;
        }

        v101 = [AAAttributionResult alloc];
        signedAttributionToken6 = [v113 signedAttributionToken];
        v102 = [v113 key];
        v103 = [v101 initWithToken:signedAttributionToken6 tokenKey:v102 source:v100];
        v104[2](v104, v103);

        errorCopy = v105;
        v51 = v110;
      }

      else
      {
        v120 = NSLocalizedDescriptionKey;
        v121 = @"Error no signed token available";
        v84 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
        v51 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v84];

        signedAttributionToken6 = [[AAAttributionResult alloc] initWithError:v51];
        handlerCopy[2](handlerCopy, signedAttributionToken6);
      }

      v74 = v107;
      v37 = v108;
      goto LABEL_49;
    }

    v58 = errorCopy;
    if (v35)
    {
      if ([v35 code] == 3)
      {
        v59 = &kAttributionAnalyticsTokenStatusErrorMetaDataBundleID;
      }

      else
      {
        if ([v36 code] != 2)
        {
          goto LABEL_29;
        }

        v59 = &kAttributionAnalyticsTokenStatusErrorMetaDataNoData;
      }

      v61 = *v59;
      analytics8 = [(APAttributionReceiver *)self analytics];
      [analytics8 setStatus:v61];
    }

LABEL_29:
    analytics9 = [(APAttributionReceiver *)self analytics];
    [analytics9 sendTokenAnalytics];

    v125 = NSLocalizedDescriptionKey;
    v126 = @"Error loading data from iTunesMetadata";
    [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
    v65 = v64 = v36;
    v51 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v65];

    v66 = [[AAAttributionResult alloc] initWithError:v51];
    handlerCopy[2](handlerCopy, v66);

    v37 = APPerfLogForCategory();
    intervalId7 = [(APAttributionReceiver *)self intervalId];
    if (intervalId7 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      errorCopy = v58;
    }

    else
    {
      v68 = intervalId7;
      errorCopy = v58;
      if (os_signpost_enabled(&v37->super))
      {
        intervalId8 = [(APAttributionReceiver *)self intervalId];
        attemptId3 = [(APAttributionReceiver *)self attemptId];
        *buf = 134349312;
        *&buf[4] = intervalId8;
        *&buf[12] = 2050;
        *&buf[14] = attemptId3;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, &v37->super, OS_SIGNPOST_INTERVAL_END, v68, "Load Metadata", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
      }
    }

    goto LABEL_50;
  }

  if (errorCopy)
  {
    analytics10 = [(APAttributionReceiver *)self analytics];
    [analytics10 setStatus:@"ErrorTokenSigning"];

    v53 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    stringValue = [v53 stringValue];
    analytics11 = [(APAttributionReceiver *)self analytics];
    [analytics11 setErrorCode:stringValue];

    analytics12 = [(APAttributionReceiver *)self analytics];
    [analytics12 sendTokenAnalytics];
  }

  v127 = NSLocalizedDescriptionKey;
  v128 = @"Error generating token";
  v57 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
  v51 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v57];

  v34 = [[AAAttributionResult alloc] initWithError:v51];
  handlerCopy[2](handlerCopy, v34);
LABEL_51:
}

- (void)attributionAnalytics:(unint64_t)analytics end:(unint64_t)end Handler:(id)handler
{
  handlerCopy = handler;
  if (end >= analytics && (-[APAttributionReceiver analytics](self, "analytics"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 tokenDaemonStart], v8, v9))
  {
    analytics = [(APAttributionReceiver *)self analytics];
    [analytics setStart:analytics];

    analytics2 = [(APAttributionReceiver *)self analytics];
    [analytics2 setEnd:end];

    analytics3 = [(APAttributionReceiver *)self analytics];
    [analytics3 sendAnalytics];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  handlerCopy[2](handlerCopy, v13, 0);
}

- (void)_runDevicePipelinesAttributionForBundleId:(id)id metadata:(id)metadata isDelayEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  idCopy = id;
  metadataCopy = metadata;
  if (qword_1004DF6D8 != -1)
  {
    sub_1003939E0();
  }

  v10 = APLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting OnDevice Attribution flow", buf, 2u);
  }

  if (!metadataCopy)
  {
    v15 = APLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Aborting OnDevice Attribution flow. No metadata was loaded.", buf, 2u);
    }

    v16 = [NSError errorWithDomain:@"Attribution.ODAttributionFlowError" code:5611 userInfo:0];
    oDAttrAnalytics = [(APAttributionReceiver *)self oDAttrAnalytics];
    [oDAttrAnalytics recordAttributionODEndWithError:v16];

    [APDiagnosticError diagnosticErrorWithErrorType:2];
    goto LABEL_34;
  }

  if (([metadataCopy installedByAppStore] & 1) == 0 && (objc_msgSend(metadataCopy, "testApp") & 1) == 0)
  {
    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Aborting OnDevice Attribution flow. The app was installed by an unsupported marketplace.", buf, 2u);
    }

    v16 = [NSError errorWithDomain:@"Attribution.ODAttributionFlowError" code:5610 userInfo:0];
    oDAttrAnalytics2 = [(APAttributionReceiver *)self oDAttrAnalytics];
    [oDAttrAnalytics2 recordAttributionODEndWithError:v16];

    [APDiagnosticError diagnosticErrorWithErrorType:3];
    goto LABEL_34;
  }

  if ([metadataCopy installedByAppStore])
  {
    adamId = [metadataCopy adamId];

    if (!adamId)
    {
      v33 = APLogForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Aborting OnDevice Attribution flow. No adamId for AppStore app.", buf, 2u);
      }

      v16 = [NSError errorWithDomain:@"Attribution.ODAttributionFlowError" code:5609 userInfo:0];
      oDAttrAnalytics3 = [(APAttributionReceiver *)self oDAttrAnalytics];
      [oDAttrAnalytics3 recordAttributionODEndWithError:v16];

      [APDiagnosticError diagnosticErrorWithErrorType:1];
LABEL_34:
      CreateDiagnosticReport();
      goto LABEL_35;
    }
  }

  if (+[APSystemInternal isAppleInternalInstall])
  {
    v12 = objc_alloc_init(APPromise);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10022CDD8;
    v42[3] = &unk_1004795B8;
    v43 = os_transaction_create();
    v13 = v12;
    v44 = v13;
    v14 = v43;
    [v13 catch:v42];
    [v13 raceWithTimeout:0 queue:*&qword_1004DF6D0 + 10.0];
  }

  else
  {
    v13 = 0;
  }

  v18 = os_transaction_create();
  connection = [(APAttributionReceiver *)self connection];
  v20 = connection;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v23 = [APAttributionAppTracking appTrackingStatus:buf];

  intervalId = [(APAttributionReceiver *)self intervalId];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10022CE60;
  v35[3] = &unk_100479628;
  v35[4] = self;
  v36 = idCopy;
  v41 = v23;
  v37 = metadataCopy;
  v38 = v18;
  v39 = v13;
  v40 = intervalId;
  v25 = v13;
  v16 = v18;
  v26 = objc_retainBlock(v35);
  v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v28 = dispatch_queue_create("com.apple.ap.odattribution-receiver", v27);

  v29 = *&qword_1004DF6D0;
  v30 = APLogForCategory();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  if (v29 > 0.0 && enabledCopy)
  {
    if (v31)
    {
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = qword_1004DF6D0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "OnDevice Attribution flow delay %f s", buf, 0xCu);
    }

    v32 = dispatch_time(0, (*&qword_1004DF6D0 * 1000000000.0));
    dispatch_after(v32, v28, v26);
  }

  else
  {
    if (v31)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "OnDevice Attribution flow starting immediately", buf, 2u);
    }

    dispatch_async(v28, v26);
  }

LABEL_35:
}

- (void)terminateConnection
{
  connection = [(APAttributionReceiver *)self connection];

  if (connection)
  {
    connection2 = [(APAttributionReceiver *)self connection];
    [connection2 invalidate];

    [(APAttributionReceiver *)self setConnection:0];
  }
}

@end