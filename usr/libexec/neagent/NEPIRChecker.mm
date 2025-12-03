@interface NEPIRChecker
- (BOOL)stop;
- (NEPIRChecker)init;
- (void)check:(id)check sourceAppBundleId:(id)id responseQueue:(id)queue redactSensitiveLogs:(BOOL)logs completionHandler:(id)handler;
- (void)fetchServerParameters;
- (void)resetCache;
- (void)start:(id)start responseQueue:(id)queue completionHandler:(id)handler;
@end

@implementation NEPIRChecker

- (void)check:(id)check sourceAppBundleId:(id)id responseQueue:(id)queue redactSensitiveLogs:(BOOL)logs completionHandler:(id)handler
{
  logsCopy = logs;
  checkCopy = check;
  idCopy = id;
  queue = queue;
  handlerCopy = handler;
  v13 = handlerCopy;
  v68 = checkCopy;
  if (self && self->_registered)
  {
    v65 = handlerCopy;
    v81 = 0;
    selfCopy = self;
    if (!sub_10000E3E4(self, checkCopy, &v81))
    {
      v20 = checkCopy;
      if ([v20 count] && -[NSMutableArray count](self->_requestBatchGroups, "count"))
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v21 = self->_requestBatchGroups;
        v14 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v82 objects:v90 count:16];
        if (v14)
        {
          v22 = *v83;
          while (2)
          {
            v23 = 0;
            do
            {
              if (*v83 != v22)
              {
                objc_enumerationMutation(v21);
              }

              v24 = *(*(&v82 + 1) + 8 * v23);
              v25 = v20;
              v26 = v25;
              if (v24)
              {
                if ([v25 count])
                {
                  if ([v24[1] count])
                  {
                    v27 = [v26 count];
                    if (v27 == [v24[1] count])
                    {
                      v88 = 0u;
                      v89 = 0u;
                      v86 = 0u;
                      v87 = 0u;
                      v28 = v26;
                      v29 = [v28 countByEnumeratingWithState:&v86 objects:v92 count:16];
                      if (v29)
                      {
                        v30 = *v87;
                        while (2)
                        {
                          for (i = 0; i != v29; i = i + 1)
                          {
                            if (*v87 != v30)
                            {
                              objc_enumerationMutation(v28);
                            }

                            if (![v24[1] containsObject:{*(*(&v86 + 1) + 8 * i), selfCopy}])
                            {

                              goto LABEL_31;
                            }
                          }

                          v29 = [v28 countByEnumeratingWithState:&v86 objects:v92 count:16];
                          if (v29)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v14 = v24;
                      goto LABEL_55;
                    }
                  }
                }
              }

LABEL_31:
              v23 = (v23 + 1);
            }

            while (v23 != v14);
            v32 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v82 objects:v90 count:16];
            v14 = v32;
            if (v32)
            {
              continue;
            }

            break;
          }
        }

LABEL_55:

        if (v14)
        {
          v50 = v14[2];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000E54C;
          block[3] = &unk_100024860;
          block[4] = selfCopy;
          v77 = v20;
          v80 = logsCopy;
          v78 = idCopy;
          v79 = v65;
          dispatch_group_notify(v50, queue, block);

          goto LABEL_52;
        }
      }

      else
      {
      }

      v33 = [NEPIRBatchGroup alloc];
      v34 = v20;
      if (v33)
      {
        *v92 = v33;
        *&v92[8] = NEPIRBatchGroup;
        v35 = objc_msgSendSuper2(v92, "init");
        if (v35)
        {
          v36 = [[NSSet alloc] initWithArray:v34];
          v37 = v35[1];
          v35[1] = v36;

          v38 = dispatch_group_create();
          v39 = v35[2];
          v35[2] = v38;
        }
      }

      else
      {
        v35 = 0;
      }

      [(NSMutableArray *)selfCopy->_requestBatchGroups addObject:v35];
      if (v35)
      {
        v40 = v35[2];
      }

      else
      {
        v40 = 0;
      }

      dispatch_group_enter(v40);
      v41 = [CMLClientConfig alloc];
      appBundleIdentifier = selfCopy->_appBundleIdentifier;
      v43 = selfCopy->_pirUseCase;
      v44 = [v41 initWithUseCase:v43 sourceApplicationBundleIdentifier:appBundleIdentifier];

      v45 = [[CMLKeywordPIRClient alloc] initWithClientConfig:v44 dispatchQueue:queue];
      *v92 = 0;
      *&v92[8] = v92;
      *&v92[16] = 0x3032000000;
      *&v92[24] = sub_10000EA6C;
      *&v92[32] = sub_10000EA7C;
      v46 = v34;
      v93 = v46;
      v90[0] = 0;
      v90[1] = v90;
      v90[2] = 0x3032000000;
      v90[3] = sub_10000EA6C;
      v90[4] = sub_10000EA7C;
      v91 = 0;
      *&v86 = 0;
      *(&v86 + 1) = &v86;
      *&v87 = 0x2020000000;
      BYTE8(v87) = 0;
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_10000EA84;
      v69[3] = &unk_100024888;
      v69[4] = selfCopy;
      v73 = v90;
      v74 = v92;
      v70 = idCopy;
      v75 = &v86;
      v72 = v65;
      v47 = v35;
      v71 = v47;
      [v45 requestDataByStringKeywords:v46 completionHandler:v69];

      _Block_object_dispose(&v86, 8);
      _Block_object_dispose(v90, 8);

      _Block_object_dispose(v92, 8);
      v14 = 0;
      goto LABEL_52;
    }

    v14 = [checkCopy objectAtIndexedSubscript:0];
    v15 = v81;
    v16 = ne_log_obj();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      if (logsCopy)
      {
        if (v17)
        {
          if ([v14 UTF8String])
          {
            v18 = strlen([v14 UTF8String]);
          }

          else
          {
            v18 = 0;
          }

          if ([v14 UTF8String])
          {
            uTF8String = [v14 UTF8String];
          }

          else
          {
            uTF8String = "<nil url>";
          }

          if ([idCopy UTF8String])
          {
            uTF8String2 = [idCopy UTF8String];
          }

          else
          {
            uTF8String2 = "nil";
          }

          *v92 = 136316419;
          *&v92[4] = "[NEPIRChecker check:sourceAppBundleId:responseQueue:redactSensitiveLogs:completionHandler:]";
          *&v92[12] = 2160;
          *&v92[14] = 1752392040;
          *&v92[22] = 1040;
          *&v92[24] = v18;
          *&v92[28] = 2101;
          *&v92[30] = uTF8String;
          *&v92[38] = 2080;
          v93 = uTF8String2;
          v94 = 1024;
          v95 = 0;
          v60 = "%s: URLCHECK: FINAL RESULT: CACHED BLOCKED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
LABEL_87:
          v61 = v16;
          v62 = 54;
LABEL_93:
          _os_log_debug_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEBUG, v60, v92, v62);
          goto LABEL_51;
        }

        goto LABEL_51;
      }

      if (!v17)
      {
        goto LABEL_51;
      }

      if ([v14 UTF8String])
      {
        v49 = strlen([v14 UTF8String]);
      }

      else
      {
        v49 = 0;
      }

      if ([v14 UTF8String])
      {
        uTF8String3 = [v14 UTF8String];
      }

      else
      {
        uTF8String3 = "<nil url>";
      }

      if ([idCopy UTF8String])
      {
        uTF8String4 = [idCopy UTF8String];
      }

      else
      {
        uTF8String4 = "nil";
      }

      *v92 = 136316163;
      *&v92[4] = "[NEPIRChecker check:sourceAppBundleId:responseQueue:redactSensitiveLogs:completionHandler:]";
      *&v92[12] = 1024;
      *&v92[14] = v49;
      *&v92[18] = 2081;
      *&v92[20] = uTF8String3;
      *&v92[28] = 2080;
      *&v92[30] = uTF8String4;
      *&v92[38] = 1024;
      LODWORD(v93) = 0;
      v60 = "%s: URLCHECK: FINAL RESULT: CACHED BLOCKED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
    }

    else
    {
      if (logsCopy)
      {
        if (v17)
        {
          if ([v14 UTF8String])
          {
            v48 = strlen([v14 UTF8String]);
          }

          else
          {
            v48 = 0;
          }

          if ([v14 UTF8String])
          {
            uTF8String5 = [v14 UTF8String];
          }

          else
          {
            uTF8String5 = "<nil url>";
          }

          if ([idCopy UTF8String])
          {
            uTF8String6 = [idCopy UTF8String];
          }

          else
          {
            uTF8String6 = "nil";
          }

          *v92 = 136316419;
          *&v92[4] = "[NEPIRChecker check:sourceAppBundleId:responseQueue:redactSensitiveLogs:completionHandler:]";
          *&v92[12] = 2160;
          *&v92[14] = 1752392040;
          *&v92[22] = 1040;
          *&v92[24] = v48;
          *&v92[28] = 2101;
          *&v92[30] = uTF8String5;
          *&v92[38] = 2080;
          v93 = uTF8String6;
          v94 = 1024;
          v95 = 0;
          v60 = "%s: URLCHECK: FINAL RESULT: CACHED ALLOWED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
          goto LABEL_87;
        }

LABEL_51:

        v65[2](v65, v15, 0);
LABEL_52:

        v13 = v65;
        goto LABEL_53;
      }

      if (!v17)
      {
        goto LABEL_51;
      }

      if ([v14 UTF8String])
      {
        v51 = strlen([v14 UTF8String]);
      }

      else
      {
        v51 = 0;
      }

      if ([v14 UTF8String])
      {
        uTF8String7 = [v14 UTF8String];
      }

      else
      {
        uTF8String7 = "<nil url>";
      }

      if ([idCopy UTF8String])
      {
        uTF8String8 = [idCopy UTF8String];
      }

      else
      {
        uTF8String8 = "nil";
      }

      *v92 = 136316163;
      *&v92[4] = "[NEPIRChecker check:sourceAppBundleId:responseQueue:redactSensitiveLogs:completionHandler:]";
      *&v92[12] = 1024;
      *&v92[14] = v51;
      *&v92[18] = 2081;
      *&v92[20] = uTF8String7;
      *&v92[28] = 2080;
      *&v92[30] = uTF8String8;
      *&v92[38] = 1024;
      LODWORD(v93) = 0;
      v60 = "%s: URLCHECK: FINAL RESULT: CACHED ALLOWED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
    }

    v61 = v16;
    v62 = 44;
    goto LABEL_93;
  }

  v19 = [[NSError alloc] initWithDomain:@"NEMembershipCheckerErrorDomain" code:2 userInfo:0];
  (v13)[2](v13, 0, v19);

