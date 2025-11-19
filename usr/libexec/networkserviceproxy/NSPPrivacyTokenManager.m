@interface NSPPrivacyTokenManager
+ (id)sharedTokenManager;
- (void)checkCostQuotaForIssuerName:(id)a3 quotaService:(id)a4 auditToken:(id)a5 bundleID:(id)a6 accessToken:(id)a7 completionHandler:(id)a8;
- (void)copyTokenInfo:(id)a3;
- (void)fetchPairedPrivateAccessTokensForChallenge:(id)a3 overrideAttester:(id)a4 configurationFetchDate:(id)a5 configurationETag:(id)a6 tokenKey:(id)a7 originNameKey:(id)a8 selectedOrigin:(id)a9 pairedChallenge:(id)a10 overridePairedAttester:(id)a11 pairedTokenKey:(id)a12 auditToken:(id)a13 bundleID:(id)a14 allowTools:(BOOL)a15 systemTokenClient:(BOOL)a16 accessToken:(id)a17 completionHandler:(id)a18;
- (void)fetchPrivacyTokensOnInterface:(id)a3 tierType:(id)a4 proxyURL:(id)a5 tokenVendor:(id)a6 tokenIssuancePublicKey:(id)a7 tokenChallenge:(id)a8 tokenCount:(unint64_t)a9 accessToken:(id)a10 retryAttempt:(unint64_t)a11 completionHandler:(id)a12;
- (void)fetchPrivateAccessTokenForChallenge:(id)a3 overrideAttester:(id)a4 supportsTokenUsageFeedback:(BOOL)a5 customAttester:(id)a6 customAttesterHeaders:(id)a7 tokenKey:(id)a8 originNameKey:(id)a9 selectedOrigin:(id)a10 auxiliaryAuthChallenge:(id)a11 auxiliaryAuthKey:(id)a12 auxiliaryAuthLabel:(id)a13 auxiliaryAuthInfoCacheKey:(id)a14 rateLimit:(unsigned int)a15 auditToken:(id)a16 bundleID:(id)a17 accessToken:(id)a18 completionHandler:(id)a19;
- (void)fetchPrivateAccessTokenForChallenge:(id)a3 overrideAttester:(id)a4 supportsTokenUsageFeedback:(BOOL)a5 customAttester:(id)a6 customAttesterHeaders:(id)a7 tokenKey:(id)a8 originNameKey:(id)a9 selectedOrigin:(id)a10 auxiliaryAuthInfoCacheKey:(id)a11 rateLimit:(unsigned int)a12 auditToken:(id)a13 bundleID:(id)a14 allowTools:(BOOL)a15 systemTokenClient:(BOOL)a16 accessToken:(id)a17 completionHandler:(id)a18;
- (void)getTokenServerIPWithInterface:(id)a3 completionHandler:(id)a4;
@end

@implementation NSPPrivacyTokenManager

+ (id)sharedTokenManager
{
  if (qword_100129870 != -1)
  {
    dispatch_once(&qword_100129870, &stru_10010ACA0);
  }

  v3 = qword_100129868;

  return v3;
}

- (void)fetchPrivacyTokensOnInterface:(id)a3 tierType:(id)a4 proxyURL:(id)a5 tokenVendor:(id)a6 tokenIssuancePublicKey:(id)a7 tokenChallenge:(id)a8 tokenCount:(unint64_t)a9 accessToken:(id)a10 retryAttempt:(unint64_t)a11 completionHandler:(id)a12
{
  v17 = a10;
  v90 = a3;
  v93 = a4;
  v96 = a5;
  v92 = a6;
  v18 = a7;
  v94 = a8;
  v91 = a10;
  v95 = a12;
  v19 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v19);

  if (!v96)
  {
    v78 = nplog_obj();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v128 = "[NSPPrivacyTokenManager fetchPrivacyTokensOnInterface:tierType:proxyURL:tokenVendor:tokenIssuancePublicKey:tokenChallenge:tokenCount:accessToken:retryAttempt:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v78, OS_LOG_TYPE_FAULT, "%s called with null proxyURL", buf, 0xCu);
    }

    goto LABEL_107;
  }

  if (!a9)
  {
    v78 = nplog_obj();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v128 = "[NSPPrivacyTokenManager fetchPrivacyTokensOnInterface:tierType:proxyURL:tokenVendor:tokenIssuancePublicKey:tokenChallenge:tokenCount:accessToken:retryAttempt:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v78, OS_LOG_TYPE_FAULT, "%s called with null (tokenCount > 0)", buf, 0xCu);
    }

    goto LABEL_107;
  }

  if (!v18)
  {
    v78 = nplog_obj();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v128 = "[NSPPrivacyTokenManager fetchPrivacyTokensOnInterface:tierType:proxyURL:tokenVendor:tokenIssuancePublicKey:tokenChallenge:tokenCount:accessToken:retryAttempt:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v78, OS_LOG_TYPE_FAULT, "%s called with null tokenIssuancePublicKey", buf, 0xCu);
    }

LABEL_107:

    (*(v95 + 2))(v95, 0, 0, 0, 0, 0, 0);
    goto LABEL_90;
  }

  if (!v94)
  {
    v20 = 0;
    v21 = self;
LABEL_10:
    if (v21)
    {
      v21->_totalRequestedTokenCount += a9;
    }

    v23 = objc_alloc_init(NSPPrivacyProxyTokenInfo);
    v123 = 0;
    v89 = [[RSABSSATokenBlinder alloc] initWithPublicKey:v18 error:&v123];
    v88 = v123;
    if (v88)
    {
      v24 = nplog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v128 = v88;
        v129 = 2112;
        v130 = v96;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "RSABSSATokenBlinder initWithPublicKey failed with error %@ for %@", buf, 0x16u);
      }

LABEL_15:

      (*(v95 + 2))(v95, 0, 0, 0, 0, 0, 1);
