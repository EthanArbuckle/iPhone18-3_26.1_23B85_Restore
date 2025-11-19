@interface APAttributionReceiver
- (APAttributionReceiver)initWithConnection:(id)a3 devicePipelinesAttribution:(id)a4;
- (BOOL)canReturnToken:(id)a3;
- (void)_attributionTokenRequestTimestamp:(id)a3 completionHandler:(id)a4;
- (void)_continueAttribution:(id)a3 token:(id)a4 cached:(BOOL)a5 requestTimestamp:(id)a6 error:(id)a7 constructionWithCompletionHandler:(id)a8;
- (void)_runDevicePipelinesAttributionForBundleId:(id)a3 metadata:(id)a4 isDelayEnabled:(BOOL)a5;
- (void)attributionAnalytics:(unint64_t)a3 end:(unint64_t)a4 Handler:(id)a5;
- (void)attributionTokenRequestTimestamp:(id)a3 interval:(unint64_t)a4 completionHandler:(id)a5;
- (void)terminateConnection;
@end

@implementation APAttributionReceiver

- (APAttributionReceiver)initWithConnection:(id)a3 devicePipelinesAttribution:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = APAttributionReceiver;
  v9 = [(APAttributionReceiver *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    v11 = objc_alloc_init(APAttributionAnalytics);
    analytics = v10->_analytics;
    v10->_analytics = v11;

    objc_storeStrong(&v10->_attribution, a4);
    v13 = [[APUnfairLock alloc] initWithOptions:1];
    attributionCoordinatorLock = v10->_attributionCoordinatorLock;
    v10->_attributionCoordinatorLock = v13;

    v15 = objc_alloc_init(_TtC11Attribution22ODAttributionAnalytics);
    oDAttrAnalytics = v10->_oDAttrAnalytics;
    v10->_oDAttrAnalytics = v15;
  }

  return v10;
}

- (BOOL)canReturnToken:(id)a3
{
  v3 = a3;
  v4 = [[APItunesMetaData alloc] initWithBundleID:v3];

  if ([(APItunesMetaData *)v4 installedByAppStore])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(APItunesMetaData *)v4 installedAsTestApp];
  }

  return v5;
}

- (void)attributionTokenRequestTimestamp:(id)a3 interval:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(APAttributionReceiver *)self setIntervalId:a4];
  v10 = APPerfLogForCategory();
  [(APAttributionReceiver *)self setAttemptId:os_signpost_id_generate(v10)];

  if (v9)
  {
    v11 = +[APIDAccountProvider privateUserAccount];
    v12 = APPerfLogForCategory();
    v13 = [(APAttributionReceiver *)self intervalId];
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        *buf = 134349312;
        v22 = [(APAttributionReceiver *)self intervalId];
        v23 = 2050;
        v24 = [(APAttributionReceiver *)self attemptId];
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Token Request", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
      }
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10022A4B4;
    v16[3] = &unk_100479520;
    v17 = v8;
    v18 = v11;
    v19 = self;
    v20 = v9;
    v15 = v11;
    [(APAttributionReceiver *)self _attributionTokenRequestTimestamp:v17 completionHandler:v16];
  }
}

