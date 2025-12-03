@interface SFAnalyticsTopic
+ (id)databasePathForCKKS;
+ (id)databasePathForCloudServices;
+ (id)databasePathForLocal;
+ (id)databasePathForNetworking;
+ (id)databasePathForPCS;
+ (id)databasePathForSOS;
+ (id)databasePathForSWTransparency;
+ (id)databasePathForTransparency;
+ (id)databasePathForTrust;
- (BOOL)ckDeviceAccountApprovedTopic:(id)topic;
- (BOOL)copyEvents:(id)events failures:(id)failures forUpload:(BOOL)upload participatingClients:(id)clients force:(BOOL)force linkedUUID:(id)d error:(id *)error;
- (BOOL)eventIsBlacklisted:(id)blacklisted;
- (BOOL)haveEligibleClients;
- (BOOL)isSampledUpload;
- (BOOL)postJSONFile:(id)file toEndpoint:(id)endpoint eventLinkId:(id)id postSession:(id)session error:(id *)error;
- (BOOL)prepareEventForUpload:(id)upload linkedUUID:(id)d;
- (SFAnalyticsTopic)initWithDictionary:(id)dictionary name:(id)name samplingRates:(id)rates;
- (id)appleInternalStatus;
- (id)appleUser;
- (id)applyFilterLogic:(id)logic linkedID:(id)d;
- (id)askSecurityForCKDeviceID;
- (id)carryStatus;
- (id)chunkFailureSet:(unint64_t)set events:(id)events error:(id *)error;
- (id)createChunkedLoggingJSON:(id)n failures:(id)failures error:(id *)error;
- (id)createEventDictionary:(id)dictionary timestamp:(id)timestamp error:(id *)error;
- (id)dataAnalyticsSetting:(id)setting;
- (id)eventDictWithBlacklistedFieldsStrippedFrom:(id)from;
- (id)getSession;
- (id)healthSummaryWithName:(id)name store:(id)store uuid:(id)uuid timestamp:(id)timestamp lastUploadTime:(id)time;
- (id)sampleStatisticsForSamples:(id)samples withName:(id)name;
- (id)splunkUploadURL:(BOOL)l urlSession:(id)session;
- (unint64_t)serializedEventSize:(id)size error:(id *)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)addFailures:(id)failures toUploadRecords:(id)records threshold:(unint64_t)threshold linkedUUID:(id)d;
- (void)addRequiredFieldsToEvent:(id)event;
- (void)removeBlacklistedFieldsFromEvent:(id)event;
- (void)setupClientsForTopic:(id)topic;
- (void)updateUploadDateForClients:(id)clients date:(id)date clearData:(BOOL)data;
@end

@implementation SFAnalyticsTopic

- (id)eventDictWithBlacklistedFieldsStrippedFrom:(id)from
{
  v4 = [from mutableCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_blacklistedFields;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeObjectForKey:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v11 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412546;
      v24 = @"Execution has encountered an unexpected state";
      v25 = 1024;
      v26 = 1405091854;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Simulating crash, reason: %@, code=%08x", &v23, 0x12u);
    }

    getpid();
    SimulateCrash();
  }

  v12 = sub_1000146E4("upload");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    internalTopicName = self->_internalTopicName;
    v23 = 138412290;
    v24 = internalTopicName;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Splunk upload challenge for %@", &v23, 0xCu);
  }

  if ([challengeCopy previousFailureCount] >= 1)
  {
    goto LABEL_8;
  }

  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v16 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (!v16)
  {
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_18;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace2 serverTrust];

  v19 = SecTrustEvaluateWithError(serverTrust, 0);
  if (self->_allowInsecureSplunkCert || v19)
  {
    if (self->_allowInsecureSplunkCert)
    {
      v20 = sub_1000146E4("upload");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_internalTopicName;
        v23 = 138412290;
        v24 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Force Accepting Splunk Credential for %@", &v23, 0xCu);
      }
    }

    v22 = [NSURLCredential credentialForTrust:serverTrust];
    (handlerCopy)[2](handlerCopy, 0, v22);
  }

  else
  {
LABEL_8:
    handlerCopy[2](handlerCopy, 2, 0);
  }

LABEL_18:
}

- (id)splunkUploadURL:(BOOL)l urlSession:(id)session
{
  sessionCopy = session;
  if (l || [(SFAnalyticsTopic *)self haveEligibleClients])
  {
    splunkUploadURL = self->__splunkUploadURL;
    if (splunkUploadURL)
    {
      v8 = splunkUploadURL;
    }

    else
    {
      v9 = sub_1000146E4("getURL");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        internalTopicName = [(SFAnalyticsTopic *)self internalTopicName];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = internalTopicName;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Asking server for endpoint and config data for topic %@", &buf, 0xCu);
      }

      objc_initWeak(&location, self);
      v11 = dispatch_semaphore_create(0);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v34 = 0x3032000000;
      v35 = sub_100008448;
      v36 = sub_100008458;
      v37 = 0;
      v12 = self->_splunkBagURL;
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = sub_100008448;
      v30 = sub_100008458;
      v31 = 0;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100008E34;
      v20[3] = &unk_100021170;
      objc_copyWeak(&v25, &location);
      p_buf = &buf;
      v20[4] = self;
      v13 = v11;
      v21 = v13;
      v24 = &v26;
      v14 = v12;
      v22 = v14;
      v15 = [sessionCopy dataTaskWithURL:v14 completionHandler:v20];
      [v15 resume];
      v16 = dispatch_time(0, 60000000000);
      dispatch_semaphore_wait(v13, v16);
      v8 = v27[5];

      objc_destroyWeak(&v25);
      _Block_object_dispose(&v26, 8);

      _Block_object_dispose(&buf, 8);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v17 = sub_1000146E4("getURL");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      internalTopicName2 = [(SFAnalyticsTopic *)self internalTopicName];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = internalTopicName2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not going to talk to server for topic %@ because no eligible clients", &buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (id)appleUser
{
  v2 = objc_alloc_init(ACAccountStore);
  v3 = [v2 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierIMAP];
  [v2 accountsWithAccountType:v3];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v31 = 0u;
  v23 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v5 = *v29;
    v6 = ACEmailAliasKeyEmailAddresses;
    v7 = &DiagnosticLogSubmissionEnabled_ptr;
    v21 = *v29;
    v22 = v3;
    v20 = ACEmailAliasKeyEmailAddresses;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v28 + 1) + 8 * v8) objectForKeyedSubscript:{v6, v20, v21}];
        v10 = v7[298];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          allKeys = [v9 allKeys];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            allKeys = v9;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              allKeys = [v9 componentsSeparatedByString:{@", "}];
            }

            else
            {
              allKeys = 0;
            }
          }
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = allKeys;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          while (2)
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v24 + 1) + 8 * i);
              if ([v17 hasSuffix:@"@apple.com"])
              {
                v18 = v17;

                v3 = v22;
                goto LABEL_26;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v8 = v8 + 1;
        v6 = v20;
        v5 = v21;
        v7 = &DiagnosticLogSubmissionEnabled_ptr;
      }

      while (v8 != v23);
      v18 = 0;
      v3 = v22;
      v23 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  else
  {
    v18 = 0;
  }