LABEL_89:

      goto LABEL_90;
    }

    if (!v89)
    {
      v24 = nplog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v128 = "[NSPPrivacyTokenManager fetchPrivacyTokensOnInterface:tierType:proxyURL:tokenVendor:tokenIssuancePublicKey:tokenChallenge:tokenCount:accessToken:retryAttempt:completionHandler:]";
        _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "%s called with null tokenBlinder", buf, 0xCu);
      }

      goto LABEL_15;
    }

    if (v20)
    {
      v102 = objc_alloc_init(NSMutableArray);
      v100 = objc_alloc_init(NSMutableArray);
      v25 = a9;
      while (1)
      {
        v26 = sub_1000B4FC8();
        if (!v26)
        {
          break;
        }

        v27 = sub_1000B5184(NSPPrivateAccessTokenRequest, v20, v26, v18);
        if (!v27)
        {
          v77 = nplog_obj();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v128 = "[NSPPrivacyTokenManager fetchPrivacyTokensOnInterface:tierType:proxyURL:tokenVendor:tokenIssuancePublicKey:tokenChallenge:tokenCount:accessToken:retryAttempt:completionHandler:]";
            _os_log_fault_impl(&_mh_execute_header, v77, OS_LOG_TYPE_FAULT, "%s called with null messageToBlind", buf, 0xCu);
          }

          (*(v95 + 2))(v95, 0, 0, 0, 0, 0, 1);
          goto LABEL_88;
        }

        [v102 addObject:v27];
        [v100 addObject:v26];

        if (!--v25)
        {
          goto LABEL_24;
        }
      }

      v76 = nplog_obj();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v128 = "[NSPPrivacyTokenManager fetchPrivacyTokensOnInterface:tierType:proxyURL:tokenVendor:tokenIssuancePublicKey:tokenChallenge:tokenCount:accessToken:retryAttempt:completionHandler:]";
        _os_log_fault_impl(&_mh_execute_header, v76, OS_LOG_TYPE_FAULT, "%s called with null clientNonce", buf, 0xCu);
      }

      (*(v95 + 2))(v95, 0, 0, 0, 0, 0, 1);
      goto LABEL_88;
    }

    v100 = 0;
    v102 = 0;
LABEL_24:
    v28 = objc_alloc_init(NSMutableArray);
    v98 = v89;
    v29 = v102;
    v101 = v28;
    v102 = v29;
    if (!self)
    {
LABEL_43:

      if ([v101 count])
      {
        v35 = [v101 count];
        if (self)
        {
          self->_totalUnactivatedTokenCount += v35;
        }

        v36 = nplog_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v101 count];
          *buf = 134218242;
          v128 = v37;
          v129 = 2112;
          v130 = v92;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "generated %lu unactivated tokens for %@", buf, 0x16u);
        }

        if (v20)
        {
          v117 = 0uLL;
          v118 = 0uLL;
          v115 = 0uLL;
          v116 = 0uLL;
          v38 = v101;
          v39 = [v38 countByEnumeratingWithState:&v115 objects:v125 count:16];
          if (v39)
          {
            v40 = *v116;
            while (2)
            {
              for (i = 0; i != v39; i = i + 1)
              {
                if (*v116 != v40)
                {
                  objc_enumerationMutation(v38);
                }

                v42 = *(*(&v115 + 1) + 8 * i);
                v43 = [NSPPrivateAccessTokenRequest alloc];
                v44 = [v42 blindedMessage];
                v45 = sub_1000B54C4(&v43->super, v20, v18, 0, 0, 0, v44);

                if (!v45 || (v47 = objc_getProperty(v45, v46, 24, 1)) == 0)
                {
                  v81 = nplog_obj();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136315138;
                    v128 = "[NSPPrivacyTokenManager fetchPrivacyTokensOnInterface:tierType:proxyURL:tokenVendor:tokenIssuancePublicKey:tokenChallenge:tokenCount:accessToken:retryAttempt:completionHandler:]";
                    _os_log_fault_impl(&_mh_execute_header, v81, OS_LOG_TYPE_FAULT, "%s called with null requestData", buf, 0xCu);
                  }

                  (*(v95 + 2))(v95, 0, 0, 0, 0, 0, 1);
                  goto LABEL_87;
                }

                v48 = v47;
                [v23 addTokenRequestList:v47];
              }

              v39 = [v38 countByEnumeratingWithState:&v115 objects:v125 count:16];
              if (v39)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          v121 = 0uLL;
          v122 = 0uLL;
          v119 = 0uLL;
          v120 = 0uLL;
          v49 = v101;
          v50 = [v49 countByEnumeratingWithState:&v119 objects:v126 count:16];
          if (v50)
          {
            v51 = *v120;
            do
            {
              for (j = 0; j != v50; j = j + 1)
              {
                if (*v120 != v51)
                {
                  objc_enumerationMutation(v49);
                }

                v53 = [*(*(&v119 + 1) + 8 * j) blindedMessage];
                [v23 addUnactivatedTokenList:v53];
              }

              v50 = [v49 countByEnumeratingWithState:&v119 objects:v126 count:16];
            }

            while (v50);
          }
        }

        v54 = [v98 keyId];
        [v23 setTokenKeyID:v54];

        [v23 setProxyURL:v96];
        [v23 setVendor:v92];
        v86 = objc_alloc_init(NSPPrivacyProxyTokenActivationQuery);
        [v86 setTokenInfo:v23];
        v82 = mach_absolute_time();
        v55 = [(NSPPrivacyTokenManager *)self tokenFetchURL];
        v87 = sub_1000A17F4(self, v55, v90, 0, 0, a11 != 0);

        if (v93)
        {
          [v87 setValue:v93 forHTTPHeaderField:@"X-Mask-User-Tier"];
        }

        if (v91)
        {
          [v87 setValue:v91 forHTTPHeaderField:@"X-Mask-Subscription-Token"];
        }

        v84 = [NSString stringWithFormat:@"%lu", a11];
        if (v84)
        {
          [v87 setValue:v84 forHTTPHeaderField:@"Retry-Attempt"];
        }

        v99 = objc_alloc_init(NSURLSessionDelegate);
        v56 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
        v57 = [v56 _socketStreamProperties];
        if (v57)
        {
          v58 = [v56 _socketStreamProperties];
          v85 = [NSMutableDictionary dictionaryWithDictionary:v58];
        }

        else
        {
          v85 = +[NSMutableDictionary dictionary];
        }

        [v85 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyPrefersNoProxy];
        [v56 set_socketStreamProperties:v85];
        [v56 setTimeoutIntervalForRequest:60.0];
        [v56 set_loggingPrivacyLevel:1];
        v59 = [(NSPPrivacyTokenManager *)self tokenFetchURL];
        v83 = [NSURL URLWithString:v59];

        v60 = [v83 host];
        [v99 setValidationHostname:v60];

        if (self)
        {
          ignoreInvalidCerts = self->_ignoreInvalidCerts;
        }

        else
        {
          ignoreInvalidCerts = 0;
        }

        [v99 setIgnoreInvalidCerts:ignoreInvalidCerts];
        v62 = +[NSOperationQueue mainQueue];
        v63 = [NSURLSession sessionWithConfiguration:v56 delegate:v99 delegateQueue:v62];

        [v63 setSessionDescription:@"PrivacyProxyTokenFetch"];
        if (os_variant_has_internal_diagnostics())
        {
          v64 = sub_100053E68();
          v65 = v64;
          if (v64)
          {
            v66 = *(v64 + 48);
          }

          else
          {
            v66 = 0;
          }

          v67 = v66;

          if (v67)
          {
            v68 = [v67 configServerHeaders];
            v69 = v68 == 0;

            if (!v69)
            {
              v70 = [v87 allHTTPHeaderFields];
              v71 = [v67 configServerHeaders];
              v72 = [NPUtilities mergeHTTPHeaders:v70 headerOverrides:v71];
              [v87 setAllHTTPHeaderFields:v72];
            }
          }
        }

        objc_initWeak(buf, self);
        if (self)
        {
          authenticationClass = self->_authenticationClass;
        }

        else
        {
          authenticationClass = 0;
        }

        v103[0] = _NSConcreteStackBlock;
        v103[1] = 3221225472;
        v103[2] = sub_1000A2D38;
        v103[3] = &unk_10010ACF0;
        objc_copyWeak(v114, buf);
        v74 = v63;
        v104 = v74;
        v75 = v87;
        v105 = v75;
        v113 = v95;
        v106 = v18;
        v107 = v101;
        v108 = v20;
        v109 = v100;
        v110 = v92;
        v111 = v96;
        v112 = v93;
        v114[1] = a9;
        v114[2] = v82;
        [(objc_class *)authenticationClass sendRequestForTokens:v75 tokenFetchURLSession:v74 tokenActivationQuery:v86 completionHandler:v103];

        objc_destroyWeak(v114);
        objc_destroyWeak(buf);
      }

      else
      {
        v80 = nplog_obj();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v128 = "[NSPPrivacyTokenManager fetchPrivacyTokensOnInterface:tierType:proxyURL:tokenVendor:tokenIssuancePublicKey:tokenChallenge:tokenCount:accessToken:retryAttempt:completionHandler:]";
          _os_log_fault_impl(&_mh_execute_header, v80, OS_LOG_TYPE_FAULT, "%s called with null (tokenWaitingActivationList.count > 0)", buf, 0xCu);
        }

        (*(v95 + 2))(v95, 0, 0, 0, 0, 0, 1);
      }