- (void)_attributionTokenRequestTimestamp:(id)a3 completionHandler:(id)a4
{
  v86 = a3;
  v6 = a4;
  v94 = 0u;
  v95 = 0u;
  v7 = [(APAttributionReceiver *)self connection];
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
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
    v10 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:3 userInfo:v9];
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136642819;
      *&buf[4] = "[APAttributionReceiver _attributionTokenRequestTimestamp:completionHandler:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{sensitive}s, Attribution services not available in extensions", buf, 0xCu);
    }

    v12 = [[AAAttributionResult alloc] initWithError:v10];
    v6[2](v6, v12);
  }

  else
  {
    v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v14 = [(APAttributionReceiver *)self analytics];
    [v14 setTokenDaemonStart:v13];

    v9 = objc_alloc_init(APAttributionRequest);
    [(APAttributionRequest *)v9 loadIDAccountDetails];
    v15 = [(APAttributionReceiver *)self connection];
    v10 = [v15 bundleID];

    [(APAttributionRequest *)v9 setBundleId:v10];
    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request for Attribution from bundle %{public}@", buf, 0xCu);
    }

    v17 = [(APAttributionRequest *)v9 bundleId];
    v18 = v17 == 0;

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
      v6[2](v6, v29);
    }

    else
    {
      if (+[APSystemInternal isAppleInternalInstall])
      {
        v19 = [APSettingsStorageUserDefaults alloc];
        v20 = [@"APAttribution.bundleID" componentsSeparatedByString:@"."];
        v21 = [v20 lastObject];
        v99 = v21;
        v100 = v10;
        v22 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
        v23 = [v19 initWithDefaultValues:v22];

        v24 = [v23 valueForKey:@"APAttribution.bundleID"];

        [(APAttributionRequest *)v9 setBundleId:v24];
        v25 = [v23 valueForKey:@"APAttribution.applyRateLimiting"];
        v26 = v25;
        if (v25)
        {
          v27 = [v25 BOOLValue];
        }

        else
        {
          v27 = 1;
        }

        v30 = APLogForCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *&buf[4] = v24;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Using override bundleID %{public}@ to pull attribution data", buf, 0xCu);
        }

        v10 = v24;
      }

      else
      {
        v27 = 1;
      }

      v85 = objc_alloc_init(APLegacyFeatureFlags);
      if ([v85 attributionV3Enabled])
      {
        v31 = [(APAttributionRequest *)v9 bundleId];
        v93 = 0;
        v12 = [APItunesAppMetaData loadWithBundleId:v31 error:&v93];
      }

      else
      {
        v12 = 0;
      }

      v32 = [(APAttributionRequest *)v9 bundleId];
      v33 = [(APAttributionReceiver *)self canReturnToken:v32];

      v34 = APLogForCategory();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
      if (v33)
      {
        if (v35)
        {
          v36 = [(APAttributionRequest *)v9 bundleId];
          *buf = 138477827;
          *&buf[4] = v36;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Continuing with Attribution for %{private}@ app installed by a supported marketplace", buf, 0xCu);
        }

        if (v27)
        {
          v37 = [(APAttributionRequest *)v9 bundleId];
          v29 = [APAttributionCacheElement cachedElementForBundleIdentifier:v37];
        }

        else
        {
          v37 = APLogForCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Rate limiting is disabled", buf, 2u);
          }

          v29 = 0;
        }

        v41 = APPerfLogForCategory();
        v42 = [(APAttributionReceiver *)self intervalId];
        if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          v43 = [(APAttributionReceiver *)self intervalId];
          v44 = [(APAttributionReceiver *)self attemptId];
          *buf = 134349312;
          *&buf[4] = v43;
          *&buf[12] = 2050;
          *&buf[14] = v44;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_BEGIN, v42, "Check ATT", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
        }

        v45 = [(APAttributionReceiver *)self connection];
        v46 = v45;
        if (v45)
        {
          [v45 auditToken];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v84 = [APAttributionAppTracking appTrackingStatus:buf];

        v47 = APPerfLogForCategory();
        v48 = [(APAttributionReceiver *)self intervalId];
        if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
        {
          v49 = [(APAttributionReceiver *)self intervalId];
          v50 = [(APAttributionReceiver *)self attemptId];
          *buf = 134349312;
          *&buf[4] = v49;
          *&buf[12] = 2050;
          *&buf[14] = v50;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, v48, "Check ATT", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
        }

        if (v29 && (-[APAttributionRequest toroId](v9, "toroId"), v51 = objc_claimAutoreleasedReturnValue(), v52 = [v29 isValidCheckWithToroID:v51 andTrackingStatus:v84], v51, v52))
        {
          v53 = APPerfLogForCategory();
          v54 = [(APAttributionReceiver *)self intervalId];
          if (v54 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
          {
            v55 = [(APAttributionReceiver *)self intervalId];
            v56 = [(APAttributionReceiver *)self attemptId];
            *buf = 134349312;
            *&buf[4] = v55;
            *&buf[12] = 2050;
            *&buf[14] = v56;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_EVENT, v54, "Use Cached Token", "Use Cached Token id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
          }

          v57 = APLogForCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            *&buf[4] = v10;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Token requested before previous expired, returning cached token for %{public}@", buf, 0xCu);
          }

          v58 = APLogForCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = [v29 token];
            *buf = 141558274;
            *&buf[4] = 1752392040;
            *&buf[12] = 2112;
            *&buf[14] = v59;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "Token = %{mask.hash}@", buf, 0x16u);
          }

          v60 = +[APAttributionTokenTracker defaultTracker];
          v61 = [v29 token];
          v62 = [(APAttributionRequest *)v9 bundleId];
          v63 = [v60 isTokenUsedByOtherBundle:v61 bundleID:v62];

          if (v63)
          {
            [APAttributionAnalytics sendTokenDuplicateAnalytics:@"TokenDupeCache"];
            v64 = APPerfLogForCategory();
            v65 = [(APAttributionReceiver *)self intervalId];
            if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
            {
              v66 = [(APAttributionReceiver *)self intervalId];
              v67 = [(APAttributionReceiver *)self attemptId];
              *buf = 134349570;
              *&buf[4] = v66;
              *&buf[12] = 2050;
              *&buf[14] = v67;
              *&buf[22] = 2114;
              *&buf[24] = @"local";
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_EVENT, v65, "Duplicate Token Found", "Duplicate Token Found id=%{public, name=id}lld attempt=%{public, name=attempt}lld cache=%{public, name=cache}@", buf, 0x20u);
            }
          }

          else
          {
            v64 = +[APAttributionTokenTracker defaultTracker];
            v79 = [v29 token];
            v80 = [(APAttributionRequest *)v9 bundleId];
            [v64 addToken:v79 bundleID:v80];
          }

          v81 = [AAAttributionResult alloc];
          v82 = [v29 token];
          v83 = [v81 initWithToken:v82 tokenKey:0 source:1];
          v6[2](v6, v83);
        }

        else
        {
          v68 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v69 = [(APAttributionReceiver *)self analytics];
          [v69 setTokenStart:v68];

          v70 = APPerfLogForCategory();
          v71 = [(APAttributionReceiver *)self intervalId];
          if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
          {
            v72 = [(APAttributionReceiver *)self intervalId];
            v73 = [(APAttributionReceiver *)self attemptId];
            *buf = 134349312;
            *&buf[4] = v72;
            *&buf[12] = 2050;
            *&buf[14] = v73;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_INTERVAL_BEGIN, v71, "Create Token", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
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

            v76 = [(APAttributionReceiver *)self oDAttrAnalytics];
            [v76 recordAttributionODStart];

            v77 = [(APAttributionRequest *)v9 bundleId];
            -[APAttributionReceiver _runDevicePipelinesAttributionForBundleId:metadata:isDelayEnabled:](self, "_runDevicePipelinesAttributionForBundleId:metadata:isDelayEnabled:", v77, v12, [v85 odcaP0]);
          }

          v78 = [(APAttributionReceiver *)self intervalId];
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_10022B694;
          v87[3] = &unk_100479548;
          objc_copyWeak(&v91, buf);
          v88 = v9;
          v89 = v86;
          v90 = v6;
          [APAttributionToken tokenWithDetail:v84 interval:v78 completionHandler:v87];

          objc_destroyWeak(&v91);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        if (v35)
        {
          v38 = [(APAttributionRequest *)v9 bundleId];
          *buf = 138477827;
          *&buf[4] = v38;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Cannot attribute %{private}@ as it was installed by an unsupported marketplace.", buf, 0xCu);
        }

        v97 = NSLocalizedDescriptionKey;
        v98 = @"App is not able to be attributed";
        v29 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v39 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v29];
        v40 = [[AAAttributionResult alloc] initWithError:v39];
        v6[2](v6, v40);
      }
    }
  }
}