LABEL_26:

  return v18;
}

- (id)askSecurityForCKDeviceID
{
  v15 = 0;
  v2 = [CKKSControl controlObject:&v15];
  v3 = v15;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (v4)
  {
    v5 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "unable to obtain CKKS endpoint: %@", &buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x3032000000;
    v18 = sub_100008448;
    v19 = sub_100008458;
    v20 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100009920;
    v12[3] = &unk_100021148;
    p_buf = &buf;
    v7 = dispatch_semaphore_create(0);
    v13 = v7;
    [v2 rpcGetCKDeviceIDWithReply:v12];
    v8 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v7, v8))
    {
      v9 = sub_1000146E4("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "timed out waiting for a response from security", v11, 2u);
      }

      v6 = 0;
    }

    else
    {
      v6 = *(*(&buf + 1) + 40);
    }

    _Block_object_dispose(&buf, 8);
  }

  return v6;
}

- (BOOL)haveEligibleClients
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  topicClients = [(SFAnalyticsTopic *)self topicClients];
  v3 = [topicClients countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(topicClients);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (![v7 requireDeviceAnalytics])
        {
          goto LABEL_13;
        }

        if (qword_1000262F8 != -1)
        {
          dispatch_once(&qword_1000262F8, &stru_100021388);
        }

        if (byte_1000262F0 == 1)
        {
LABEL_13:
          if (![v7 requireiCloudAnalytics])
          {
            goto LABEL_17;
          }

          if (qword_100026308 != -1)
          {
            dispatch_once(&qword_100026308, &stru_1000213A8);
          }

          if (byte_100026300)
          {
LABEL_17:
            v8 = 1;
            goto LABEL_18;
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [topicClients countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (BOOL)copyEvents:(id)events failures:(id)failures forUpload:(BOOL)upload participatingClients:(id)clients force:(BOOL)force linkedUUID:(id)d error:(id *)error
{
  uploadCopy = upload;
  eventsCopy = events;
  failuresCopy = failures;
  clientsCopy = clients;
  dCopy = d;
  v38 = +[NSMutableArray array];
  v36 = +[NSMutableArray array];
  v35 = +[NSMutableArray array];
  v34 = +[NSMutableArray array];
  appleInternalStatus = [(SFAnalyticsTopic *)self appleInternalStatus];
  v15 = +[NSDate date];
  [v15 timeIntervalSince1970];
  v31 = [NSNumber numberWithDouble:v16 * 1000.0];

  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  v50 = 0u;
  obj = self->_topicClients;
  v17 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v51;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v50 + 1) + 8 * i);
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_10000A980;
        v39[3] = &unk_100021120;
        forceCopy = force;
        v49 = uploadCopy;
        v39[4] = v21;
        v39[5] = self;
        v40 = v38;
        v41 = dCopy;
        v42 = v31;
        v43 = appleInternalStatus;
        v44 = eventsCopy;
        v45 = v36;
        v46 = v35;
        v47 = v34;
        [v21 withStore:v39];
      }

      v18 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v18);
  }

  if (uploadCopy && ![v38 count])
  {
    if (!error)
    {
      v25 = 0;
      v22 = clientsCopy;
      v24 = failuresCopy;
      goto LABEL_12;
    }

    v23 = [NSString stringWithFormat:@"Upload too recent for all clients for %@", self->_internalTopicName];
    v54 = NSLocalizedDescriptionKey;
    v55 = v23;
    v27 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    *error = [NSError errorWithDomain:@"SupdUploadErrorDomain" code:-10 userInfo:v27];

    v25 = 0;
    v22 = clientsCopy;
    v24 = failuresCopy;
  }

  else
  {
    v22 = clientsCopy;
    [clientsCopy addObjectsFromArray:v38];
    v23 = +[NSMutableArray array];
    [(SFAnalyticsTopic *)self addFailures:v36 toUploadRecords:v23 threshold:self->_maxEventsToReport / 0xA linkedUUID:dCopy];
    [(SFAnalyticsTopic *)self addFailures:v35 toUploadRecords:v23 threshold:self->_maxEventsToReport / 0xA linkedUUID:dCopy];
    [(SFAnalyticsTopic *)self addFailures:v34 toUploadRecords:v23 threshold:0 linkedUUID:dCopy];
    v24 = failuresCopy;
    [failuresCopy addObjectsFromArray:v23];
    v25 = 1;
  }

LABEL_12:
  return v25;
}