LABEL_87:

LABEL_88:
      goto LABEL_89;
    }

    if (v101)
    {
      if (!v29 || [v29 count] == a9)
      {
        v30 = 0;
        while (1)
        {
          if (v29)
          {
            v17 = [v29 objectAtIndexedSubscript:v30];
            v31 = v17;
            v29 = v102;
          }

          else
          {
            v31 = 0;
          }

          v124 = 0;
          v32 = [v98 tokenWaitingActivationWithContent:v31 error:&v124];
          v33 = v124;
          if (v29)
          {
          }

          if (v33)
          {
            break;
          }

          if (!v32)
          {
            v32 = nplog_obj();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315138;
              v128 = "[NSPPrivacyTokenManager generateTokensUsingTokenBlinder:contentArray:waitingTokenList:tokenCount:]";
              _os_log_fault_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, "%s called with null waitingActivation", buf, 0xCu);
            }

            goto LABEL_41;
          }

          [v101 addObject:v32];

          ++v30;
          v29 = v102;
          if (a9 == v30)
          {
            goto LABEL_43;
          }
        }

        v34 = nplog_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v128 = v33;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "tokenWaitingActivationWithContent failed with error %@", buf, 0xCu);
        }

LABEL_41:
        goto LABEL_42;
      }

      v33 = nplog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v128 = "[NSPPrivacyTokenManager generateTokensUsingTokenBlinder:contentArray:waitingTokenList:tokenCount:]";
        v79 = "%s called with null (contentArray.count == tokenCount)";
        goto LABEL_118;
      }
    }

    else
    {
      v33 = nplog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v128 = "[NSPPrivacyTokenManager generateTokensUsingTokenBlinder:contentArray:waitingTokenList:tokenCount:]";
        v79 = "%s called with null waitingTokenList";
LABEL_118:
        _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, v79, buf, 0xCu);
      }
    }

LABEL_42:

    goto LABEL_43;
  }

  v20 = [[NSPPrivateAccessTokenChallenge alloc] initWithData:v94];
  v21 = self;
  if (v20)
  {
    goto LABEL_10;
  }

  v22 = nplog_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v128 = v96;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to parse token challenge for %@", buf, 0xCu);
  }

  (*(v95 + 2))(v95, 0, 0, 0, 0, 0, 1);
LABEL_90:
}

- (void)fetchPrivateAccessTokenForChallenge:(id)a3 overrideAttester:(id)a4 supportsTokenUsageFeedback:(BOOL)a5 customAttester:(id)a6 customAttesterHeaders:(id)a7 tokenKey:(id)a8 originNameKey:(id)a9 selectedOrigin:(id)a10 auxiliaryAuthInfoCacheKey:(id)a11 rateLimit:(unsigned int)a12 auditToken:(id)a13 bundleID:(id)a14 allowTools:(BOOL)a15 systemTokenClient:(BOOL)a16 accessToken:(id)a17 completionHandler:(id)a18
{
  v92 = a5;
  v23 = a3;
  v24 = a4;
  v103 = a6;
  v97 = a7;
  v101 = a8;
  v98 = a9;
  v102 = a10;
  v25 = self;
  v99 = a11;
  v96 = a13;
  v100 = a14;
  v104 = a17;
  v26 = a18;
  v27 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v27);

  if (!v23)
  {
    v88 = nplog_obj();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyTokenManager fetchPrivateAccessTokenForChallenge:overrideAttester:supportsTokenUsageFeedback:customAttester:customAttesterHeaders:tokenKey:originNameKey:selectedOrigin:auxiliaryAuthInfoCacheKey:rateLimit:auditToken:bundleID:allowTools:systemTokenClient:accessToken:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v88, OS_LOG_TYPE_FAULT, "%s called with null challenge", &buf, 0xCu);
    }

    (*(v26 + 2))(v26, 0, 1004, 0, 0);
    goto LABEL_112;
  }

  if (!v26)
  {
    v89 = nplog_obj();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyTokenManager fetchPrivateAccessTokenForChallenge:overrideAttester:supportsTokenUsageFeedback:customAttester:customAttesterHeaders:tokenKey:originNameKey:selectedOrigin:auxiliaryAuthInfoCacheKey:rateLimit:auditToken:bundleID:allowTools:systemTokenClient:accessToken:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v89, OS_LOG_TYPE_FAULT, "%s called with null completionHandler", &buf, 0xCu);
    }

    MEMORY[0x10](0, 0, 1004, 0, 0);
    goto LABEL_112;
  }

  v28 = sub_1000A149C(&self->super.isa);
  if (v24 | v28)
  {
  }

  else if (!v103)
  {
    v29 = nplog_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Cannot fetch private access token, no attester URL", &buf, 2u);
    }

    (*(v26 + 2))(v26, 0, 1005, 0, 0);
    goto LABEL_112;
  }

  v30 = [v23 issuerName];
  if (![v30 hasSuffix:@"corp.apple.com"])
  {

    if (v104 || a16)
    {
      goto LABEL_24;
    }

LABEL_21:
    v34 = nplog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "No eligible account found, cannot request token", &buf, 2u);
    }

    (*(v26 + 2))(v26, 0, 1003, 0, 0);
    goto LABEL_112;
  }

  v31 = [v23 issuerName];
  v32 = [v31 containsString:@"idms"];

  if (!v104 && (v32 & 1) == 0 && !a16)
  {
    goto LABEL_21;
  }

  if (v32)
  {
    v33 = v102;
    if (!v33)
    {
      v33 = [v23 originName];
    }

    if (([v33 hasSuffix:@".apple.com"] & 1) == 0 && (objc_msgSend(v33, "hasSuffix:", @".apple") & 1) == 0)
    {
      v63 = nplog_obj();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "Bad origin name for IDMS issuer", &buf, 2u);
      }

      (*(v26 + 2))(v26, 0, 1001, 0, 0);
      goto LABEL_112;
    }
  }