- (void)_continueAttribution:(id)a3 token:(id)a4 cached:(BOOL)a5 requestTimestamp:(id)a6 error:(id)a7 constructionWithCompletionHandler:(id)a8
{
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v112 = v16;
  v113 = v15;
  if (v15)
  {
    v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v20 = [(APAttributionReceiver *)self analytics];
    [v20 setTokenEnd:v19];

    v21 = APPerfLogForCategory();
    v22 = [(APAttributionReceiver *)self intervalId];
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v23 = v22;
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

    v109 = v11;

    v25 = [v15 key];
    v26 = [v25 base64EncodedStringWithOptions:0];
    [v14 setAttributionKey:v26];

    v27 = APPerfLogForCategory();
    v28 = [(APAttributionReceiver *)self intervalId];
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v29 = v28;
      if (os_signpost_enabled(v27))
      {
        v30 = [(APAttributionReceiver *)self intervalId];
        v31 = [(APAttributionReceiver *)self attemptId];
        *buf = 134349312;
        *&buf[4] = v30;
        *&buf[12] = 2050;
        *&buf[14] = v31;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, v29, "Load Metadata", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
      }
    }

    v32 = [APItunesMetaData alloc];
    v33 = [v14 bundleId];
    v34 = [(APItunesMetaData *)v32 initWithBundleID:v33];

    v119 = 0;
    LOBYTE(v32) = [(APItunesMetaData *)v34 loadMetaDataWithError:&v119];
    v35 = v119;
    v36 = v35;
    if (v32)
    {
      v110 = v35;
      [v14 setDevelopmentApp:{-[APItunesMetaData installedAsTestApp](v34, "installedAsTestApp")}];
      [v14 addMetaData:v34];
      [v14 loadDeviceInfo];
      v37 = objc_alloc_init(APAttributionCapData);
      v38 = [(APItunesMetaData *)v34 adamID];
      [(APAttributionCapData *)v37 loadCapData:v38];

      v111 = v14;
      [v14 addCapData:v37];
      v39 = APPerfLogForCategory();
      v40 = [(APAttributionReceiver *)self intervalId];
      v108 = v37;
      if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v41 = v40;
        if (os_signpost_enabled(v39))
        {
          v42 = [(APAttributionReceiver *)self intervalId];
          v43 = [(APAttributionReceiver *)self attemptId];
          *buf = 134349312;
          *&buf[4] = v42;
          v37 = v108;
          *&buf[12] = 2050;
          *&buf[14] = v43;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v41, "Load Metadata", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
        }
      }

      v44 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v45 = [(APAttributionReceiver *)self analytics];
      [v45 setServerPostStart:v44];

      v46 = [(APAttributionReceiver *)self analytics];
      v47 = os_transaction_create();
      v48 = +[NSDate date];
      v106 = objc_alloc_init(APLegacyFeatureFlags);
      v104 = v18;
      v105 = v17;
      v107 = v47;
      if ([v106 attributionV2Enabled])
      {
        v49 = [(APAttributionReceiver *)self intervalId];
        v118 = v110;
        v114[0] = _NSConcreteStackBlock;
        v114[1] = 3221225472;
        v114[2] = sub_10022C45C;
        v114[3] = &unk_100479570;
        v115 = v46;
        v116 = self;
        v117 = v47;
        v50 = [APAttributionServer sendRequestToServer:v111 requestTimestamp:v16 payloadDeliveryTimestamp:v48 interval:v49 error:&v118 completionHandler:v114];
        v51 = v118;

        if (v50)
        {
          v18 = v104;
        }

        else
        {
          v123 = NSLocalizedDescriptionKey;
          v124 = @"Error posting to Attribution server";
          v71 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];
          v72 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v71];

          v18 = v104;
          v17 = v105;
          v73 = [[AAAttributionResult alloc] initWithError:v72];
          v18[2](v18, v73);

          v37 = v108;
          v51 = v72;
        }

        v110 = v51;
        v74 = v107;
        if ((v50 & 1) == 0)
        {
LABEL_49:

          v14 = v111;
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

      v75 = [v111 storefront];
      v76 = [(APAttributionReceiver *)self analytics];
      [v76 setStorefrontID:v75];

      v77 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v78 = [(APAttributionReceiver *)self analytics];
      [v78 setTokenDaemonEnd:v77];

      v79 = [v113 signedAttributionToken];

      if (v79)
      {
        v80 = [v113 signedAttributionToken];
        v81 = [v111 bundleId];
        v82 = [(APAttributionReceiver *)self connection];
        v83 = v82;
        if (v82)
        {
          [v82 auditToken];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v86 = [APAttributionAppTracking appTrackingStatus:buf];
        v87 = [v111 toroId];
        v88 = [APAttributionCacheElement elementWithToken:v80 andBundle:v81 andAppTrackingStatus:v86 andToroID:v87];

        v89 = [(APAttributionReceiver *)self analytics];
        [v89 setStatus:@"Success"];

        v90 = [(APAttributionReceiver *)self analytics];
        [v90 sendTokenAnalytics];

        v91 = APLogForCategory();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
        {
          v92 = [v113 signedAttributionToken];
          *buf = 141558274;
          *&buf[4] = 1752392040;
          *&buf[12] = 2112;
          *&buf[14] = v92;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "Token %{mask.hash}@", buf, 0x16u);
        }

        v93 = +[APAttributionTokenTracker defaultTracker];
        v94 = [v113 signedAttributionToken];
        v95 = [v111 bundleId];
        v96 = [v93 isTokenUsedByOtherBundle:v94 bundleID:v95];

        v18 = v104;
        if ((v96 & 1) == 0)
        {
          v97 = +[APAttributionTokenTracker defaultTracker];
          v98 = [v113 signedAttributionToken];
          v99 = [v111 bundleId];
          [v97 addToken:v98 bundleID:v99];
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
        v85 = [v113 signedAttributionToken];
        v102 = [v113 key];
        v103 = [v101 initWithToken:v85 tokenKey:v102 source:v100];
        v104[2](v104, v103);

        v17 = v105;
        v51 = v110;
      }

      else
      {
        v120 = NSLocalizedDescriptionKey;
        v121 = @"Error no signed token available";
        v84 = [NSDictionary dictionaryWithObjects:&v121 forKeys:&v120 count:1];
        v51 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v84];

        v85 = [[AAAttributionResult alloc] initWithError:v51];
        v18[2](v18, v85);
      }

      v74 = v107;
      v37 = v108;
      goto LABEL_49;
    }

    v58 = v17;
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
      v62 = [(APAttributionReceiver *)self analytics];
      [v62 setStatus:v61];
    }