LABEL_53:
}

- (void)resetCache
{
  v3 = objc_alloc_init(NSMutableDictionary);
  sub_10000F088(self, v3);

  if (self && self->_registered && self->_appBundleIdentifier && !self->_pirSkipRegistration)
  {
    v4 = [CMLClientConfig alloc];
    appBundleIdentifier = self->_appBundleIdentifier;
    v6 = self->_pirUseCase;
    v7 = [v4 initWithUseCase:v6 sourceApplicationBundleIdentifier:appBundleIdentifier];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000F098;
    v8[3] = &unk_100024838;
    v8[4] = self;
    [CMLUseCaseStatus requestStatusForClientConfig:v7 options:32 completionHandler:v8];
  }
}

- (void)fetchServerParameters
{
  if (self && self->_registered && self->_appBundleIdentifier && !self->_pirSkipRegistration)
  {
    v3 = [CMLClientConfig alloc];
    appBundleIdentifier = self->_appBundleIdentifier;
    v5 = self->_pirUseCase;
    v6 = [v3 initWithUseCase:v5 sourceApplicationBundleIdentifier:appBundleIdentifier];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000F398;
    v7[3] = &unk_100024838;
    v7[4] = self;
    [CMLUseCaseStatus requestStatusForClientConfig:v6 options:264 completionHandler:v7];
  }
}