LABEL_24:
  if (!v24)
  {
    if (self)
    {
      accessTokenTypes = self->_accessTokenTypes;
      if (accessTokenTypes)
      {
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v41 = accessTokenTypes;
        v42 = [(NSArray *)v41 countByEnumeratingWithState:&v142 objects:v154 count:16];
        if (v42)
        {
          v43 = *v143;
          while (2)
          {
            for (i = 0; i != v42; i = i + 1)
            {
              if (*v143 != v43)
              {
                objc_enumerationMutation(v41);
              }

              v45 = [*(*(&v142 + 1) + 8 * i) unsignedShortValue];
              if (v45 == [v23 tokenType])
              {

                goto LABEL_57;
              }
            }

            v42 = [(NSArray *)v41 countByEnumeratingWithState:&v142 objects:v154 count:16];
            if (v42)
            {
              continue;
            }

            break;
          }
        }

        v46 = nplog_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [v23 tokenType];
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v47;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Cannot fetch token type %u, not in allowed type list", &buf, 8u);
        }

        goto LABEL_48;
      }

LABEL_57:
      accessTokenBlockedIssuers = v25->_accessTokenBlockedIssuers;
    }

    else
    {
      accessTokenBlockedIssuers = 0;
    }

    if (![(NSArray *)accessTokenBlockedIssuers count])
    {
      goto LABEL_25;
    }

    v57 = v25 ? v25->_accessTokenBlockedIssuers : 0;
    v58 = v57;
    v59 = [v23 issuerName];
    v60 = [v59 lowercaseString];
    v61 = [(NSArray *)v58 containsObject:v60];

    if (!v61)
    {
      goto LABEL_25;
    }

    v46 = nplog_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v62 = [v23 issuerName];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v62;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Cannot fetch token from issuer %@, not allowed", &buf, 0xCu);
    }

LABEL_48:

    (*(v26 + 2))(v26, 0, 1008, 0, 0);
    goto LABEL_112;
  }

LABEL_25:
  v35 = a15;
  if (a16)
  {
LABEL_26:
    v94 = v35;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v150 = 0x3032000000;
    v151 = sub_100001FA4;
    v152 = sub_1000A962C;
    v153 = os_transaction_create();
    v36 = [v23 tokenType];
    if (!a12 && v36 == 58796)
    {
      v37 = nplog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *v146 = 0;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Invalid rate limit for ARC credential, cannot be 0", v146, 2u);
      }

      (*(v26 + 2))(v26, 0, 1004, @"Invalid ARC rate limit", 0);
      goto LABEL_111;
    }

    if (sub_1000B37E0(v23, a16))
    {
      if ([v23 tokenType] != 58796)
      {
        v50 = 0;
        if (v24 && v92)
        {
          v64 = [v23 issuerName];
          v50 = sub_1000A819C(v25, v64, v24);
        }

        if (![v50 count])
        {
          v65 = [v101 key];
          v148 = v65;
          v66 = [NSArray arrayWithObjects:&v148 count:1];

          v50 = v66;
        }

        *v146 = 0;
        v67 = sub_10003CAD4(NSPPrivateAccessTokenCache, v23, v50, v146);
        v91 = v67 == 0;
        if (v67)
        {
          (*(v26 + 2))(v26, v67, 0, 0, 0);
        }

        if (*v146 < 2u || v67 == 0)
        {
          v54 = 5;
        }

        else
        {
          v54 = 0;
        }

LABEL_82:
        v90 = v54 != 0;
        if (v54)
        {
          v69 = 1;
        }

        else
        {
          v69 = v91;
        }

        if (v69 != 1)
        {
          v70 = dispatch_group_create();
          v95 = 0;
          goto LABEL_109;
        }

LABEL_88:
        v71 = [v23 issuerName];
        v70 = sub_1000A418C(v25, v71);

        if (v70)
        {
          if (v91)
          {
            v72 = nplog_obj();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
            {
              v73 = [v23 issuerName];
              *v146 = 138412290;
              v147 = v73;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Waiting for ongoing call to fetch token for %@", v146, 0xCu);
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000A9634;
            block[3] = &unk_10010AE08;
            v125 = v23;
            v126 = v25;
            v127 = v24;
            v139 = v92;
            v128 = v103;
            v129 = v97;
            v130 = v101;
            v131 = v98;
            v132 = v102;
            v133 = v99;
            v138 = a12;
            v134 = v96;
            v135 = v100;
            v140 = v94;
            v141 = a16;
            v136 = v104;
            v137 = v26;
            dispatch_async(v70, block);

            v74 = v125;
          }

          else
          {
            v74 = nplog_obj();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
            {
              v78 = [v23 issuerName];
              *v146 = 138412290;
              v147 = v78;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "Not waiting for ongoing call to fetch token for %@, returned from cache", v146, 0xCu);
            }
          }

          goto LABEL_110;
        }

        v70 = dispatch_group_create();
        v75 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
        v76 = [v75 _socketStreamProperties];
        if (v76)
        {
          v77 = [v75 _socketStreamProperties];
          v93 = [NSMutableDictionary dictionaryWithDictionary:v77];
        }

        else
        {
          v93 = +[NSMutableDictionary dictionary];
        }

        [v93 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyPrefersNoProxy];
        [v75 set_socketStreamProperties:v93];
        [v75 setTimeoutIntervalForRequest:60.0];
        [v75 set_sourceApplicationAuditTokenData:v96];
        [v75 set_sourceApplicationBundleIdentifier:v100];
        [v75 setUsesClassicLoadingMode:0];
        v79 = [NSURLSession sessionWithConfiguration:v75];
        [v79 setSessionDescription:@"PrivateAccessTokenFetch"];
        v95 = v79;

        if (v91)
        {
          dispatch_group_enter(v70);
          if (v24)
          {
            v80 = [v23 issuerName];
            sub_1000A3F04(v25, v80);

            v81 = v23;
            v82 = v54 + 1;
          }

          else
          {
            v81 = v23;
            v82 = 1;
          }

          v117[0] = _NSConcreteStackBlock;
          v117[1] = 3221225472;
          v117[2] = sub_1000A9738;
          v117[3] = &unk_10010AE30;
          v83 = v81;
          v118 = v81;
          v119 = v101;
          v120 = v25;
          v123 = a12;
          v122 = v26;
          v121 = v70;
          v23 = v83;
          sub_1000A4BD4(v25, v118, v24, v103, v97, v119, v82, v98, v102, v99, 0, v100, v104, 0, v95, 0, v117);
        }

        if (v24)
        {
          if ((v90 & (v91 ^ 1)) == 1)
          {
            dispatch_group_enter(v70);
            v84 = [v23 issuerName];
            sub_1000A3F04(v25, v84);

            v111[0] = _NSConcreteStackBlock;
            v111[1] = 3221225472;
            v111[2] = sub_1000A9AF4;
            v111[3] = &unk_10010AE58;
            v112 = v23;
            v70 = v70;
            v113 = v70;
            sub_1000A4BD4(v25, v112, v24, v103, v97, v101, v54, v98, v102, v99, 0, v100, v104, 0, v95, 0, v111);
          }
        }

        else if (v54)
        {
          do
          {
            dispatch_group_enter(v70);
            v114[0] = _NSConcreteStackBlock;
            v114[1] = 3221225472;
            v114[2] = sub_1000A99D4;
            v114[3] = &unk_10010AE58;
            v85 = v23;
            v115 = v85;
            v86 = v70;
            v116 = v86;
            sub_1000A4BD4(v25, v85, 0, v103, v97, v101, 1, v98, v102, v99, 0, v100, v104, 0, v95, 0, v114);

            --v54;
          }

          while (v54);
          v70 = v86;
        }

LABEL_109:
        v87 = NPGetInternalQueue();
        v105[0] = _NSConcreteStackBlock;
        v105[1] = 3221225472;
        v105[2] = sub_1000A9C14;
        v105[3] = &unk_10010AE80;
        v106 = v24;
        v107 = v25;
        v108 = v23;
        v109 = v95;
        p_buf = &buf;
        v74 = v95;
        dispatch_group_notify(v70, v87, v105);

LABEL_110:
LABEL_111:
        _Block_object_dispose(&buf, 8);

        goto LABEL_112;
      }

      v48 = [v101 key];
      v49 = sub_1000B50B8(NSPPrivateAccessTokenRequest, v48);
      v50 = sub_10003ED70(NSPPrivateAccessTokenCache, v23, v49);

      if (v50)
      {
        v51 = v50[2];
        v52 = v50[1];
        v53 = sub_1000A7CE0(v25, v51, v23, a12, v101, v52, v26);

        v54 = 0;
        v91 = v53 ^ 1;
        goto LABEL_82;
      }
    }

    v54 = 0;
    v90 = 0;
    v91 = 1;
    goto LABEL_88;
  }

  if (sub_1000A7990(v25, v96, v23, v102, a15))
  {
    v38 = sub_100040090(NSPPrivateAccessTokenCache, v23, v102);
    v35 = a15;
    if (v38)
    {
      goto LABEL_26;
    }

    v39 = nplog_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Not allowed to fetch private access token, rate limited", &buf, 2u);
    }

    (*(v26 + 2))(v26, 0, 1009, 0, 0);
  }

  else
  {
    v55 = nplog_obj();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Not allowed to fetch private access token for origin", &buf, 2u);
    }

    (*(v26 + 2))(v26, 0, 1001, 0, 0);
  }