- (id)appleInternalStatus
{
  if ([(SFAnalyticsTopic *)self ckDeviceAccountApprovedTopic:self->_internalTopicName])
  {
    v3 = +[NSMutableDictionary dictionary];
    askSecurityForCKDeviceID = [(SFAnalyticsTopic *)self askSecurityForCKDeviceID];
    [v3 setObject:askSecurityForCKDeviceID forKeyedSubscript:@"ckdeviceID"];

    v5 = sub_100009F24();
    [v3 setObject:v5 forKeyedSubscript:@"altDSID"];

    carryStatus = [(SFAnalyticsTopic *)self carryStatus];
    if (carryStatus)
    {
      [v3 addEntriesFromDictionary:carryStatus];
    }

    appleUser = [(SFAnalyticsTopic *)self appleUser];
    if (appleUser)
    {
      v8 = &__kCFBooleanTrue;
    }

    else
    {
      v8 = &__kCFBooleanFalse;
    }

    [v3 setObject:v8 forKeyedSubscript:@"isAppleUser"];
    v9 = sub_1000146E4("getLoggingJSON");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "including deviceID for internal user", buf, 2u);
    }
  }

  else
  {
    carryStatus = sub_1000146E4("getLoggingJSON");
    if (os_log_type_enabled(carryStatus, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, carryStatus, OS_LOG_TYPE_DEFAULT, "no deviceID for internal user", v11, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)ckDeviceAccountApprovedTopic:(id)topic
{
  topicCopy = topic;
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1000262D8 != -1)
    {
      dispatch_once(&qword_1000262D8, &stru_1000210F8);
    }

    v4 = [qword_1000262E0 containsObject:topicCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)carryStatus
{
  if (os_variant_has_internal_diagnostics())
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = +[OSASystemConfiguration automatedDeviceGroup];
    if (v4 || ([(SFAnalyticsTopic *)self dataAnalyticsSetting:@"AutomatedDeviceGroup"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      [v3 setObject:v4 forKeyedSubscript:@"automatedDeviceGroup"];
      v6 = [(SFAnalyticsTopic *)self dataAnalyticsSetting:@"ExperimentGroup"];
    }

    else
    {
      v6 = [(SFAnalyticsTopic *)self dataAnalyticsSetting:@"ExperimentGroup"];
      if (([v6 isEqual:@"walkabout"] & 1) != 0 || objc_msgSend(v6, "isEqual:", @"carry"))
      {
        [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"carry"];
      }
    }

    if ([v3 count])
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1000146E4("getLoggingJSON");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "carrystatus is %@", &v10, 0xCu);
  }

  return v7;
}

- (id)dataAnalyticsSetting:(id)setting
{
  v3 = CFPreferencesCopyValue(setting, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)createChunkedLoggingJSON:(id)n failures:(id)failures error:(id *)error
{
  nCopy = n;
  failuresCopy = failures;
  v10 = +[NSMutableArray array];
  v11 = +[NSDate date];
  [v11 timeIntervalSince1970];
  v13 = [NSNumber numberWithDouble:v12 * 1000.0];

  v28 = nCopy;
  v14 = [(SFAnalyticsTopic *)self chunkFailureSet:[(SFAnalyticsTopic *)self uploadSizeLimit] events:nCopy error:error];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [(SFAnalyticsTopic *)self createEventDictionary:*(*(&v33 + 1) + 8 * i) timestamp:v13 error:error];
        if (v19)
        {
          [v10 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v16);
  }

  v20 = [(SFAnalyticsTopic *)self chunkFailureSet:[(SFAnalyticsTopic *)self uploadSizeLimit] events:failuresCopy error:error];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [(SFAnalyticsTopic *)self createEventDictionary:*(*(&v29 + 1) + 8 * j) timestamp:v13 error:error];
        if (v26)
        {
          [v10 addObject:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v23);
  }

  return v10;
}

- (id)createEventDictionary:(id)dictionary timestamp:(id)timestamp error:(id *)error
{
  dictionaryCopy = dictionary;
  timestampCopy = timestamp;
  v9 = objc_autoreleasePoolPush();
  v20[0] = SFAnalyticsPostTime;
  v20[1] = @"events";
  v21[0] = timestampCopy;
  v21[1] = dictionaryCopy;
  v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  if ([NSJSONSerialization isValidJSONObject:v10])
  {
    objc_autoreleasePoolPop(v9);
    v11 = 0;
  }

  else
  {
    v12 = sub_1000146E4("SecEmergency");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "json: final dictionary invalid JSON.", buf, 2u);
    }

    v18 = NSLocalizedDescriptionKey;
    v13 = [NSString localizedStringWithFormat:@"Final dictionary for upload is invalid JSON: %@", v10];
    v19 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.security.supd" code:2 userInfo:v14];

    objc_autoreleasePoolPop(v9);
    if (error)
    {
      v15 = v11;
      v10 = 0;
      *error = v11;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)chunkFailureSet:(unint64_t)set events:(id)events error:(id *)error
{
  eventsCopy = events;
  v28 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = eventsCopy;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    errorCopy = error;
    v12 = 0;
    v13 = 0;
    v14 = *v33;
    obj = v9;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v31 = 0;
        v17 = [(SFAnalyticsTopic *)self serializedEventSize:v16 error:&v31];
        v18 = v31;
        if (v18)
        {
          v22 = v18;
          if (errorCopy)
          {
            v23 = v18;
            *errorCopy = v22;
          }

          v24 = sub_1000146E4("SecEmergency");
          v20 = v28;
          v9 = obj;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v22 localizedDescription];
            *buf = 138412290;
            v37 = localizedDescription;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unable to serialize event JSON: %@", buf, 0xCu);

            v9 = obj;
          }

          v21 = 0;
          goto LABEL_22;
        }

        if (v12 > 0x3E7 || v17 + v13 > set)
        {
          if ([v8 count])
          {
            [v28 addObject:v8];
            v19 = +[NSMutableArray array];

            v12 = 0;
            v13 = 0;
            v8 = v19;
          }

          else
          {
            v12 = 0;
            v13 = 0;
          }
        }

        [v8 addObject:v16];
        ++v12;
        v13 += v17;
      }

      v9 = obj;
      v11 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v20 = v28;
  if ([v8 count])
  {
    [v28 addObject:v8];
  }

  v21 = v28;
LABEL_22:

  return v21;
}

