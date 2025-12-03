@interface NSPPrivacyTokenManager
+ (id)sharedTokenManager;
- (void)checkCostQuotaForIssuerName:(id)name quotaService:(id)service auditToken:(id)token bundleID:(id)d accessToken:(id)accessToken completionHandler:(id)handler;
- (void)copyTokenInfo:(id)info;
- (void)fetchPairedPrivateAccessTokensForChallenge:(id)challenge overrideAttester:(id)attester configurationFetchDate:(id)date configurationETag:(id)tag tokenKey:(id)key originNameKey:(id)nameKey selectedOrigin:(id)origin pairedChallenge:(id)self0 overridePairedAttester:(id)self1 pairedTokenKey:(id)self2 auditToken:(id)self3 bundleID:(id)self4 allowTools:(BOOL)self5 systemTokenClient:(BOOL)self6 accessToken:(id)self7 completionHandler:(id)self8;
- (void)fetchPrivacyTokensOnInterface:(id)interface tierType:(id)type proxyURL:(id)l tokenVendor:(id)vendor tokenIssuancePublicKey:(id)key tokenChallenge:(id)challenge tokenCount:(unint64_t)count accessToken:(id)self0 retryAttempt:(unint64_t)self1 completionHandler:(id)self2;
- (void)fetchPrivateAccessTokenForChallenge:(id)challenge overrideAttester:(id)attester supportsTokenUsageFeedback:(BOOL)feedback customAttester:(id)customAttester customAttesterHeaders:(id)headers tokenKey:(id)key originNameKey:(id)nameKey selectedOrigin:(id)self0 auxiliaryAuthChallenge:(id)self1 auxiliaryAuthKey:(id)self2 auxiliaryAuthLabel:(id)self3 auxiliaryAuthInfoCacheKey:(id)self4 rateLimit:(unsigned int)self5 auditToken:(id)self6 bundleID:(id)self7 accessToken:(id)self8 completionHandler:(id)self9;
- (void)fetchPrivateAccessTokenForChallenge:(id)challenge overrideAttester:(id)attester supportsTokenUsageFeedback:(BOOL)feedback customAttester:(id)customAttester customAttesterHeaders:(id)headers tokenKey:(id)key originNameKey:(id)nameKey selectedOrigin:(id)self0 auxiliaryAuthInfoCacheKey:(id)self1 rateLimit:(unsigned int)self2 auditToken:(id)self3 bundleID:(id)self4 allowTools:(BOOL)self5 systemTokenClient:(BOOL)self6 accessToken:(id)self7 completionHandler:(id)self8;
- (void)getTokenServerIPWithInterface:(id)interface completionHandler:(id)handler;
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

- (void)fetchPrivacyTokensOnInterface:(id)interface tierType:(id)type proxyURL:(id)l tokenVendor:(id)vendor tokenIssuancePublicKey:(id)key tokenChallenge:(id)challenge tokenCount:(unint64_t)count accessToken:(id)self0 retryAttempt:(unint64_t)self1 completionHandler:(id)self2
{
  tokenCopy = token;
  interfaceCopy = interface;
  typeCopy = type;
  lCopy = l;
  vendorCopy = vendor;
  keyCopy = key;
  challengeCopy = challenge;
  tokenCopy2 = token;
  handlerCopy = handler;
  v19 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v19);

  if (!lCopy)
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

  if (!count)
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

  if (!keyCopy)
  {
    v78 = nplog_obj();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v128 = "[NSPPrivacyTokenManager fetchPrivacyTokensOnInterface:tierType:proxyURL:tokenVendor:tokenIssuancePublicKey:tokenChallenge:tokenCount:accessToken:retryAttempt:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v78, OS_LOG_TYPE_FAULT, "%s called with null tokenIssuancePublicKey", buf, 0xCu);
    }

LABEL_107:

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0, 0);
    goto LABEL_90;
  }

  if (!challengeCopy)
  {
    v20 = 0;
    selfCopy2 = self;
LABEL_10:
    if (selfCopy2)
    {
      selfCopy2->_totalRequestedTokenCount += count;
    }

    v23 = objc_alloc_init(NSPPrivacyProxyTokenInfo);
    v123 = 0;
    v89 = [[RSABSSATokenBlinder alloc] initWithPublicKey:keyCopy error:&v123];
    v88 = v123;
    if (v88)
    {
      v24 = nplog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v128 = v88;
        v129 = 2112;
        v130 = lCopy;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "RSABSSATokenBlinder initWithPublicKey failed with error %@ for %@", buf, 0x16u);
      }