LABEL_112:
}

- (void)fetchPrivateAccessTokenForChallenge:(id)a3 overrideAttester:(id)a4 supportsTokenUsageFeedback:(BOOL)a5 customAttester:(id)a6 customAttesterHeaders:(id)a7 tokenKey:(id)a8 originNameKey:(id)a9 selectedOrigin:(id)a10 auxiliaryAuthChallenge:(id)a11 auxiliaryAuthKey:(id)a12 auxiliaryAuthLabel:(id)a13 auxiliaryAuthInfoCacheKey:(id)a14 rateLimit:(unsigned int)a15 auditToken:(id)a16 bundleID:(id)a17 accessToken:(id)a18 completionHandler:(id)a19
{
  v24 = a3;
  v25 = a4;
  v72 = a6;
  v62 = a7;
  v63 = a8;
  v64 = a9;
  v26 = self;
  v65 = a10;
  v27 = a11;
  v70 = a12;
  v66 = a13;
  v67 = a14;
  v69 = a16;
  v71 = a17;
  v68 = a18;
  v28 = a19;
  v29 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v29);

  if (!v24)
  {
    v52 = nplog_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v107) = 136315138;
      *(&v107 + 4) = "[NSPPrivacyTokenManager fetchPrivateAccessTokenForChallenge:overrideAttester:supportsTokenUsageFeedback:customAttester:customAttesterHeaders:tokenKey:originNameKey:selectedOrigin:auxiliaryAuthChallenge:auxiliaryAuthKey:auxiliaryAuthLabel:auxiliaryAuthInfoCacheKey:rateLimit:auditToken:bundleID:accessToken:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "%s called with null challenge", &v107, 0xCu);
    }

    goto LABEL_41;
  }

  if (!v27)
  {
    v52 = nplog_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v107) = 136315138;
      *(&v107 + 4) = "[NSPPrivacyTokenManager fetchPrivateAccessTokenForChallenge:overrideAttester:supportsTokenUsageFeedback:customAttester:customAttesterHeaders:tokenKey:originNameKey:selectedOrigin:auxiliaryAuthChallenge:auxiliaryAuthKey:auxiliaryAuthLabel:auxiliaryAuthInfoCacheKey:rateLimit:auditToken:bundleID:accessToken:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "%s called with null auxiliaryAuthChallenge", &v107, 0xCu);
    }