- (unint64_t)serializedEventSize:(id)size error:(id *)error
{
  sizeCopy = size;
  v6 = objc_autoreleasePoolPush();
  if ([NSJSONSerialization isValidJSONObject:sizeCopy])
  {
    v15 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:sizeCopy options:0 error:&v15];
    v8 = v15;
    if (v7)
    {
      v9 = [v7 length];

      objc_autoreleasePoolPop(v6);
      goto LABEL_10;
    }

    sizeCopy = sub_1000146E4("serializedEventSize");
    if (os_log_type_enabled(sizeCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, sizeCopy, OS_LOG_TYPE_DEFAULT, "failed to serialize event: %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = sub_1000146E4("serializedEventSize");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "invalid JSON object", buf, 2u);
    }

    v18 = NSLocalizedDescriptionKey;
    sizeCopy = [NSString localizedStringWithFormat:@"Event is not valid JSON: %@", sizeCopy];
    v19 = sizeCopy;
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.security.supd" code:2 userInfo:v12];
  }

  objc_autoreleasePoolPop(v6);
  if (error)
  {
    v13 = v8;
    v9 = 0;
    *error = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (void)updateUploadDateForClients:(id)clients date:(id)date clearData:(BOOL)data
{
  clientsCopy = clients;
  dateCopy = date;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [clientsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(clientsCopy);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000BE94;
        v14[3] = &unk_1000210D8;
        v15 = dateCopy;
        v16 = v13;
        dataCopy = data;
        [v13 withStore:v14];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [clientsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (id)healthSummaryWithName:(id)name store:(id)store uuid:(id)uuid timestamp:(id)timestamp lastUploadTime:(id)time
{
  nameCopy = name;
  storeCopy = store;
  uuidCopy = uuid;
  timestampCopy = timestamp;
  timeCopy = time;
  v47 = nameCopy;
  queue = [nameCopy queue];
  dispatch_assert_queue_V2(queue);

  name = [nameCopy name];
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_100008448;
  v73 = sub_100008458;
  v74 = +[NSMutableDictionary dictionary];
  v13 = [NSString stringWithFormat:@"%@HealthSummary", name];
  v42 = SFAnalyticsEventType;
  [v70[5] setObject:v13 forKeyedSubscript:?];

  if ([(SFAnalyticsTopic *)self eventIsBlacklisted:v70[5]])
  {
    v14 = 0;
  }

  else
  {
    [v70[5] setObject:timestampCopy forKeyedSubscript:SFAnalyticsEventTime];
    [SFAnalytics addOSVersionToEvent:v70[5]];
    if (timeCopy)
    {
      [v70[5] setObject:timeCopy forKeyedSubscript:SFAnalyticsAttributeLastUploadTime];
    }

    summaryCounts = [storeCopy summaryCounts];
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    if ([(SFAnalyticsTopic *)self terseMetrics])
    {
      [v70[5] setObject:&off_100022CD0 forKeyedSubscript:@"T"];
    }

    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10000C834;
    v56[3] = &unk_100021088;
    v56[4] = self;
    v56[5] = &v69;
    v56[6] = &v65;
    v56[7] = &v61;
    v56[8] = &v57;
    [summaryCounts enumerateKeysAndObjectsUsingBlock:v56];
    v15 = [NSNumber numberWithInteger:v66[3]];
    [v70[5] setObject:v15 forKeyedSubscript:SFAnalyticsColumnSuccessCount];

    v16 = [NSNumber numberWithInteger:v62[3]];
    [v70[5] setObject:v16 forKeyedSubscript:SFAnalyticsColumnHardFailureCount];

    v17 = [NSNumber numberWithInteger:v58[3]];
    [v70[5] setObject:v17 forKeyedSubscript:SFAnalyticsColumnSoftFailureCount];

    if (os_variant_has_internal_diagnostics())
    {
      [v70[5] setObject:&__kCFBooleanTrue forKeyedSubscript:@"internal"];
    }

    metricsAccountID = [storeCopy metricsAccountID];
    if (metricsAccountID)
    {
      [v70[5] setObject:metricsAccountID forKeyedSubscript:@"sfaAccountID"];
    }

    v41 = metricsAccountID;
    v19 = +[NSMutableDictionary dictionary];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    samples = [storeCopy samples];
    v21 = [samples countByEnumeratingWithState:&v52 objects:v81 count:16];
    if (v21)
    {
      v22 = *v53;
      v23 = SFAnalyticsColumnSampleName;
      v24 = SFAnalyticsColumnSampleValue;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v53 != v22)
          {
            objc_enumerationMutation(samples);
          }

          v26 = *(*(&v52 + 1) + 8 * i);
          v27 = [v26 objectForKeyedSubscript:v23];
          v28 = [v19 objectForKeyedSubscript:v27];
          v29 = v28 == 0;

          if (v29)
          {
            v30 = +[NSMutableArray array];
            v31 = [v26 objectForKeyedSubscript:v23];
            [v19 setObject:v30 forKeyedSubscript:v31];
          }

          v32 = [v26 objectForKeyedSubscript:v23];
          v33 = [v19 objectForKeyedSubscript:v32];
          v34 = [v26 objectForKeyedSubscript:v24];
          [v33 addObject:v34];
        }

        v21 = [samples countByEnumeratingWithState:&v52 objects:v81 count:16];
      }

      while (v21);
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10000CB7C;
    v51[3] = &unk_1000210B0;
    v51[4] = self;
    v51[5] = &v69;
    [v19 enumerateKeysAndObjectsUsingBlock:v51];
    if ([(SFAnalyticsTopic *)self prepareEventForUpload:v70[5] linkedUUID:uuidCopy])
    {
      if ([NSJSONSerialization isValidJSONObject:v70[5]])
      {
        v14 = v70[5];
      }

      else
      {
        v36 = sub_1000146E4("SecError");
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v70[5];
          *buf = 138412546;
          v78 = name;
          v79 = 2112;
          v80 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "json: health summary for client %@ is invalid JSON: %@", buf, 0x16u);
        }

        v76[0] = SFAnalyticsEventTypeErrorEvent;
        v75[0] = v42;
        v75[1] = SFAnalyticsEventErrorDestription;
        v38 = [NSString stringWithFormat:@"JSON:%@HealthSummary", name];
        v76[1] = v38;
        v39 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];
        v14 = [v39 mutableCopy];
      }
    }

    else
    {
      v35 = sub_1000146E4("SecWarning");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v78 = name;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "supd: health summary for %@ blacklisted", buf, 0xCu);
      }

      v14 = 0;
    }

    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v61, 8);
    _Block_object_dispose(&v65, 8);
  }

  _Block_object_dispose(&v69, 8);

  return v14;
}