- (BOOL)stop
{
  if (self && self->_registered)
  {
    if (self->_pirSkipRegistration)
    {
      objc_storeStrong(&self->_pirCache, 0);
      objc_storeStrong(&self->_appBundleIdentifier, 0);
      objc_storeStrong(&self->_pirGroupName, 0);
      objc_storeStrong(&self->_pirUseCase, 0);
      *&self->_registered = 0;
      *&self->_pirPrivacyProxyFailOpen = 0;
    }

    else
    {
      v3 = +[CMLUseCaseGroupManager sharedManager];
      pirGroupName = self->_pirGroupName;
      v13 = 0;
      v5 = pirGroupName;
      v6 = [v3 configureGroupWithName:v5 useCaseGroup:0 error:&v13];
      v7 = v13;

      v8 = ne_log_obj();
      v9 = v8;
      if (v6)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = self->_pirGroupName;
          *buf = 138412802;
          selfCopy2 = self;
          v16 = 2080;
          v17 = "[NEPIRChecker stop]";
          v18 = 2112;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: %s - completed unregistration with PIR for Group %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = self->_pirGroupName;
        *buf = 138412802;
        selfCopy2 = self;
        v16 = 2080;
        v17 = "[NEPIRChecker stop]";
        v18 = 2112;
        v19 = v12;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@: %s - failed to unregister with PIR for Group %@", buf, 0x20u);
      }

      objc_storeStrong(&self->_pirCache, 0);
      objc_storeStrong(&self->_appBundleIdentifier, 0);
      objc_storeStrong(&self->_pirGroupName, 0);
      objc_storeStrong(&self->_pirUseCase, 0);
      *&self->_registered = 0;
      *&self->_pirPrivacyProxyFailOpen = 0;
    }
  }

  return 1;
}