LABEL_41:

    (*(v28 + 2))(v28, 0, 0, 1004, 0, 0);
    goto LABEL_38;
  }

  if (v28)
  {
    v30 = sub_1000A149C(&self->super.isa);
    if (v25 | v30)
    {
    }

    else if (!v72)
    {
      v31 = nplog_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v107) = 0;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Cannot fetch private access token, no attester URL", &v107, 2u);
      }

      (*(v28 + 2))(v28, 0, 0, 1005, 0, 0);
      goto LABEL_38;
    }

    *&v107 = 0;
    *(&v107 + 1) = &v107;
    v108 = 0x3032000000;
    v109 = sub_100001FA4;
    v110 = sub_1000A962C;
    v111 = os_transaction_create();
    if ([v24 tokenType] == 58796)
    {
      v32 = nplog_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "ARC credentials not currently supported with auxiliary auth", buf, 2u);
      }

      v33 = @"Invalid ARC rate limit";
    }

    else
    {
      if ([v27 tokenType] == 49278)
      {
        v34 = [v24 issuerName];
        queue = sub_1000A418C(self, v34);

        if (queue)
        {
          v35 = nplog_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = [v24 issuerName];
            *buf = 138412290;
            v106 = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Waiting for ongoing call to fetch token for %@", buf, 0xCu);
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000AA88C;
          block[3] = &unk_10010AEA8;
          v87 = v24;
          v88 = self;
          v89 = v25;
          v104 = a5;
          v90 = v72;
          v91 = v62;
          v92 = v63;
          v93 = v64;
          v94 = v65;
          v95 = v27;
          v96 = v70;
          v97 = v66;
          v98 = v67;
          v103 = a15;
          v99 = v69;
          v100 = v71;
          v101 = v68;
          v102 = v28;
          dispatch_async(queue, block);

          v37 = v87;
        }

        else
        {
          v37 = dispatch_group_create();
          v38 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
          v39 = [v38 _socketStreamProperties];
          if (v39)
          {
            v40 = [v38 _socketStreamProperties];
            v60 = [NSMutableDictionary dictionaryWithDictionary:v40];
          }

          else
          {
            v60 = +[NSMutableDictionary dictionary];
          }

          [v60 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyPrefersNoProxy];
          [v38 set_socketStreamProperties:v60];
          [v38 setTimeoutIntervalForRequest:60.0];
          [v38 set_sourceApplicationAuditTokenData:v69];
          [v38 set_sourceApplicationBundleIdentifier:v71];
          [v38 setUsesClassicLoadingMode:0];
          v41 = [NSURLSession sessionWithConfiguration:v38];
          [v41 setSessionDescription:@"PrivateAccessTokenFetch"];
          v57 = objc_alloc_init(NSMutableArray);
          v55 = objc_alloc_init(NSMutableArray);
          v58 = sub_1000B9830(NSPPrivateAccessTokenFetcher, v27, v70, 1u, 0, 0, v57, v55, 0, 0);
          if ([v58 count] == 1)
          {
            v54 = v41;
            v56 = objc_alloc_init(NSPPrivacyProxyAuxiliaryAuthInfo);
            [v56 setAuthType:2];
            [v56 setLabel:v66];
            v42 = [v58 firstObject];
            v44 = v42;
            if (v42)
            {
              Property = objc_getProperty(v42, v43, 24, 1);
            }

            else
            {
              Property = 0;
            }

            v46 = Property;
            [v56 addContentList:v46];

            dispatch_group_enter(v37);
            if (v25)
            {
              v47 = [v24 issuerName];
              sub_1000A3F04(v26, v47);
            }

            v79[0] = _NSConcreteStackBlock;
            v79[1] = 3221225472;
            v79[2] = sub_1000AA988;
            v79[3] = &unk_10010AED0;
            v85 = v28;
            v80 = v57;
            v81 = v27;
            v82 = v70;
            v83 = v55;
            v48 = v37;
            v84 = v48;
            sub_1000A4BD4(v26, v24, v25, v72, v62, v63, 1, v64, v65, v67, v56, v71, v68, 0, v54, 0, v79);
            v49 = NPGetInternalQueue();
            v73[0] = _NSConcreteStackBlock;
            v73[1] = 3221225472;
            v73[2] = sub_1000AABB4;
            v73[3] = &unk_10010AE80;
            v74 = v25;
            v75 = v26;
            v76 = v24;
            v77 = v54;
            v78 = &v107;
            v50 = v48;
            v41 = v54;
            dispatch_group_notify(v50, v49, v73);
          }

          else
          {
            v51 = nplog_obj();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to create auxiliary auth request", buf, 2u);
            }

            (*(v28 + 2))(v28, 0, 0, 1004, @"Failed to create auxiliary auth request", 0);
          }
        }

        goto LABEL_37;
      }

      v32 = nplog_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Auxiliary auth challenge must be ATHM", buf, 2u);
      }

      v33 = @"Invalid auxiliary auth type";
    }

    (*(v28 + 2))(v28, 0, 0, 1004, v33, 0);
LABEL_37:
    _Block_object_dispose(&v107, 8);

    goto LABEL_38;
  }

  v53 = nplog_obj();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v107) = 136315138;
    *(&v107 + 4) = "[NSPPrivacyTokenManager fetchPrivateAccessTokenForChallenge:overrideAttester:supportsTokenUsageFeedback:customAttester:customAttesterHeaders:tokenKey:originNameKey:selectedOrigin:auxiliaryAuthChallenge:auxiliaryAuthKey:auxiliaryAuthLabel:auxiliaryAuthInfoCacheKey:rateLimit:auditToken:bundleID:accessToken:completionHandler:]";
    _os_log_fault_impl(&_mh_execute_header, v53, OS_LOG_TYPE_FAULT, "%s called with null completionHandler", &v107, 0xCu);
  }

  MEMORY[0x10](0, 0, 0, 1004, 0);
LABEL_38:
}