- (id)sampleStatisticsForSamples:(id)samples withName:(id)name
{
  samplesCopy = samples;
  nameCopy = name;
  v8 = +[NSMutableDictionary dictionary];
  v9 = [samplesCopy count];
  v10 = [samplesCopy sortedArrayUsingSelector:"compare:"];
  v11 = [NSExpression expressionForConstantValue:v10];
  v68 = v11;
  v12 = [NSArray arrayWithObjects:&v68 count:1];

  if (v9 == 1)
  {
    nameCopy6 = [samplesCopy objectAtIndexedSubscript:0];
    [v8 setObject:nameCopy6 forKeyedSubscript:nameCopy];
LABEL_3:

    goto LABEL_8;
  }

  v14 = [NSExpression expressionForFunction:@"average:" arguments:v12];
  v15 = [v14 expressionValueWithObject:0 context:0];
  nameCopy = [NSString stringWithFormat:@"%@-avg", nameCopy];
  [v8 setObject:v15 forKeyedSubscript:nameCopy];

  if (![(SFAnalyticsTopic *)self terseMetrics])
  {
    v17 = [NSExpression expressionForFunction:@"stddev:" arguments:v12];
    v18 = [v17 expressionValueWithObject:0 context:0];
    nameCopy2 = [NSString stringWithFormat:@"%@-dev", nameCopy];
    [v8 setObject:v18 forKeyedSubscript:nameCopy2];

    v20 = [NSExpression expressionForFunction:@"min:" arguments:v12];
    v21 = [v20 expressionValueWithObject:0 context:0];
    nameCopy3 = [NSString stringWithFormat:@"%@-min", nameCopy];
    [v8 setObject:v21 forKeyedSubscript:nameCopy3];

    v23 = [NSExpression expressionForFunction:@"max:" arguments:v12];
    v24 = [v23 expressionValueWithObject:0 context:0];
    nameCopy4 = [NSString stringWithFormat:@"%@-max", nameCopy];
    [v8 setObject:v24 forKeyedSubscript:nameCopy4];

    v26 = [NSExpression expressionForFunction:@"median:" arguments:v12];
    v27 = [v26 expressionValueWithObject:0 context:0];
    nameCopy5 = [NSString stringWithFormat:@"%@-med", nameCopy];
    [v8 setObject:v27 forKeyedSubscript:nameCopy5];
  }

  if (v9 >= 4 && ![(SFAnalyticsTopic *)self terseMetrics])
  {
    nameCopy6 = [NSString stringWithFormat:@"%@-1q", nameCopy];
    nameCopy7 = [NSString stringWithFormat:@"%@-3q", nameCopy];
    if (v9)
    {
      if ((v9 & 3) == 3)
      {
        v63 = [v10 objectAtIndexedSubscript:v9 >> 2];
        [v63 doubleValue];
        v51 = v50;
        v52 = [v10 objectAtIndexedSubscript:(v9 >> 2) + 1];
        [v52 doubleValue];
        v43 = 0.25;
        [NSNumber numberWithDouble:(v53 + v51 * 3.0) * 0.25];
        v54 = v65 = nameCopy7;
        [v8 setObject:v54 forKeyedSubscript:nameCopy6];

        v55 = 3 * (v9 >> 2);
        v61 = [v10 objectAtIndexedSubscript:v55 + 1];
        [v61 doubleValue];
        v57 = v56;
        v35 = [v10 objectAtIndexedSubscript:v55 + 2];
        [v35 doubleValue];
        v49 = v57 + v58 * 3.0;
      }

      else
      {
        if ((v9 & 3) != 1)
        {
LABEL_19:

          goto LABEL_3;
        }

        v62 = [v10 objectAtIndexedSubscript:(v9 >> 2) - 1];
        [v62 doubleValue];
        v40 = v39;
        v41 = [v10 objectAtIndexedSubscript:v9 >> 2];
        [v41 doubleValue];
        v43 = 0.25;
        [NSNumber numberWithDouble:(v40 + v42 * 3.0) * 0.25];
        v44 = v65 = nameCopy7;
        [v8 setObject:v44 forKeyedSubscript:nameCopy6];

        v45 = 3 * (v9 >> 2);
        v61 = [v10 objectAtIndexedSubscript:v45];
        [v61 doubleValue];
        v47 = v46;
        v35 = [v10 objectAtIndexedSubscript:v45 + 1];
        [v35 doubleValue];
        v49 = v48 + v47 * 3.0;
      }

      nameCopy7 = v65;
      v36 = [NSNumber numberWithDouble:v49 * v43];
      [v8 setObject:v36 forKeyedSubscript:v65];
    }

    else
    {
      v31 = v9 >> 1;
      v60 = [v10 subarrayWithRange:{0, v31}];
      v59 = [NSExpression expressionForConstantValue:v60];
      v67 = v59;
      v32 = [NSArray arrayWithObjects:&v67 count:1];
      v33 = [NSExpression expressionForFunction:@"median:" arguments:v32];
      [v33 expressionValueWithObject:0 context:0];
      v34 = v64 = nameCopy7;
      [v8 setObject:v34 forKeyedSubscript:nameCopy6];

      v61 = [v10 subarrayWithRange:{v31, v31}];
      v35 = [NSExpression expressionForConstantValue:?];
      v66 = v35;
      v36 = [NSArray arrayWithObjects:&v66 count:1];
      v37 = [NSExpression expressionForFunction:@"median:" arguments:v36];
      v38 = [v37 expressionValueWithObject:0 context:0];
      [v8 setObject:v38 forKeyedSubscript:v64];

      nameCopy7 = v64;
    }

    goto LABEL_19;
  }

LABEL_8:

  return v8;
}