LABEL_15:

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0, 1);
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
      countCopy = count;
      while (1)
      {
        v26 = sub_1000B4FC8();
        if (!v26)
        {
          break;
        }

        v27 = sub_1000B5184(NSPPrivateAccessTokenRequest, v20, v26, keyCopy);
        if (!v27)
        {
          v77 = nplog_obj();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v128 = "[NSPPrivacyTokenManager fetchPrivacyTokensOnInterface:tierType:proxyURL:tokenVendor:tokenIssuancePublicKey:tokenChallenge:tokenCount:accessToken:retryAttempt:completionHandler:]";
            _os_log_fault_impl(&_mh_execute_header, v77, OS_LOG_TYPE_FAULT, "%s called with null messageToBlind", buf, 0xCu);
          }

          (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0, 1);
          goto LABEL_88;
        }

        [v102 addObject:v27];
        [v100 addObject:v26];

        if (!--countCopy)
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

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0, 1);
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
          v130 = vendorCopy;
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
                blindedMessage = [v42 blindedMessage];
                v45 = sub_1000B54C4(&v43->super, v20, keyCopy, 0, 0, 0, blindedMessage);

                if (!v45 || (v47 = objc_getProperty(v45, v46, 24, 1)) == 0)
                {
                  v81 = nplog_obj();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136315138;
                    v128 = "[NSPPrivacyTokenManager fetchPrivacyTokensOnInterface:tierType:proxyURL:tokenVendor:tokenIssuancePublicKey:tokenChallenge:tokenCount:accessToken:retryAttempt:completionHandler:]";
                    _os_log_fault_impl(&_mh_execute_header, v81, OS_LOG_TYPE_FAULT, "%s called with null requestData", buf, 0xCu);
                  }

                  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0, 1);
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

                blindedMessage2 = [*(*(&v119 + 1) + 8 * j) blindedMessage];
                [v23 addUnactivatedTokenList:blindedMessage2];
              }

              v50 = [v49 countByEnumeratingWithState:&v119 objects:v126 count:16];
            }

            while (v50);
          }
        }

        keyId = [v98 keyId];
        [v23 setTokenKeyID:keyId];

        [v23 setProxyURL:lCopy];
        [v23 setVendor:vendorCopy];
        v86 = objc_alloc_init(NSPPrivacyProxyTokenActivationQuery);
        [v86 setTokenInfo:v23];
        v82 = mach_absolute_time();
        tokenFetchURL = [(NSPPrivacyTokenManager *)self tokenFetchURL];
        v87 = sub_1000A17F4(self, tokenFetchURL, interfaceCopy, 0, 0, attempt != 0);

        if (typeCopy)
        {
          [v87 setValue:typeCopy forHTTPHeaderField:@"X-Mask-User-Tier"];
        }

        if (tokenCopy2)
        {
          [v87 setValue:tokenCopy2 forHTTPHeaderField:@"X-Mask-Subscription-Token"];
        }

        attempt = [NSString stringWithFormat:@"%lu", attempt];
        if (attempt)
        {
          [v87 setValue:attempt forHTTPHeaderField:@"Retry-Attempt"];
        }

        v99 = objc_alloc_init(NSURLSessionDelegate);
        v56 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
        _socketStreamProperties = [v56 _socketStreamProperties];
        if (_socketStreamProperties)
        {
          _socketStreamProperties2 = [v56 _socketStreamProperties];
          v85 = [NSMutableDictionary dictionaryWithDictionary:_socketStreamProperties2];
        }

        else
        {
          v85 = +[NSMutableDictionary dictionary];
        }

        [v85 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyPrefersNoProxy];
        [v56 set_socketStreamProperties:v85];
        [v56 setTimeoutIntervalForRequest:60.0];
        [v56 set_loggingPrivacyLevel:1];
        tokenFetchURL2 = [(NSPPrivacyTokenManager *)self tokenFetchURL];
        v83 = [NSURL URLWithString:tokenFetchURL2];

        host = [v83 host];
        [v99 setValidationHostname:host];

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
            configServerHeaders = [v67 configServerHeaders];
            v69 = configServerHeaders == 0;

            if (!v69)
            {
              allHTTPHeaderFields = [v87 allHTTPHeaderFields];
              configServerHeaders2 = [v67 configServerHeaders];
              v72 = [NPUtilities mergeHTTPHeaders:allHTTPHeaderFields headerOverrides:configServerHeaders2];
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
        v113 = handlerCopy;
        v106 = keyCopy;
        v107 = v101;
        v108 = v20;
        v109 = v100;
        v110 = vendorCopy;
        v111 = lCopy;
        v112 = typeCopy;
        v114[1] = count;
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

        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0, 1);
      }

LABEL_87:

LABEL_88:
      goto LABEL_89;
    }

    if (v101)
    {
      if (!v29 || [v29 count] == count)
      {
        v30 = 0;
        while (1)
        {
          if (v29)
          {
            tokenCopy = [v29 objectAtIndexedSubscript:v30];
            v31 = tokenCopy;
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
          if (count == v30)
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

  v20 = [[NSPPrivateAccessTokenChallenge alloc] initWithData:challengeCopy];
  selfCopy2 = self;
  if (v20)
  {
    goto LABEL_10;
  }

  v22 = nplog_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v128 = lCopy;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to parse token challenge for %@", buf, 0xCu);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0, 1);
LABEL_90:
}

- (void)fetchPrivateAccessTokenForChallenge:(id)challenge overrideAttester:(id)attester supportsTokenUsageFeedback:(BOOL)feedback customAttester:(id)customAttester customAttesterHeaders:(id)headers tokenKey:(id)key originNameKey:(id)nameKey selectedOrigin:(id)self0 auxiliaryAuthInfoCacheKey:(id)self1 rateLimit:(unsigned int)self2 auditToken:(id)self3 bundleID:(id)self4 allowTools:(BOOL)self5 systemTokenClient:(BOOL)self6 accessToken:(id)self7 completionHandler:(id)self8
{
  feedbackCopy = feedback;
  challengeCopy = challenge;
  attesterCopy = attester;
  customAttesterCopy = customAttester;
  headersCopy = headers;
  keyCopy = key;
  nameKeyCopy = nameKey;
  originCopy = origin;
  selfCopy = self;
  cacheKeyCopy = cacheKey;
  tokenCopy = token;
  dCopy = d;
  accessTokenCopy = accessToken;
  handlerCopy = handler;
  v27 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v27);

  if (!challengeCopy)
  {
    v88 = nplog_obj();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[NSPPrivacyTokenManager fetchPrivateAccessTokenForChallenge:overrideAttester:supportsTokenUsageFeedback:customAttester:customAttesterHeaders:tokenKey:originNameKey:selectedOrigin:auxiliaryAuthInfoCacheKey:rateLimit:auditToken:bundleID:allowTools:systemTokenClient:accessToken:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v88, OS_LOG_TYPE_FAULT, "%s called with null challenge", &buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 1004, 0, 0);
    goto LABEL_112;
  }

  if (!handlerCopy)
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
  if (attesterCopy | v28)
  {
  }

  else if (!customAttesterCopy)
  {
    v29 = nplog_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Cannot fetch private access token, no attester URL", &buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 1005, 0, 0);
    goto LABEL_112;
  }

  issuerName = [challengeCopy issuerName];
  if (![issuerName hasSuffix:@"corp.apple.com"])
  {

    if (accessTokenCopy || client)
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

    (*(handlerCopy + 2))(handlerCopy, 0, 1003, 0, 0);
    goto LABEL_112;
  }

  issuerName2 = [challengeCopy issuerName];
  v32 = [issuerName2 containsString:@"idms"];

  if (!accessTokenCopy && (v32 & 1) == 0 && !client)
  {
    goto LABEL_21;
  }

  if (v32)
  {
    originName = originCopy;
    if (!originName)
    {
      originName = [challengeCopy originName];
    }

    if (([originName hasSuffix:@".apple.com"] & 1) == 0 && (objc_msgSend(originName, "hasSuffix:", @".apple") & 1) == 0)
    {
      v63 = nplog_obj();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "Bad origin name for IDMS issuer", &buf, 2u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 1001, 0, 0);
      goto LABEL_112;
    }
  }

LABEL_24:
  if (!attesterCopy)
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

              unsignedShortValue = [*(*(&v142 + 1) + 8 * i) unsignedShortValue];
              if (unsignedShortValue == [challengeCopy tokenType])
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
          tokenType = [challengeCopy tokenType];
          LODWORD(buf) = 67109120;
          DWORD1(buf) = tokenType;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Cannot fetch token type %u, not in allowed type list", &buf, 8u);
        }

        goto LABEL_48;
      }

LABEL_57:
      accessTokenBlockedIssuers = selfCopy->_accessTokenBlockedIssuers;
    }

    else
    {
      accessTokenBlockedIssuers = 0;
    }

    if (![(NSArray *)accessTokenBlockedIssuers count])
    {
      goto LABEL_25;
    }

    v57 = selfCopy ? selfCopy->_accessTokenBlockedIssuers : 0;
    v58 = v57;
    issuerName3 = [challengeCopy issuerName];
    lowercaseString = [issuerName3 lowercaseString];
    v61 = [(NSArray *)v58 containsObject:lowercaseString];

    if (!v61)
    {
      goto LABEL_25;
    }

    v46 = nplog_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      issuerName4 = [challengeCopy issuerName];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = issuerName4;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Cannot fetch token from issuer %@, not allowed", &buf, 0xCu);
    }

LABEL_48:

    (*(handlerCopy + 2))(handlerCopy, 0, 1008, 0, 0);
    goto LABEL_112;
  }