- (void)fetchPairedPrivateAccessTokensForChallenge:(id)a3 overrideAttester:(id)a4 configurationFetchDate:(id)a5 configurationETag:(id)a6 tokenKey:(id)a7 originNameKey:(id)a8 selectedOrigin:(id)a9 pairedChallenge:(id)a10 overridePairedAttester:(id)a11 pairedTokenKey:(id)a12 auditToken:(id)a13 bundleID:(id)a14 allowTools:(BOOL)a15 systemTokenClient:(BOOL)a16 accessToken:(id)a17 completionHandler:(id)a18
{
  v23 = a3;
  v73 = a4;
  v64 = a5;
  v65 = a6;
  v69 = a7;
  v63 = a8;
  v71 = a9;
  v24 = a10;
  v72 = a11;
  v68 = a12;
  v70 = a13;
  v67 = a14;
  v66 = a17;
  v25 = a18;
  v26 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v26);

  if (!v23)
  {
    v39 = nplog_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyTokenManager fetchPairedPrivateAccessTokensForChallenge:overrideAttester:configurationFetchDate:configurationETag:tokenKey:originNameKey:selectedOrigin:pairedChallenge:overridePairedAttester:pairedTokenKey:auditToken:bundleID:allowTools:systemTokenClient:accessToken:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "%s called with null longLivedTokenChallenge", &buf, 0xCu);
    }

    goto LABEL_58;
  }

  if (!v24)
  {
    v39 = nplog_obj();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyTokenManager fetchPairedPrivateAccessTokensForChallenge:overrideAttester:configurationFetchDate:configurationETag:tokenKey:originNameKey:selectedOrigin:pairedChallenge:overridePairedAttester:pairedTokenKey:auditToken:bundleID:allowTools:systemTokenClient:accessToken:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "%s called with null oneTimeTokenChallenge", &buf, 0xCu);
    }

    goto LABEL_58;
  }

  if (v25)
  {
    if (v73 && v72)
    {
      if (a16)
      {
LABEL_7:
        if (sub_1000B37E0(v23, a16))
        {
          *&buf = 0;
          *(&buf + 1) = &buf;
          v146 = 0x3032000000;
          v147 = sub_100001FA4;
          v148 = sub_1000A962C;
          v27 = [v69 key];
          v149 = sub_10003E848(NSPPrivateAccessTokenCache, v23, v27);

          v28 = *(*(&buf + 1) + 40);
          if (v28)
          {
            LODWORD(v140) = 0;
            v29 = [v68 key];
            v30 = *(*(&buf + 1) + 40);
            v121 = 0;
            v31 = sub_10003F3C4(NSPPrivateAccessTokenCache, v24, v29, v23, v30, &v140, &v121);
            v32 = v121;

            queue = v31 == 0;
            if (v31)
            {
              (*(v25 + 2))(v25, *(*(&buf + 1) + 40), v31, v32, 0, 0, 0);
              v33 = v140 >= 0xD;
            }

            else
            {
              v33 = 0;
            }

            v34 = !v33;

            if (!v34)
            {
              v35 = 0;
              queue = 0;
              v36 = 0;
              goto LABEL_48;
            }
          }

          else
          {
            v41 = [v23 issuerName];
            queuea = sub_1000A418C(self, v41);

            if (queuea)
            {
              v42 = nplog_obj();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = [v23 issuerName];
                LODWORD(v140) = 138412290;
                *(&v140 + 4) = v43;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Waiting for ongoing call to fetch long-lived token for %@", &v140, 0xCu);
              }

              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1000ABC0C;
              block[3] = &unk_10010AEF8;
              v123 = v23;
              v124 = self;
              v125 = v73;
              v126 = v64;
              v127 = v65;
              v128 = v69;
              v129 = v63;
              v130 = v71;
              v131 = v24;
              v132 = v72;
              v133 = v68;
              v134 = v70;
              v135 = v67;
              v138 = a15;
              v139 = a16;
              v136 = v66;
              v137 = v25;
              dispatch_async(queuea, block);

              goto LABEL_51;
            }

            sub_10004001C(NSPPrivateAccessTokenCache, v24);
            queue = 1;
          }

          v44 = [v24 issuerName];
          v45 = sub_1000A418C(self, v44);

          if (v45)
          {
            if (queue)
            {
              v46 = nplog_obj();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                v47 = [v24 issuerName];
                LODWORD(v140) = 138412290;
                *(&v140 + 4) = v47;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Waiting for ongoing call to fetch one-time token for %@", &v140, 0xCu);
              }

              v103[0] = _NSConcreteStackBlock;
              v103[1] = 3221225472;
              v103[2] = sub_1000ABD04;
              v103[3] = &unk_10010AEF8;
              v104 = v24;
              v105 = self;
              v106 = v23;
              v107 = v73;
              v108 = v64;
              v109 = v65;
              v110 = v69;
              v111 = v63;
              v112 = v71;
              v113 = v72;
              v114 = v68;
              v115 = v70;
              v116 = v67;
              v119 = a15;
              v120 = a16;
              v117 = v66;
              v118 = v25;
              dispatch_async(v45, v103);

              v48 = v104;
            }

            else
            {
              v48 = nplog_obj();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                v53 = [v24 issuerName];
                LODWORD(v140) = 138412290;
                *(&v140 + 4) = v53;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Not waiting for ongoing call to fetch one-time token for %@, returned from cache", &v140, 0xCu);
              }
            }

            goto LABEL_51;
          }

          v49 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
          v50 = [v49 _socketStreamProperties];
          if (v50)
          {
            v51 = [v49 _socketStreamProperties];
            v52 = [NSMutableDictionary dictionaryWithDictionary:v51];
          }

          else
          {
            v52 = +[NSMutableDictionary dictionary];
          }

          [v52 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyPrefersNoProxy];
          [v49 set_socketStreamProperties:v52];
          [v49 setTimeoutIntervalForRequest:60.0];
          [v49 set_sourceApplicationAuditTokenData:v70];
          [v49 set_sourceApplicationBundleIdentifier:v67];
          [v49 setUsesClassicLoadingMode:0];
          v36 = [NSURLSession sessionWithConfiguration:v49];
          [v36 setSessionDescription:@"PrivateAccessTokenFetch"];

          v35 = 50;
LABEL_48:
          *&v140 = 0;
          *(&v140 + 1) = &v140;
          v141 = 0x3032000000;
          v142 = sub_100001FA4;
          v143 = sub_1000A962C;
          v144 = os_transaction_create();
          v54 = dispatch_group_create();
          v55 = [v23 issuerName];
          if (!v28)
          {
            dispatch_group_enter(v54);
            sub_1000A3F04(self, v55);
            v90[0] = _NSConcreteStackBlock;
            v90[1] = 3221225472;
            v90[2] = sub_1000ABE00;
            v90[3] = &unk_10010AF48;
            v101 = v25;
            v91 = v54;
            v92 = self;
            v93 = v23;
            v94 = v73;
            v95 = v69;
            v96 = v63;
            v97 = v71;
            v98 = v67;
            v99 = v66;
            v100 = v36;
            p_buf = &buf;
            sub_1000A3548(self, v95, v94, v64, v65, v90);
          }

          v56 = NPGetInternalQueue();
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_1000AC0B8;
          v74[3] = &unk_10010B010;
          v74[4] = self;
          v75 = v55;
          v76 = v24;
          v86 = &buf;
          v89 = queue;
          v88 = v35;
          v77 = v68;
          v78 = v72;
          v79 = v64;
          v80 = v65;
          v85 = v25;
          v81 = v67;
          v82 = v66;
          v83 = v36;
          v84 = v23;
          v87 = &v140;
          v57 = v36;
          v58 = v55;
          dispatch_group_notify(v54, v56, v74);

          _Block_object_dispose(&v140, 8);
LABEL_51:
          _Block_object_dispose(&buf, 8);

          goto LABEL_52;
        }

        v39 = nplog_obj();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Long-lived token must be cacheable", &buf, 2u);
        }

LABEL_58:

        (*(v25 + 2))(v25, 0, 0, 0, 1004, 0, 0);
        goto LABEL_52;
      }

      if (sub_1000A7990(self, v70, v23, v71, a15))
      {
        if (sub_100040090(NSPPrivateAccessTokenCache, v23, v71))
        {
          goto LABEL_7;
        }

        v38 = nplog_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Not allowed to fetch private access token, rate limited", &buf, 2u);
        }

        (*(v25 + 2))(v25, 0, 0, 0, 1009, 0, 0);
      }

      else
      {
        v40 = nplog_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Not allowed to fetch private access token for origin", &buf, 2u);
        }

        (*(v25 + 2))(v25, 0, 0, 0, 1001, 0, 0);
      }
    }

    else
    {
      v37 = nplog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Cannot fetch private access token, no attester URLs", &buf, 2u);
      }

      (*(v25 + 2))(v25, 0, 0, 0, 1005, 0, 0);
    }
  }

  else
  {
    v59 = nplog_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyTokenManager fetchPairedPrivateAccessTokensForChallenge:overrideAttester:configurationFetchDate:configurationETag:tokenKey:originNameKey:selectedOrigin:pairedChallenge:overridePairedAttester:pairedTokenKey:auditToken:bundleID:allowTools:systemTokenClient:accessToken:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v59, OS_LOG_TYPE_FAULT, "%s called with null completionHandler", &buf, 0xCu);
    }

    MEMORY[0x10](0, 0, 0, 0, 1004);
  }