- (void)addFailures:(id)failures toUploadRecords:(id)records threshold:(unint64_t)threshold linkedUUID:(id)d
{
  failuresCopy = failures;
  recordsCopy = records;
  dCopy = d;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = [failuresCopy countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(failuresCopy);
        }

        v15 = *(*(&v51 + 1) + 8 * i);
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10000D700;
        v47[3] = &unk_100021038;
        thresholdCopy = threshold;
        v47[4] = self;
        v48 = dCopy;
        v49 = recordsCopy;
        [v15 enumerateObjectsUsingBlock:v47];
      }

      v12 = [failuresCopy countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v12);
  }

  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v43 = 0u;
  v16 = failuresCopy;
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v44;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v44 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = [*(*(&v43 + 1) + 8 * j) count];
        v19 += (v22 - threshold) & ~((v22 - threshold) >> 63);
      }

      v18 = [v16 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v23 = [recordsCopy count];
  maxEventsToReport = self->_maxEventsToReport;
  if (v23 < maxEventsToReport && v19 >= 1)
  {
    v25 = [recordsCopy count];
    v39 = 0u;
    v40 = 0u;
    if ((maxEventsToReport - v25) / v19 <= 1.0)
    {
      v26 = (maxEventsToReport - v25) / v19;
    }

    else
    {
      v26 = 1.0;
    }

    v41 = 0uLL;
    v42 = 0uLL;
    v27 = v16;
    v28 = [v27 countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v40;
      do
      {
        for (k = 0; k != v29; k = k + 1)
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v39 + 1) + 8 * k);
          if ([v32 count] > threshold)
          {
            v33 = [v32 subarrayWithRange:{threshold, (v26 * (objc_msgSend(v32, "count") - threshold))}];
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_10000D8D0;
            v36[3] = &unk_100021060;
            v36[4] = self;
            v37 = dCopy;
            v38 = recordsCopy;
            [v33 enumerateObjectsUsingBlock:v36];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v29);
    }
  }
}