LABEL_29:
    v63 = [(APAttributionReceiver *)self analytics];
    [v63 sendTokenAnalytics];

    v125 = NSLocalizedDescriptionKey;
    v126 = @"Error loading data from iTunesMetadata";
    [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
    v65 = v64 = v36;
    v51 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v65];

    v66 = [[AAAttributionResult alloc] initWithError:v51];
    v18[2](v18, v66);

    v37 = APPerfLogForCategory();
    v67 = [(APAttributionReceiver *)self intervalId];
    if (v67 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v58;
    }

    else
    {
      v68 = v67;
      v17 = v58;
      if (os_signpost_enabled(&v37->super))
      {
        v69 = [(APAttributionReceiver *)self intervalId];
        v70 = [(APAttributionReceiver *)self attemptId];
        *buf = 134349312;
        *&buf[4] = v69;
        *&buf[12] = 2050;
        *&buf[14] = v70;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, &v37->super, OS_SIGNPOST_INTERVAL_END, v68, "Load Metadata", "id=%{public, name=id}lld attempt=%{public, name=attempt}lld", buf, 0x16u);
      }
    }

    goto LABEL_50;
  }

  if (v17)
  {
    v52 = [(APAttributionReceiver *)self analytics];
    [v52 setStatus:@"ErrorTokenSigning"];

    v53 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 code]);
    v54 = [v53 stringValue];
    v55 = [(APAttributionReceiver *)self analytics];
    [v55 setErrorCode:v54];

    v56 = [(APAttributionReceiver *)self analytics];
    [v56 sendTokenAnalytics];
  }

  v127 = NSLocalizedDescriptionKey;
  v128 = @"Error generating token";
  v57 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
  v51 = [NSError errorWithDomain:@"com.apple.ap.adservices.attributionError" code:2 userInfo:v57];

  v34 = [[AAAttributionResult alloc] initWithError:v51];
  v18[2](v18, v34);