LABEL_52:
}

- (void)copyTokenInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 setDeviceIdentityValidationCount:dword_1001298BC];
    [v5 setAnisetteValidationCount:dword_1001298B8];
    if (self)
    {
      [v5 setRequestedTokenCount:self->_totalRequestedTokenCount];
      [v5 setUnactivatedTokenCount:self->_totalUnactivatedTokenCount];
      totalActivatedTokenCount = self->_totalActivatedTokenCount;
    }

    else
    {
      [v5 setRequestedTokenCount:0];
      [v5 setUnactivatedTokenCount:0];
      totalActivatedTokenCount = 0;
    }

    [v5 setActivatedTokenCount:totalActivatedTokenCount];
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[NSPPrivacyTokenManager copyTokenInfo:]";
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s called with null proxyInfo", &v8, 0xCu);
    }
  }
}

- (void)getTokenServerIPWithInterface:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (self && self->_tokenEndpointResolver)
    {
      (*(v7 + 2))(v7, 0);
    }

    else
    {
      v9 = [(NSPPrivacyTokenManager *)self tokenFetchURL];
      v10 = [NSURL URLWithString:v9];

      if (v10)
      {
        v11 = [v10 host];
        host = nw_endpoint_create_host([v11 UTF8String], "443");
        v13 = nw_parameters_create();
        v14 = [v6 cInterface];
        nw_parameters_require_interface(v13, v14);

        v15 = nw_resolver_create_with_endpoint();
        v16 = v15;
        if (self)
        {
          objc_storeStrong(&self->_tokenEndpointResolver, v15);

          objc_initWeak(location, self);
          tokenEndpointResolver = self->_tokenEndpointResolver;
        }

        else
        {

          tokenEndpointResolver = 0;
          *location = 0;
        }

        v18 = tokenEndpointResolver;
        v19 = NPGetInternalQueue();
        objc_copyWeak(&v23, location);
        v22 = v8;
        nw_resolver_set_update_handler();

        objc_destroyWeak(&v23);
        objc_destroyWeak(location);
      }

      else
      {
        v21 = nplog_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          *location = 136315138;
          *&location[4] = "[NSPPrivacyTokenManager getTokenServerIPWithInterface:completionHandler:]";
          _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "%s called with null url", location, 0xCu);
        }

        v8[2](v8, 0);
      }
    }
  }

  else
  {
    v20 = nplog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *location = 136315138;
      *&location[4] = "[NSPPrivacyTokenManager getTokenServerIPWithInterface:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "%s called with null interface", location, 0xCu);
    }

    v8[2](v8, 0);
  }
}

- (void)checkCostQuotaForIssuerName:(id)a3 quotaService:(id)a4 auditToken:(id)a5 bundleID:(id)a6 accessToken:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v45 = a5;
  v46 = a6;
  v16 = a7;
  v17 = a8;
  v18 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v18);

  if (v14 && ([v15 serviceURL], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    v20 = nplog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v14;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Checking cost quota for %@", buf, 0xCu);
    }

    v21 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v22 = [v21 _socketStreamProperties];
    if (v22)
    {
      v23 = [v21 _socketStreamProperties];
      v44 = [NSMutableDictionary dictionaryWithDictionary:v23];
    }

    else
    {
      v44 = +[NSMutableDictionary dictionary];
    }

    [v44 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyPrefersNoProxy];
    [v21 set_socketStreamProperties:v44];
    [v21 setTimeoutIntervalForRequest:60.0];
    [v21 set_sourceApplicationAuditTokenData:v45];
    [v21 set_sourceApplicationBundleIdentifier:v46];
    [v21 setUsesClassicLoadingMode:0];
    v43 = [NSURLSession sessionWithConfiguration:v21];
    [v43 setSessionDescription:@"CostQuotaFetch"];
    v42 = [v15 serviceURL];
    v24 = [[NSURLComponents alloc] initWithString:v42];
    v41 = v24;
    if (v24)
    {
      v25 = [v24 string];
      v26 = sub_1000A17F4(self, v25, 0, 0, 0, 0);

      if (v26)
      {
        if (v16)
        {
          [v26 setValue:v16 forHTTPHeaderField:@"X-Mask-Subscription-Token"];
        }

        if (os_variant_has_internal_diagnostics())
        {
          v27 = sub_100053E68();
          v28 = v27;
          if (v27)
          {
            v29 = *(v27 + 48);
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;

          if (v30)
          {
            v31 = [v30 configServerHeaders];
            v32 = v31 == 0;

            if (!v32)
            {
              v40 = [v26 allHTTPHeaderFields];
              v33 = [v30 configServerHeaders];
              v34 = [NPUtilities mergeHTTPHeaders:v40 headerOverrides:v33];
              [v26 setAllHTTPHeaderFields:v34];
            }
          }
        }

        v35 = objc_alloc_init(NSPPrivacyProxyQuotaServiceRequest);
        v36 = objc_alloc_init(NSPPrivacyProxyGetQuotaRequest);
        [v35 setRequest:v36];

        v37 = [v35 request];
        [v37 setUseCaseIdentifier:v14];

        objc_initWeak(buf, self);
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1000AD588;
        v47[3] = &unk_10010B088;
        objc_copyWeak(&v51, buf);
        v48 = v26;
        v50 = v17;
        v49 = v14;
        [NSPBAA sendRequestForQuota:v48 urlSession:v43 quotaServiceRequest:v35 completionHandler:v47];

        objc_destroyWeak(&v51);
        objc_destroyWeak(buf);
      }

      else
      {
        v39 = nplog_obj();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v53 = "[NSPPrivacyTokenManager checkCostQuotaForIssuerName:quotaService:auditToken:bundleID:accessToken:completionHandler:]";
          _os_log_fault_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "%s called with null urlRequest", buf, 0xCu);
        }

        (*(v17 + 2))(v17, 0, 1004, 0, 0, 0.0, 0.0);
      }
    }

    else
    {
      v38 = nplog_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v53 = "[NSPPrivacyTokenManager checkCostQuotaForIssuerName:quotaService:auditToken:bundleID:accessToken:completionHandler:]";
        _os_log_fault_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "%s called with null serviceURLComponents", buf, 0xCu);
      }

      (*(v17 + 2))(v17, 0, 1004, 0, 0, 0.0, 0.0);
    }
  }

  else
  {
    (*(v17 + 2))(v17, 0, 1004, 0, 0, 0.0, 0.0);
  }
}

@end