- (BOOL)prepareEventForUpload:(id)upload linkedUUID:(id)d
{
  uploadCopy = upload;
  dCopy = d;
  v8 = [(SFAnalyticsTopic *)self eventIsBlacklisted:uploadCopy];
  if ((v8 & 1) == 0)
  {
    [(SFAnalyticsTopic *)self removeBlacklistedFieldsFromEvent:uploadCopy];
    [(SFAnalyticsTopic *)self addRequiredFieldsToEvent:uploadCopy];
    if (self->_disableClientId)
    {
      [uploadCopy setObject:&off_100022CB8 forKeyedSubscript:@"clientId"];
    }

    splunkTopicName = self->_splunkTopicName;
    if (!splunkTopicName)
    {
      v12 = +[NSNull null];
      [uploadCopy setObject:v12 forKeyedSubscript:@"topic"];

      if (!dCopy)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    [uploadCopy setObject:splunkTopicName forKeyedSubscript:@"topic"];
    if (dCopy)
    {
LABEL_6:
      uUIDString = [dCopy UUIDString];
      [uploadCopy setObject:uUIDString forKeyedSubscript:@"eventLinkID"];
    }
  }

LABEL_7:

  return v8 ^ 1;
}

- (id)applyFilterLogic:(id)logic linkedID:(id)d
{
  logicCopy = logic;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  v9 = [NSJSONSerialization JSONObjectWithData:logicCopy options:1 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [(SFAnalyticsTopic *)self eventIsBlacklisted:v9])
  {
    v10 = 0;
    goto LABEL_10;
  }

  [(SFAnalyticsTopic *)self removeBlacklistedFieldsFromEvent:v9];
  [(SFAnalyticsTopic *)self addRequiredFieldsToEvent:v9];
  if (self->_disableClientId)
  {
    [v9 setObject:&off_100022CB8 forKeyedSubscript:@"clientId"];
  }

  splunkTopicName = self->_splunkTopicName;
  if (!splunkTopicName)
  {
    v13 = +[NSNull null];
    [v9 setObject:v13 forKeyedSubscript:@"topic"];

    if (!dCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [v9 setObject:splunkTopicName forKeyedSubscript:@"topic"];
  if (dCopy)
  {
LABEL_8:
    [v9 setObject:dCopy forKeyedSubscript:@"eventLinkID"];
  }

LABEL_9:
  v10 = [NSJSONSerialization dataWithJSONObject:v9 options:0 error:0];
LABEL_10:

  objc_autoreleasePoolPop(v8);

  return v10;
}

- (void)addRequiredFieldsToEvent:(id)event
{
  eventCopy = event;
  metricsBase = self->_metricsBase;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DC5C;
  v7[3] = &unk_100021010;
  v8 = eventCopy;
  v6 = eventCopy;
  [(NSDictionary *)metricsBase enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)removeBlacklistedFieldsFromEvent:(id)event
{
  eventCopy = event;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_blacklistedFields;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [eventCopy removeObjectForKey:{*(*(&v10 + 1) + 8 * v9), v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)eventIsBlacklisted:(id)blacklisted
{
  blacklistedEvents = self->_blacklistedEvents;
  if (!blacklistedEvents)
  {
    return 0;
  }

  v4 = [blacklisted objectForKeyedSubscript:SFAnalyticsEventType];
  v5 = [(NSArray *)blacklistedEvents containsObject:v4];

  return v5;
}

- (BOOL)postJSONFile:(id)file toEndpoint:(id)endpoint eventLinkId:(id)id postSession:(id)session error:(id *)error
{
  fileCopy = file;
  endpointCopy = endpoint;
  idCopy = id;
  sessionCopy = session;
  if (endpointCopy)
  {
    v16 = objc_alloc_init(NSMutableURLRequest);
    [v16 setURL:endpointCopy];
    [v16 setHTTPMethod:@"POST"];
    v17 = [NSData dataWithContentsOfURL:fileCopy];
    supd_gzipDeflate = [v17 supd_gzipDeflate];
    [v16 setHTTPBody:supd_gzipDeflate];

    [v16 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
    v19 = dispatch_semaphore_create(0);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000E190;
    v27[3] = &unk_100020FE8;
    v27[4] = self;
    v31 = &v32;
    v28 = idCopy;
    v29 = endpointCopy;
    v20 = v19;
    v30 = v20;
    v21 = [sessionCopy dataTaskWithRequest:v16 completionHandler:v27];
    v22 = sub_1000146E4("upload");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      internalTopicName = self->_internalTopicName;
      *buf = 138412290;
      v37 = internalTopicName;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Splunk upload start for %@", buf, 0xCu);
    }

    [v21 resume];
    v24 = dispatch_time(0, 300000000000);
    dispatch_semaphore_wait(v20, v24);
    v25 = *(v33 + 24);

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    if (!error)
    {
      v25 = 0;
      goto LABEL_8;
    }

    v16 = [NSString stringWithFormat:@"No endpoint for %@", self->_internalTopicName];
    v38 = NSLocalizedDescriptionKey;
    v39 = v16;
    v20 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    [NSError errorWithDomain:@"SupdUploadErrorDomain" code:-10 userInfo:v20];
    *error = v25 = 0;
  }

LABEL_8:
  return v25 & 1;
}

- (id)getSession
{
  v3 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v4 = [NSString stringWithFormat:@"securityd/%s", "61901.40.77", @"User-Agent"];
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v3 setHTTPAdditionalHeaders:v5];

  v6 = [NSURLSession sessionWithConfiguration:v3 delegate:self delegateQueue:0];

  return v6;
}

- (BOOL)isSampledUpload
{
  v3 = arc4random();
  devicePercentage = self->_devicePercentage;
  if (devicePercentage >= 0.0000000232830644)
  {
    if (devicePercentage / 100.0 * 4294967300.0 < v3)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  return 1;
}

- (SFAnalyticsTopic)initWithDictionary:(id)dictionary name:(id)name samplingRates:(id)rates
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  ratesCopy = rates;
  v53.receiver = self;
  v53.super_class = SFAnalyticsTopic;
  v11 = [(SFAnalyticsTopic *)&v53 init];
  v12 = v11;
  if (v11)
  {
    v11->_terseMetrics = 0;
    objc_storeStrong(&v11->_internalTopicName, name);
    v51 = nameCopy;
    [(SFAnalyticsTopic *)v12 setupClientsForTopic:nameCopy];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"splunk_topic"];
    splunkTopicName = v12->_splunkTopicName;
    v12->_splunkTopicName = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"splunk_uploadURL"];
    v16 = [NSURL URLWithString:v15];
    splunkUploadURL = v12->__splunkUploadURL;
    v12->__splunkUploadURL = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"splunk_bagURL"];
    v19 = [NSURL URLWithString:v18];
    splunkBagURL = v12->_splunkBagURL;
    v12->_splunkBagURL = v19;

    v21 = [dictionaryCopy valueForKey:@"splunk_allowInsecureCertificate"];
    v12->_allowInsecureSplunkCert = [v21 BOOLValue];

    v22 = [dictionaryCopy valueForKey:@"uploadSizeLimit"];
    v12->_uploadSizeLimit = [v22 unsignedIntegerValue];

    v52 = [dictionaryCopy objectForKeyedSubscript:@"splunk_endpointDomain"];
    v23 = [dictionaryCopy objectForKeyedSubscript:@"disableClientId"];

    if (v23)
    {
      v12->_disableClientId = 1;
    }

    v24 = [NSUserDefaults alloc];
    v25 = [v24 initWithSuiteName:SFAnalyticsUserDefaultsSuite];
    v26 = [v25 stringForKey:@"splunk_topic"];
    if (v26)
    {
      objc_storeStrong(&v12->_splunkTopicName, v26);
    }

    v50 = v26;
    v27 = [v25 stringForKey:@"splunk_uploadURL"];
    v28 = [NSURL URLWithString:v27];

    if (v28)
    {
      objc_storeStrong(&v12->__splunkUploadURL, v28);
    }

    v29 = [v25 stringForKey:@"splunk_bagURL"];
    v30 = [NSURL URLWithString:v29];

    if (v30)
    {
      objc_storeStrong(&v12->_splunkBagURL, v30);
    }

    v31 = [v25 integerForKey:@"uploadSizeLimit"];
    if (v31 >= 1)
    {
      v12->_uploadSizeLimit = v31;
    }

    v12->_allowInsecureSplunkCert |= [v25 BOOLForKey:@"splunk_allowInsecureCertificate"];
    v32 = [v25 stringForKey:@"splunk_endpointDomain"];
    v33 = v32;
    if (v32)
    {
      v34 = v32;

      v52 = v34;
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (ratesCopy)
    {
      if (has_internal_diagnostics)
      {
        v36 = @"SecondsBetweenUploadsInternal";
      }

      else
      {
        v36 = @"SecondsBetweenUploadsCustomer";
      }

      if (has_internal_diagnostics)
      {
        v37 = @"DevicePercentageInternal";
      }

      else
      {
        v37 = @"DevicePercentageCustomer";
      }

      v38 = [ratesCopy objectForKeyedSubscript:v36];
      v39 = [ratesCopy objectForKeyedSubscript:v37];
      v12->_secondsBetweenUploads = [v38 integerValue];
      v40 = [ratesCopy objectForKeyedSubscript:@"NumberOfEvents"];
      v12->_maxEventsToReport = [v40 unsignedIntegerValue];

      [v39 floatValue];
      v12->_devicePercentage = v41;
    }

    else
    {
      v42 = 259200;
      if (has_internal_diagnostics)
      {
        v42 = 86400;
      }

      v43 = SFAnalyticsMaxEventsToReport;
      v12->_secondsBetweenUploads = v42;
      v12->_maxEventsToReport = v43;
      v12->_devicePercentage = 100.0;
    }

    v44 = sub_1000146E4("supd");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      internalTopicName = v12->_internalTopicName;
      secondsBetweenUploads = v12->_secondsBetweenUploads;
      maxEventsToReport = v12->_maxEventsToReport;
      devicePercentage = v12->_devicePercentage;
      *buf = 138413058;
      v55 = internalTopicName;
      v56 = 2048;
      v57 = secondsBetweenUploads;
      v58 = 2048;
      v59 = maxEventsToReport;
      v60 = 2048;
      v61 = devicePercentage;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "created %@ with %lu seconds between uploads, %lu max events, %f percent of uploads", buf, 0x2Au);
    }

    nameCopy = v51;
  }

  return v12;
}

- (void)setupClientsForTopic:(id)topic
{
  topicCopy = topic;
  v4 = objc_opt_new();
  if ([topicCopy isEqualToString:SFAnalyticsTopicKeySync])
  {
    databasePathForCKKS = [objc_opt_class() databasePathForCKKS];
    v6 = [SFAnalyticsClient getSharedClientNamed:@"ckks" orCreateWithStorePath:databasePathForCKKS requireDeviceAnalytics:0 requireiCloudAnalytics:1];
    [(NSArray *)v4 addObject:v6];

    databasePathForSOS = [objc_opt_class() databasePathForSOS];
    v8 = [SFAnalyticsClient getSharedClientNamed:@"sos" orCreateWithStorePath:databasePathForSOS requireDeviceAnalytics:0 requireiCloudAnalytics:1];
    [(NSArray *)v4 addObject:v8];

    databasePathForPCS = [objc_opt_class() databasePathForPCS];
    v10 = [SFAnalyticsClient getSharedClientNamed:@"pcs" orCreateWithStorePath:databasePathForPCS requireDeviceAnalytics:0 requireiCloudAnalytics:1];
    [(NSArray *)v4 addObject:v10];

    databasePathForLocal = [objc_opt_class() databasePathForLocal];
    v12 = @"local";
LABEL_9:
    v13 = databasePathForLocal;
    v14 = 1;
    v15 = 0;
LABEL_10:
    v16 = [SFAnalyticsClient getSharedClientNamed:v12 orCreateWithStorePath:v13 requireDeviceAnalytics:v14 requireiCloudAnalytics:v15];
    [(NSArray *)v4 addObject:v16];

    goto LABEL_11;
  }

  if ([topicCopy isEqualToString:SFAnalyticsTopicCloudServices])
  {
    databasePathForLocal = [objc_opt_class() databasePathForCloudServices];
    v12 = @"CloudServices";
    goto LABEL_9;
  }

  if ([topicCopy isEqualToString:SFAnalyticsTopicTrust])
  {
    databasePathForLocal = [objc_opt_class() databasePathForTrust];
    v12 = @"trust";
    goto LABEL_9;
  }

  if ([topicCopy isEqualToString:SFAnalyticsTopicNetworking])
  {
    databasePathForLocal = [objc_opt_class() databasePathForNetworking];
    v12 = @"networking";
    goto LABEL_9;
  }

  if ([topicCopy isEqualToString:SFAnalyticsTopicTransparency])
  {
    [(SFAnalyticsTopic *)self setTerseMetrics:1];
    databasePathForLocal = [objc_opt_class() databasePathForTransparency];
    v12 = @"transparency";
    v13 = databasePathForLocal;
    v14 = 0;
    v15 = 1;
    goto LABEL_10;
  }

  if ([topicCopy isEqualToString:SFAnalyticsTopicSWTransparency])
  {
    [(SFAnalyticsTopic *)self setTerseMetrics:1];
    databasePathForLocal = [objc_opt_class() databasePathForSWTransparency];
    v12 = @"swtransparency";
    goto LABEL_9;
  }

LABEL_11:
  topicClients = self->_topicClients;
  self->_topicClients = v4;
}

+ (id)databasePathForSWTransparency
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/SWTransparencyAnalytics.db");
  path = [(__CFURL *)v2 path];

  return path;
}