LABEL_25:
  toolsCopy2 = tools;
  if (client)
  {
LABEL_26:
    v94 = toolsCopy2;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v150 = 0x3032000000;
    v151 = sub_100001FA4;
    v152 = sub_1000A962C;
    v153 = os_transaction_create();
    tokenType2 = [challengeCopy tokenType];
    if (!limit && tokenType2 == 58796)
    {
      v37 = nplog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *v146 = 0;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Invalid rate limit for ARC credential, cannot be 0", v146, 2u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 1004, @"Invalid ARC rate limit", 0);
      goto LABEL_111;
    }

    if (sub_1000B37E0(challengeCopy, client))
    {
      if ([challengeCopy tokenType] != 58796)
      {
        v50 = 0;
        if (attesterCopy && feedbackCopy)
        {
          issuerName5 = [challengeCopy issuerName];
          v50 = sub_1000A819C(selfCopy, issuerName5, attesterCopy);
        }

        if (![v50 count])
        {
          v65 = [keyCopy key];
          v148 = v65;
          v66 = [NSArray arrayWithObjects:&v148 count:1];

          v50 = v66;
        }

        *v146 = 0;
        v67 = sub_10003CAD4(NSPPrivateAccessTokenCache, challengeCopy, v50, v146);
        v91 = v67 == 0;
        if (v67)
        {
          (*(handlerCopy + 2))(handlerCopy, v67, 0, 0, 0);
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
        issuerName6 = [challengeCopy issuerName];
        v70 = sub_1000A418C(selfCopy, issuerName6);

        if (v70)
        {
          if (v91)
          {
            v72 = nplog_obj();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
            {
              issuerName7 = [challengeCopy issuerName];
              *v146 = 138412290;
              v147 = issuerName7;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Waiting for ongoing call to fetch token for %@", v146, 0xCu);
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000A9634;
            block[3] = &unk_10010AE08;
            v125 = challengeCopy;
            v126 = selfCopy;
            v127 = attesterCopy;
            v139 = feedbackCopy;
            v128 = customAttesterCopy;
            v129 = headersCopy;
            v130 = keyCopy;
            v131 = nameKeyCopy;
            v132 = originCopy;
            v133 = cacheKeyCopy;
            limitCopy = limit;
            v134 = tokenCopy;
            v135 = dCopy;
            v140 = v94;
            clientCopy = client;
            v136 = accessTokenCopy;
            v137 = handlerCopy;
            dispatch_async(v70, block);

            v74 = v125;
          }

          else
          {
            v74 = nplog_obj();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
            {
              issuerName8 = [challengeCopy issuerName];
              *v146 = 138412290;
              v147 = issuerName8;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "Not waiting for ongoing call to fetch token for %@, returned from cache", v146, 0xCu);
            }
          }

          goto LABEL_110;
        }

        v70 = dispatch_group_create();
        v75 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
        _socketStreamProperties = [v75 _socketStreamProperties];
        if (_socketStreamProperties)
        {
          _socketStreamProperties2 = [v75 _socketStreamProperties];
          v93 = [NSMutableDictionary dictionaryWithDictionary:_socketStreamProperties2];
        }

        else
        {
          v93 = +[NSMutableDictionary dictionary];
        }

        [v93 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyPrefersNoProxy];
        [v75 set_socketStreamProperties:v93];
        [v75 setTimeoutIntervalForRequest:60.0];
        [v75 set_sourceApplicationAuditTokenData:tokenCopy];
        [v75 set_sourceApplicationBundleIdentifier:dCopy];
        [v75 setUsesClassicLoadingMode:0];
        v79 = [NSURLSession sessionWithConfiguration:v75];
        [v79 setSessionDescription:@"PrivateAccessTokenFetch"];
        v95 = v79;

        if (v91)
        {
          dispatch_group_enter(v70);
          if (attesterCopy)
          {
            issuerName9 = [challengeCopy issuerName];
            sub_1000A3F04(selfCopy, issuerName9);

            v81 = challengeCopy;
            v82 = v54 + 1;
          }

          else
          {
            v81 = challengeCopy;
            v82 = 1;
          }

          v117[0] = _NSConcreteStackBlock;
          v117[1] = 3221225472;
          v117[2] = sub_1000A9738;
          v117[3] = &unk_10010AE30;
          v83 = v81;
          v118 = v81;
          v119 = keyCopy;
          v120 = selfCopy;
          limitCopy2 = limit;
          v122 = handlerCopy;
          v121 = v70;
          challengeCopy = v83;
          sub_1000A4BD4(selfCopy, v118, attesterCopy, customAttesterCopy, headersCopy, v119, v82, nameKeyCopy, originCopy, cacheKeyCopy, 0, dCopy, accessTokenCopy, 0, v95, 0, v117);
        }

        if (attesterCopy)
        {
          if ((v90 & (v91 ^ 1)) == 1)
          {
            dispatch_group_enter(v70);
            issuerName10 = [challengeCopy issuerName];
            sub_1000A3F04(selfCopy, issuerName10);

            v111[0] = _NSConcreteStackBlock;
            v111[1] = 3221225472;
            v111[2] = sub_1000A9AF4;
            v111[3] = &unk_10010AE58;
            v112 = challengeCopy;
            v70 = v70;
            v113 = v70;
            sub_1000A4BD4(selfCopy, v112, attesterCopy, customAttesterCopy, headersCopy, keyCopy, v54, nameKeyCopy, originCopy, cacheKeyCopy, 0, dCopy, accessTokenCopy, 0, v95, 0, v111);
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
            v85 = challengeCopy;
            v115 = v85;
            v86 = v70;
            v116 = v86;
            sub_1000A4BD4(selfCopy, v85, 0, customAttesterCopy, headersCopy, keyCopy, 1, nameKeyCopy, originCopy, cacheKeyCopy, 0, dCopy, accessTokenCopy, 0, v95, 0, v114);

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
        v106 = attesterCopy;
        v107 = selfCopy;
        v108 = challengeCopy;
        v109 = v95;
        p_buf = &buf;
        v74 = v95;
        dispatch_group_notify(v70, v87, v105);

LABEL_110:
LABEL_111:
        _Block_object_dispose(&buf, 8);

        goto LABEL_112;
      }

      v48 = [keyCopy key];
      v49 = sub_1000B50B8(NSPPrivateAccessTokenRequest, v48);
      v50 = sub_10003ED70(NSPPrivateAccessTokenCache, challengeCopy, v49);

      if (v50)
      {
        v51 = v50[2];
        v52 = v50[1];
        v53 = sub_1000A7CE0(selfCopy, v51, challengeCopy, limit, keyCopy, v52, handlerCopy);

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

  if (sub_1000A7990(selfCopy, tokenCopy, challengeCopy, originCopy, tools))
  {
    v38 = sub_100040090(NSPPrivateAccessTokenCache, challengeCopy, originCopy);
    toolsCopy2 = tools;
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

    (*(handlerCopy + 2))(handlerCopy, 0, 1009, 0, 0);
  }

  else
  {
    v55 = nplog_obj();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Not allowed to fetch private access token for origin", &buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 1001, 0, 0);
  }

LABEL_112:
}

- (void)fetchPrivateAccessTokenForChallenge:(id)challenge overrideAttester:(id)attester supportsTokenUsageFeedback:(BOOL)feedback customAttester:(id)customAttester customAttesterHeaders:(id)headers tokenKey:(id)key originNameKey:(id)nameKey selectedOrigin:(id)self0 auxiliaryAuthChallenge:(id)self1 auxiliaryAuthKey:(id)self2 auxiliaryAuthLabel:(id)self3 auxiliaryAuthInfoCacheKey:(id)self4 rateLimit:(unsigned int)self5 auditToken:(id)self6 bundleID:(id)self7 accessToken:(id)self8 completionHandler:(id)self9
{
  challengeCopy = challenge;
  attesterCopy = attester;
  customAttesterCopy = customAttester;
  headersCopy = headers;
  keyCopy = key;
  nameKeyCopy = nameKey;
  selfCopy = self;
  originCopy = origin;
  authChallengeCopy = authChallenge;
  authKeyCopy = authKey;
  labelCopy = label;
  cacheKeyCopy = cacheKey;
  tokenCopy = token;
  dCopy = d;
  accessTokenCopy = accessToken;
  handlerCopy = handler;
  v29 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v29);

  if (!challengeCopy)
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

  if (!authChallengeCopy)
  {
    v52 = nplog_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v107) = 136315138;
      *(&v107 + 4) = "[NSPPrivacyTokenManager fetchPrivateAccessTokenForChallenge:overrideAttester:supportsTokenUsageFeedback:customAttester:customAttesterHeaders:tokenKey:originNameKey:selectedOrigin:auxiliaryAuthChallenge:auxiliaryAuthKey:auxiliaryAuthLabel:auxiliaryAuthInfoCacheKey:rateLimit:auditToken:bundleID:accessToken:completionHandler:]";
      _os_log_fault_impl(&_mh_execute_header, v52, OS_LOG_TYPE_FAULT, "%s called with null auxiliaryAuthChallenge", &v107, 0xCu);
    }

LABEL_41:

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 1004, 0, 0);
    goto LABEL_38;
  }

  if (handlerCopy)
  {
    v30 = sub_1000A149C(&self->super.isa);
    if (attesterCopy | v30)
    {
    }

    else if (!customAttesterCopy)
    {
      v31 = nplog_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v107) = 0;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Cannot fetch private access token, no attester URL", &v107, 2u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 1005, 0, 0);
      goto LABEL_38;
    }

    *&v107 = 0;
    *(&v107 + 1) = &v107;
    v108 = 0x3032000000;
    v109 = sub_100001FA4;
    v110 = sub_1000A962C;
    v111 = os_transaction_create();
    if ([challengeCopy tokenType] == 58796)
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
      if ([authChallengeCopy tokenType] == 49278)
      {
        issuerName = [challengeCopy issuerName];
        queue = sub_1000A418C(self, issuerName);

        if (queue)
        {
          v35 = nplog_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            issuerName2 = [challengeCopy issuerName];
            *buf = 138412290;
            v106 = issuerName2;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Waiting for ongoing call to fetch token for %@", buf, 0xCu);
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000AA88C;
          block[3] = &unk_10010AEA8;
          v87 = challengeCopy;
          selfCopy2 = self;
          v89 = attesterCopy;
          feedbackCopy = feedback;
          v90 = customAttesterCopy;
          v91 = headersCopy;
          v92 = keyCopy;
          v93 = nameKeyCopy;
          v94 = originCopy;
          v95 = authChallengeCopy;
          v96 = authKeyCopy;
          v97 = labelCopy;
          v98 = cacheKeyCopy;
          limitCopy = limit;
          v99 = tokenCopy;
          v100 = dCopy;
          v101 = accessTokenCopy;
          v102 = handlerCopy;
          dispatch_async(queue, block);

          v37 = v87;
        }

        else
        {
          v37 = dispatch_group_create();
          v38 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
          _socketStreamProperties = [v38 _socketStreamProperties];
          if (_socketStreamProperties)
          {
            _socketStreamProperties2 = [v38 _socketStreamProperties];
            v60 = [NSMutableDictionary dictionaryWithDictionary:_socketStreamProperties2];
          }

          else
          {
            v60 = +[NSMutableDictionary dictionary];
          }

          [v60 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyPrefersNoProxy];
          [v38 set_socketStreamProperties:v60];
          [v38 setTimeoutIntervalForRequest:60.0];
          [v38 set_sourceApplicationAuditTokenData:tokenCopy];
          [v38 set_sourceApplicationBundleIdentifier:dCopy];
          [v38 setUsesClassicLoadingMode:0];
          v41 = [NSURLSession sessionWithConfiguration:v38];
          [v41 setSessionDescription:@"PrivateAccessTokenFetch"];
          v57 = objc_alloc_init(NSMutableArray);
          v55 = objc_alloc_init(NSMutableArray);
          v58 = sub_1000B9830(NSPPrivateAccessTokenFetcher, authChallengeCopy, authKeyCopy, 1u, 0, 0, v57, v55, 0, 0);
          if ([v58 count] == 1)
          {
            v54 = v41;
            v56 = objc_alloc_init(NSPPrivacyProxyAuxiliaryAuthInfo);
            [v56 setAuthType:2];
            [v56 setLabel:labelCopy];
            firstObject = [v58 firstObject];
            v44 = firstObject;
            if (firstObject)
            {
              Property = objc_getProperty(firstObject, v43, 24, 1);
            }

            else
            {
              Property = 0;
            }

            v46 = Property;
            [v56 addContentList:v46];

            dispatch_group_enter(v37);
            if (attesterCopy)
            {
              issuerName3 = [challengeCopy issuerName];
              sub_1000A3F04(selfCopy, issuerName3);
            }

            v79[0] = _NSConcreteStackBlock;
            v79[1] = 3221225472;
            v79[2] = sub_1000AA988;
            v79[3] = &unk_10010AED0;
            v85 = handlerCopy;
            v80 = v57;
            v81 = authChallengeCopy;
            v82 = authKeyCopy;
            v83 = v55;
            v48 = v37;
            v84 = v48;
            sub_1000A4BD4(selfCopy, challengeCopy, attesterCopy, customAttesterCopy, headersCopy, keyCopy, 1, nameKeyCopy, originCopy, cacheKeyCopy, v56, dCopy, accessTokenCopy, 0, v54, 0, v79);
            v49 = NPGetInternalQueue();
            v73[0] = _NSConcreteStackBlock;
            v73[1] = 3221225472;
            v73[2] = sub_1000AABB4;
            v73[3] = &unk_10010AE80;
            v74 = attesterCopy;
            v75 = selfCopy;
            v76 = challengeCopy;
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

            (*(handlerCopy + 2))(handlerCopy, 0, 0, 1004, @"Failed to create auxiliary auth request", 0);
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

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 1004, v33, 0);
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

- (void)fetchPairedPrivateAccessTokensForChallenge:(id)challenge overrideAttester:(id)attester configurationFetchDate:(id)date configurationETag:(id)tag tokenKey:(id)key originNameKey:(id)nameKey selectedOrigin:(id)origin pairedChallenge:(id)self0 overridePairedAttester:(id)self1 pairedTokenKey:(id)self2 auditToken:(id)self3 bundleID:(id)self4 allowTools:(BOOL)self5 systemTokenClient:(BOOL)self6 accessToken:(id)self7 completionHandler:(id)self8
{
  challengeCopy = challenge;
  attesterCopy = attester;
  dateCopy = date;
  tagCopy = tag;
  keyCopy = key;
  nameKeyCopy = nameKey;
  originCopy = origin;
  pairedChallengeCopy = pairedChallenge;
  pairedAttesterCopy = pairedAttester;
  tokenKeyCopy = tokenKey;
  tokenCopy = token;
  dCopy = d;
  accessTokenCopy = accessToken;
  handlerCopy = handler;
  v26 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v26);

  if (!challengeCopy)
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

  if (!pairedChallengeCopy)
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

  if (handlerCopy)
  {
    if (attesterCopy && pairedAttesterCopy)
    {
      if (client)
      {
LABEL_7:
        if (sub_1000B37E0(challengeCopy, client))
        {
          *&buf = 0;
          *(&buf + 1) = &buf;
          v146 = 0x3032000000;
          v147 = sub_100001FA4;
          v148 = sub_1000A962C;
          v27 = [keyCopy key];
          v149 = sub_10003E848(NSPPrivateAccessTokenCache, challengeCopy, v27);

          v28 = *(*(&buf + 1) + 40);
          if (v28)
          {
            LODWORD(v140) = 0;
            v29 = [tokenKeyCopy key];
            v30 = *(*(&buf + 1) + 40);
            v121 = 0;
            v31 = sub_10003F3C4(NSPPrivateAccessTokenCache, pairedChallengeCopy, v29, challengeCopy, v30, &v140, &v121);
            v32 = v121;

            queue = v31 == 0;
            if (v31)
            {
              (*(handlerCopy + 2))(handlerCopy, *(*(&buf + 1) + 40), v31, v32, 0, 0, 0);
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
            issuerName = [challengeCopy issuerName];
            queuea = sub_1000A418C(self, issuerName);

            if (queuea)
            {
              v42 = nplog_obj();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                issuerName2 = [challengeCopy issuerName];
                LODWORD(v140) = 138412290;
                *(&v140 + 4) = issuerName2;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Waiting for ongoing call to fetch long-lived token for %@", &v140, 0xCu);
              }

              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1000ABC0C;
              block[3] = &unk_10010AEF8;
              v123 = challengeCopy;
              selfCopy = self;
              v125 = attesterCopy;
              v126 = dateCopy;
              v127 = tagCopy;
              v128 = keyCopy;
              v129 = nameKeyCopy;
              v130 = originCopy;
              v131 = pairedChallengeCopy;
              v132 = pairedAttesterCopy;
              v133 = tokenKeyCopy;
              v134 = tokenCopy;
              v135 = dCopy;
              toolsCopy = tools;
              clientCopy = client;
              v136 = accessTokenCopy;
              v137 = handlerCopy;
              dispatch_async(queuea, block);

              goto LABEL_51;
            }

            sub_10004001C(NSPPrivateAccessTokenCache, pairedChallengeCopy);
            queue = 1;
          }

          issuerName3 = [pairedChallengeCopy issuerName];
          v45 = sub_1000A418C(self, issuerName3);

          if (v45)
          {
            if (queue)
            {
              v46 = nplog_obj();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                issuerName4 = [pairedChallengeCopy issuerName];
                LODWORD(v140) = 138412290;
                *(&v140 + 4) = issuerName4;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Waiting for ongoing call to fetch one-time token for %@", &v140, 0xCu);
              }

              v103[0] = _NSConcreteStackBlock;
              v103[1] = 3221225472;
              v103[2] = sub_1000ABD04;
              v103[3] = &unk_10010AEF8;
              v104 = pairedChallengeCopy;
              selfCopy2 = self;
              v106 = challengeCopy;
              v107 = attesterCopy;
              v108 = dateCopy;
              v109 = tagCopy;
              v110 = keyCopy;
              v111 = nameKeyCopy;
              v112 = originCopy;
              v113 = pairedAttesterCopy;
              v114 = tokenKeyCopy;
              v115 = tokenCopy;
              v116 = dCopy;
              toolsCopy2 = tools;
              clientCopy2 = client;
              v117 = accessTokenCopy;
              v118 = handlerCopy;
              dispatch_async(v45, v103);

              v48 = v104;
            }

            else
            {
              v48 = nplog_obj();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                issuerName5 = [pairedChallengeCopy issuerName];
                LODWORD(v140) = 138412290;
                *(&v140 + 4) = issuerName5;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Not waiting for ongoing call to fetch one-time token for %@, returned from cache", &v140, 0xCu);
              }
            }

            goto LABEL_51;
          }

          v49 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
          _socketStreamProperties = [v49 _socketStreamProperties];
          if (_socketStreamProperties)
          {
            _socketStreamProperties2 = [v49 _socketStreamProperties];
            v52 = [NSMutableDictionary dictionaryWithDictionary:_socketStreamProperties2];
          }

          else
          {
            v52 = +[NSMutableDictionary dictionary];
          }

          [v52 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyPrefersNoProxy];
          [v49 set_socketStreamProperties:v52];
          [v49 setTimeoutIntervalForRequest:60.0];
          [v49 set_sourceApplicationAuditTokenData:tokenCopy];
          [v49 set_sourceApplicationBundleIdentifier:dCopy];
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
          issuerName6 = [challengeCopy issuerName];
          if (!v28)
          {
            dispatch_group_enter(v54);
            sub_1000A3F04(self, issuerName6);
            v90[0] = _NSConcreteStackBlock;
            v90[1] = 3221225472;
            v90[2] = sub_1000ABE00;
            v90[3] = &unk_10010AF48;
            v101 = handlerCopy;
            v91 = v54;
            selfCopy3 = self;
            v93 = challengeCopy;
            v94 = attesterCopy;
            v95 = keyCopy;
            v96 = nameKeyCopy;
            v97 = originCopy;
            v98 = dCopy;
            v99 = accessTokenCopy;
            v100 = v36;
            p_buf = &buf;
            sub_1000A3548(self, v95, v94, dateCopy, tagCopy, v90);
          }

          v56 = NPGetInternalQueue();
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_1000AC0B8;
          v74[3] = &unk_10010B010;
          v74[4] = self;
          v75 = issuerName6;
          v76 = pairedChallengeCopy;
          v86 = &buf;
          v89 = queue;
          v88 = v35;
          v77 = tokenKeyCopy;
          v78 = pairedAttesterCopy;
          v79 = dateCopy;
          v80 = tagCopy;
          v85 = handlerCopy;
          v81 = dCopy;
          v82 = accessTokenCopy;
          v83 = v36;
          v84 = challengeCopy;
          v87 = &v140;
          v57 = v36;
          v58 = issuerName6;
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

        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 1004, 0, 0);
        goto LABEL_52;
      }

      if (sub_1000A7990(self, tokenCopy, challengeCopy, originCopy, tools))
      {
        if (sub_100040090(NSPPrivateAccessTokenCache, challengeCopy, originCopy))
        {
          goto LABEL_7;
        }

        v38 = nplog_obj();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Not allowed to fetch private access token, rate limited", &buf, 2u);
        }

        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 1009, 0, 0);
      }

      else
      {
        v40 = nplog_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Not allowed to fetch private access token for origin", &buf, 2u);
        }

        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 1001, 0, 0);
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

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 1005, 0, 0);
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