LABEL_51:
}

- (void)attributionAnalytics:(unint64_t)a3 end:(unint64_t)a4 Handler:(id)a5
{
  v14 = a5;
  if (a4 >= a3 && (-[APAttributionReceiver analytics](self, "analytics"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 tokenDaemonStart], v8, v9))
  {
    v10 = [(APAttributionReceiver *)self analytics];
    [v10 setStart:a3];

    v11 = [(APAttributionReceiver *)self analytics];
    [v11 setEnd:a4];

    v12 = [(APAttributionReceiver *)self analytics];
    [v12 sendAnalytics];

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  v14[2](v14, v13, 0);
}

- (void)_runDevicePipelinesAttributionForBundleId:(id)a3 metadata:(id)a4 isDelayEnabled:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
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

  if (!v9)
  {
    v15 = APLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Aborting OnDevice Attribution flow. No metadata was loaded.", buf, 2u);
    }

    v16 = [NSError errorWithDomain:@"Attribution.ODAttributionFlowError" code:5611 userInfo:0];
    v17 = [(APAttributionReceiver *)self oDAttrAnalytics];
    [v17 recordAttributionODEndWithError:v16];

    [APDiagnosticError diagnosticErrorWithErrorType:2];
    goto LABEL_34;
  }

  if (([v9 installedByAppStore] & 1) == 0 && (objc_msgSend(v9, "testApp") & 1) == 0)
  {
    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Aborting OnDevice Attribution flow. The app was installed by an unsupported marketplace.", buf, 2u);
    }

    v16 = [NSError errorWithDomain:@"Attribution.ODAttributionFlowError" code:5610 userInfo:0];
    v22 = [(APAttributionReceiver *)self oDAttrAnalytics];
    [v22 recordAttributionODEndWithError:v16];

    [APDiagnosticError diagnosticErrorWithErrorType:3];
    goto LABEL_34;
  }

  if ([v9 installedByAppStore])
  {
    v11 = [v9 adamId];

    if (!v11)
    {
      v33 = APLogForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Aborting OnDevice Attribution flow. No adamId for AppStore app.", buf, 2u);
      }

      v16 = [NSError errorWithDomain:@"Attribution.ODAttributionFlowError" code:5609 userInfo:0];
      v34 = [(APAttributionReceiver *)self oDAttrAnalytics];
      [v34 recordAttributionODEndWithError:v16];

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
  v19 = [(APAttributionReceiver *)self connection];
  v20 = v19;
  if (v19)
  {
    [v19 auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v23 = [APAttributionAppTracking appTrackingStatus:buf];

  v24 = [(APAttributionReceiver *)self intervalId];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10022CE60;
  v35[3] = &unk_100479628;
  v35[4] = self;
  v36 = v8;
  v41 = v23;
  v37 = v9;
  v38 = v18;
  v39 = v13;
  v40 = v24;
  v25 = v13;
  v16 = v18;
  v26 = objc_retainBlock(v35);
  v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v28 = dispatch_queue_create("com.apple.ap.odattribution-receiver", v27);

  v29 = *&qword_1004DF6D0;
  v30 = APLogForCategory();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  if (v29 > 0.0 && v5)
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
  v3 = [(APAttributionReceiver *)self connection];

  if (v3)
  {
    v4 = [(APAttributionReceiver *)self connection];
    [v4 invalidate];

    [(APAttributionReceiver *)self setConnection:0];
  }
}

@end