+ (id)databasePathForTransparency
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/TransparencyAnalytics.db");
  path = [(__CFURL *)v2 path];

  return path;
}

+ (id)databasePathForCloudServices
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/CloudServicesAnalytics.db");
  path = [(__CFURL *)v2 path];

  return path;
}

+ (id)databasePathForNetworking
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/networking_analytics.db");
  path = [(__CFURL *)v2 path];

  return path;
}

+ (id)databasePathForTrust
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/trust_analytics.db");
  path = [(__CFURL *)v2 path];

  return path;
}

+ (id)databasePathForLocal
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/localkeychain.db");
  path = [(__CFURL *)v2 path];

  return path;
}

+ (id)databasePathForPCS
{
  appSupportPath = [self AppSupportPath];
  if (appSupportPath)
  {
    v3 = [NSString stringWithFormat:@"%@/com.apple.ProtectedCloudStorage/PCSAnalytics.db", appSupportPath];
    v4 = sub_1000146E4("supd");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PCS Database path (%@)", buf, 0xCu);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)databasePathForSOS
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/sos_analytics.db");
  path = [(__CFURL *)v2 path];

  return path;
}

+ (id)databasePathForCKKS
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/ckks_analytics.db");
  path = [(__CFURL *)v2 path];

  return path;
}

@end