- (void)start:(id)start responseQueue:(id)queue completionHandler:(id)handler
{
  startCopy = start;
  handlerCopy = handler;
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy5 = self;
    v87 = 2080;
    v88 = "[NEPIRChecker start:responseQueue:completionHandler:]";
    v89 = 2112;
    v90 = startCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: %s - enter %@", buf, 0x20u);
  }

  if (startCopy)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    sub_10000F088(self, v10);

    appBundleIdentifier = [(NSString *)startCopy appBundleIdentifier];
    if (self)
    {
      objc_storeStrong(&self->_appBundleIdentifier, appBundleIdentifier);
    }

    pirServerURL = [(NSString *)startCopy pirServerURL];
    pirPrivacyPassIssuerURL = [(NSString *)startCopy pirPrivacyPassIssuerURL];
    v14 = [NSData alloc];
    pirAuthenticationToken = [(NSString *)startCopy pirAuthenticationToken];
    v78 = [v14 initWithBase64EncodedString:pirAuthenticationToken options:0];

    if (self)
    {
      objc_storeStrong(&self->_pirGroupName, self->_appBundleIdentifier);
      v16 = [NSString alloc];
      pirGroupName = self->_pirGroupName;
    }

    else
    {
      v16 = [NSString alloc];
      pirGroupName = 0;
    }

    v18 = pirGroupName;
    v19 = [v16 initWithFormat:@"%@.%@", v18, @"url.filtering"];
    sub_10000F7F0(self, v19);

    pirGroupName = [(NSString *)startCopy pirGroupName];

    if (pirGroupName)
    {
      pirGroupName2 = [(NSString *)startCopy pirGroupName];
      if (self)
      {
        objc_storeStrong(&self->_pirGroupName, pirGroupName2);
      }

      v22 = [NSString alloc];
      if (self)
      {
        v23 = self->_pirGroupName;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      v25 = [v22 initWithFormat:@"%@.%@", v24, @"url.filtering"];
      sub_10000F7F0(self, v25);
    }

    pirUseCase = [(NSString *)startCopy pirUseCase];

    if (pirUseCase)
    {
      pirUseCase2 = [(NSString *)startCopy pirUseCase];
      sub_10000F7F0(self, pirUseCase2);
    }

    pirPrivacyProxyFailOpen = [(NSString *)startCopy pirPrivacyProxyFailOpen];
    if (self)
    {
      self->_pirPrivacyProxyFailOpen = pirPrivacyProxyFailOpen;
      self->_pirSkipRegistration = [(NSString *)startCopy pirSkipRegistration];
      v29 = [LSApplicationRecord alloc];
      appBundleIdentifier = self->_appBundleIdentifier;
    }

    else
    {
      [(NSString *)startCopy pirSkipRegistration];
      v29 = [LSApplicationRecord alloc];
      appBundleIdentifier = 0;
    }

    v82 = 0;
    v31 = appBundleIdentifier;
    v32 = [v29 initWithBundleIdentifier:v31 allowPlaceholder:0 error:&v82];
    v33 = v82;

    if (!v33 && v32)
    {
      entitlements = [v32 entitlements];
      v35 = [entitlements objectForKey:@"get-task-allow" ofClass:objc_opt_class()];

      bOOLValue = [v35 BOOLValue];
      if (self)
      {
        self->_pirPrivacyProxyFailOpen = bOOLValue;
      }
    }

    if (self && self->_pirSkipRegistration)
    {
      v37 = ne_log_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = self->_pirGroupName;
        pirUseCase = self->_pirUseCase;
        pirPrivacyProxyFailOpen = self->_pirPrivacyProxyFailOpen;
        *buf = 138413570;
        v87 = 2080;
        selfCopy5 = self;
        v88 = "[NEPIRChecker start:responseQueue:completionHandler:]";
        v89 = 2112;
        v90 = v38;
        v91 = 2112;
        v92 = pirUseCase;
        v93 = 1024;
        v94 = pirPrivacyProxyFailOpen;
        v95 = 2112;
        v96 = pirServerURL;
        v41 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@: %s - FOR TEST - Skip registration - (group <%@> use case <%@> PrivacyProxyFailOpen <%d> serverURL <%@>", buf, 0x3Au);
      }

      self->_registered = 1;
      self->_active = 1;
      handlerCopy[2](handlerCopy, 0);
    }

    else
    {
      v42 = ne_log_obj();
      v75 = pirPrivacyPassIssuerURL;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v76 = v32;
        v43 = v33;
        if (self)
        {
          v44 = self->_pirGroupName;
          v45 = self->_pirUseCase;
          v46 = self->_pirPrivacyProxyFailOpen;
          v47 = v45;
          v48 = v44;
        }

        else
        {
          v45 = 0;
          v47 = 0;
          v44 = 0;
          v48 = 0;
          v46 = 0;
        }

        *buf = 138413826;
        selfCopy5 = self;
        v87 = 2080;
        v88 = "[NEPIRChecker start:responseQueue:completionHandler:]";
        v89 = 2112;
        v90 = v48;
        v91 = 2112;
        v92 = v45;
        v93 = 1024;
        v94 = v46;
        v95 = 2112;
        v96 = pirServerURL;
        v97 = 2112;
        v98 = pirPrivacyPassIssuerURL;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@: %s - Register with PIR Server (group <%@> use case <%@> PrivacyProxyFailOpen <%d> serverURL <%@> privacyPassIssuer <%@>", buf, 0x44u);

        v33 = v43;
        v32 = v76;
      }

      v49 = [[CMLUseCaseConfig alloc] initWithType:0 maxShards:10000 cacheElementCount:1000 cacheEntryMinutesToLive:4320];
      v50 = [CMLNetworkManager alloc];
      if (self)
      {
        v51 = self->_pirPrivacyProxyFailOpen;
      }

      else
      {
        v51 = 0;
      }

      v77 = [v50 initWithType:2 endpoint:pirServerURL issuer:pirPrivacyPassIssuerURL authenticationToken:v78 privacyProxyFailOpen:v51];
      v52 = [CMLUseCaseGroup alloc];
      if (self)
      {
        v53 = self->_pirUseCase;
      }

      else
      {
        v53 = 0;
      }

      v83 = v53;
      v84 = v49;
      v74 = v49;
      v54 = v53;
      v55 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];

      v56 = [v52 initWithKeyExpirationMinutes:10080 keyRotationBeforeExpirationMinutes:1440 useCases:v55 networkConfig:v77];
      v57 = +[CMLUseCaseGroupManager sharedManager];
      if (self)
      {
        v58 = self->_pirGroupName;
      }

      else
      {
        v58 = 0;
      }

      v81 = 0;
      v59 = v58;
      v60 = [v57 configureGroupWithName:v59 useCaseGroup:v56 error:&v81];
      v73 = v81;

      v61 = ne_log_obj();
      v62 = v61;
      if (v60)
      {
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          if (self)
          {
            v63 = self->_pirGroupName;
            v64 = self->_pirUseCase;
            v65 = v63;
          }

          else
          {
            v63 = 0;
            v65 = 0;
            v64 = 0;
          }

          *buf = 138413058;
          selfCopy5 = self;
          v87 = 2080;
          v88 = "[NEPIRChecker start:responseQueue:completionHandler:]";
          v89 = 2112;
          v90 = v63;
          v91 = 2112;
          v92 = v64;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%@: %s - completed registration with PIR for Group %@ usecase %@", buf, 0x2Au);
        }

        v66 = [CMLClientConfig alloc];
        if (self)
        {
          v67 = self->_pirUseCase;
          v68 = self->_appBundleIdentifier;
        }

        else
        {
          v67 = 0;
          v68 = 0;
        }

        pirPrivacyPassIssuerURL = v75;
        v69 = [v66 initWithUseCase:v67 sourceApplicationBundleIdentifier:v68];

        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_100010164;
        v79[3] = &unk_100024810;
        v79[4] = self;
        v80 = handlerCopy;
        [CMLUseCaseStatus requestStatusForClientConfig:v69 options:266 completionHandler:v79];
        if (self)
        {
          self->_registered = 1;
        }
      }

      else
      {
        pirPrivacyPassIssuerURL = v75;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          if (self)
          {
            v70 = self->_pirGroupName;
            v71 = self->_pirUseCase;
            v72 = v70;
          }

          else
          {
            v70 = 0;
            v72 = 0;
            v71 = 0;
          }

          *buf = 138413058;
          selfCopy5 = self;
          v87 = 2080;
          v88 = "[NEPIRChecker start:responseQueue:completionHandler:]";
          v89 = 2112;
          v90 = v70;
          v91 = 2112;
          v92 = v71;
          _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%@: %s - failed to register with PIR for Group %@ usecase %@", buf, 0x2Au);
        }

        v69 = [[NSError alloc] initWithDomain:@"NEMembershipCheckerErrorDomain" code:2 userInfo:0];
        (handlerCopy)[2](handlerCopy, v69);
      }
    }
  }

  else
  {
    pirServerURL = [[NSError alloc] initWithDomain:@"NEMembershipCheckerErrorDomain" code:4 userInfo:0];
    (handlerCopy)[2](handlerCopy, pirServerURL);
  }
}

- (NEPIRChecker)init
{
  v6.receiver = self;
  v6.super_class = NEPIRChecker;
  v2 = [(NEPIRChecker *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    requestBatchGroups = v2->_requestBatchGroups;
    v2->_requestBatchGroups = v3;
  }

  return v2;
}

@end