- (void)copyTokenInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    [infoCopy setDeviceIdentityValidationCount:dword_1001298BC];
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

- (void)getTokenServerIPWithInterface:(id)interface completionHandler:(id)handler
{
  interfaceCopy = interface;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (interfaceCopy)
  {
    if (self && self->_tokenEndpointResolver)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }

    else
    {
      tokenFetchURL = [(NSPPrivacyTokenManager *)self tokenFetchURL];
      v10 = [NSURL URLWithString:tokenFetchURL];

      if (v10)
      {
        host = [v10 host];
        host = nw_endpoint_create_host([host UTF8String], "443");
        v13 = nw_parameters_create();
        cInterface = [interfaceCopy cInterface];
        nw_parameters_require_interface(v13, cInterface);

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

- (void)checkCostQuotaForIssuerName:(id)name quotaService:(id)service auditToken:(id)token bundleID:(id)d accessToken:(id)accessToken completionHandler:(id)handler
{
  nameCopy = name;
  serviceCopy = service;
  tokenCopy = token;
  dCopy = d;
  accessTokenCopy = accessToken;
  handlerCopy = handler;
  v18 = NPGetInternalQueue();
  dispatch_assert_queue_V2(v18);

  if (nameCopy && ([serviceCopy serviceURL], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    v20 = nplog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = nameCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Checking cost quota for %@", buf, 0xCu);
    }

    v21 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    _socketStreamProperties = [v21 _socketStreamProperties];
    if (_socketStreamProperties)
    {
      _socketStreamProperties2 = [v21 _socketStreamProperties];
      v44 = [NSMutableDictionary dictionaryWithDictionary:_socketStreamProperties2];
    }

    else
    {
      v44 = +[NSMutableDictionary dictionary];
    }

    [v44 setObject:&__kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyPrefersNoProxy];
    [v21 set_socketStreamProperties:v44];
    [v21 setTimeoutIntervalForRequest:60.0];
    [v21 set_sourceApplicationAuditTokenData:tokenCopy];
    [v21 set_sourceApplicationBundleIdentifier:dCopy];
    [v21 setUsesClassicLoadingMode:0];
    v43 = [NSURLSession sessionWithConfiguration:v21];
    [v43 setSessionDescription:@"CostQuotaFetch"];
    serviceURL = [serviceCopy serviceURL];
    v24 = [[NSURLComponents alloc] initWithString:serviceURL];
    v41 = v24;
    if (v24)
    {
      string = [v24 string];
      v26 = sub_1000A17F4(self, string, 0, 0, 0, 0);

      if (v26)
      {
        if (accessTokenCopy)
        {
          [v26 setValue:accessTokenCopy forHTTPHeaderField:@"X-Mask-Subscription-Token"];
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
            configServerHeaders = [v30 configServerHeaders];
            v32 = configServerHeaders == 0;

            if (!v32)
            {
              allHTTPHeaderFields = [v26 allHTTPHeaderFields];
              configServerHeaders2 = [v30 configServerHeaders];
              v34 = [NPUtilities mergeHTTPHeaders:allHTTPHeaderFields headerOverrides:configServerHeaders2];
              [v26 setAllHTTPHeaderFields:v34];
            }
          }
        }

        v35 = objc_alloc_init(NSPPrivacyProxyQuotaServiceRequest);
        v36 = objc_alloc_init(NSPPrivacyProxyGetQuotaRequest);
        [v35 setRequest:v36];

        request = [v35 request];
        [request setUseCaseIdentifier:nameCopy];

        objc_initWeak(buf, self);
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1000AD588;
        v47[3] = &unk_10010B088;
        objc_copyWeak(&v51, buf);
        v48 = v26;
        v50 = handlerCopy;
        v49 = nameCopy;
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

        (*(handlerCopy + 2))(handlerCopy, 0, 1004, 0, 0, 0.0, 0.0);
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

      (*(handlerCopy + 2))(handlerCopy, 0, 1004, 0, 0, 0.0, 0.0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 1004, 0, 0, 0.0, 0.0);
  }
}

@end