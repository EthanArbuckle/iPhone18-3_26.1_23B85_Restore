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
- (BOOL)ckDeviceAccountApprovedTopic:(id)a3;
- (BOOL)copyEvents:(id)a3 failures:(id)a4 forUpload:(BOOL)a5 participatingClients:(id)a6 force:(BOOL)a7 linkedUUID:(id)a8 error:(id *)a9;
- (BOOL)eventIsBlacklisted:(id)a3;
- (BOOL)haveEligibleClients;
- (BOOL)isSampledUpload;
- (BOOL)postJSONFile:(id)a3 toEndpoint:(id)a4 eventLinkId:(id)a5 postSession:(id)a6 error:(id *)a7;
- (BOOL)prepareEventForUpload:(id)a3 linkedUUID:(id)a4;
- (SFAnalyticsTopic)initWithDictionary:(id)a3 name:(id)a4 samplingRates:(id)a5;
- (id)appleInternalStatus;
- (id)appleUser;
- (id)applyFilterLogic:(id)a3 linkedID:(id)a4;
- (id)askSecurityForCKDeviceID;
- (id)carryStatus;
- (id)chunkFailureSet:(unint64_t)a3 events:(id)a4 error:(id *)a5;
- (id)createChunkedLoggingJSON:(id)a3 failures:(id)a4 error:(id *)a5;
- (id)createEventDictionary:(id)a3 timestamp:(id)a4 error:(id *)a5;
- (id)dataAnalyticsSetting:(id)a3;
- (id)eventDictWithBlacklistedFieldsStrippedFrom:(id)a3;
- (id)getSession;
- (id)healthSummaryWithName:(id)a3 store:(id)a4 uuid:(id)a5 timestamp:(id)a6 lastUploadTime:(id)a7;
- (id)sampleStatisticsForSamples:(id)a3 withName:(id)a4;
- (id)splunkUploadURL:(BOOL)a3 urlSession:(id)a4;
- (unint64_t)serializedEventSize:(id)a3 error:(id *)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)addFailures:(id)a3 toUploadRecords:(id)a4 threshold:(unint64_t)a5 linkedUUID:(id)a6;
- (void)addRequiredFieldsToEvent:(id)a3;
- (void)removeBlacklistedFieldsFromEvent:(id)a3;
- (void)setupClientsForTopic:(id)a3;
- (void)updateUploadDateForClients:(id)a3 date:(id)a4 clearData:(BOOL)a5;
@end

@implementation SFAnalyticsTopic

- (id)eventDictWithBlacklistedFieldsStrippedFrom:(id)a3
{
  v4 = [a3 mutableCopy];
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

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
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

  if ([v9 previousFailureCount] >= 1)
  {
    goto LABEL_8;
  }

  v14 = [v9 protectionSpace];
  v15 = [v14 authenticationMethod];
  v16 = [v15 isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (!v16)
  {
    v10[2](v10, 1, 0);
    goto LABEL_18;
  }

  v17 = [v9 protectionSpace];
  v18 = [v17 serverTrust];

  v19 = SecTrustEvaluateWithError(v18, 0);
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

    v22 = [NSURLCredential credentialForTrust:v18];
    (v10)[2](v10, 0, v22);
  }

  else
  {
LABEL_8:
    v10[2](v10, 2, 0);
  }

LABEL_18:
}

- (id)splunkUploadURL:(BOOL)a3 urlSession:(id)a4
{
  v6 = a4;
  if (a3 || [(SFAnalyticsTopic *)self haveEligibleClients])
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
        v10 = [(SFAnalyticsTopic *)self internalTopicName];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
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
      v15 = [v6 dataTaskWithURL:v14 completionHandler:v20];
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
      v18 = [(SFAnalyticsTopic *)self internalTopicName];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
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
          v11 = [v9 allKeys];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v9;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [v9 componentsSeparatedByString:{@", "}];
            }

            else
            {
              v11 = 0;
            }
          }
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = v11;
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
  v2 = [(SFAnalyticsTopic *)self topicClients];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
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
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)copyEvents:(id)a3 failures:(id)a4 forUpload:(BOOL)a5 participatingClients:(id)a6 force:(BOOL)a7 linkedUUID:(id)a8 error:(id *)a9
{
  v12 = a5;
  v33 = a3;
  v29 = a4;
  v28 = a6;
  v37 = a8;
  v38 = +[NSMutableArray array];
  v36 = +[NSMutableArray array];
  v35 = +[NSMutableArray array];
  v34 = +[NSMutableArray array];
  v32 = [(SFAnalyticsTopic *)self appleInternalStatus];
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
        v48 = a7;
        v49 = v12;
        v39[4] = v21;
        v39[5] = self;
        v40 = v38;
        v41 = v37;
        v42 = v31;
        v43 = v32;
        v44 = v33;
        v45 = v36;
        v46 = v35;
        v47 = v34;
        [v21 withStore:v39];
      }

      v18 = [(NSArray *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v18);
  }

  if (v12 && ![v38 count])
  {
    if (!a9)
    {
      v25 = 0;
      v22 = v28;
      v24 = v29;
      goto LABEL_12;
    }

    v23 = [NSString stringWithFormat:@"Upload too recent for all clients for %@", self->_internalTopicName];
    v54 = NSLocalizedDescriptionKey;
    v55 = v23;
    v27 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    *a9 = [NSError errorWithDomain:@"SupdUploadErrorDomain" code:-10 userInfo:v27];

    v25 = 0;
    v22 = v28;
    v24 = v29;
  }

  else
  {
    v22 = v28;
    [v28 addObjectsFromArray:v38];
    v23 = +[NSMutableArray array];
    [(SFAnalyticsTopic *)self addFailures:v36 toUploadRecords:v23 threshold:self->_maxEventsToReport / 0xA linkedUUID:v37];
    [(SFAnalyticsTopic *)self addFailures:v35 toUploadRecords:v23 threshold:self->_maxEventsToReport / 0xA linkedUUID:v37];
    [(SFAnalyticsTopic *)self addFailures:v34 toUploadRecords:v23 threshold:0 linkedUUID:v37];
    v24 = v29;
    [v29 addObjectsFromArray:v23];
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
    v4 = [(SFAnalyticsTopic *)self askSecurityForCKDeviceID];
    [v3 setObject:v4 forKeyedSubscript:@"ckdeviceID"];

    v5 = sub_100009F24();
    [v3 setObject:v5 forKeyedSubscript:@"altDSID"];

    v6 = [(SFAnalyticsTopic *)self carryStatus];
    if (v6)
    {
      [v3 addEntriesFromDictionary:v6];
    }

    v7 = [(SFAnalyticsTopic *)self appleUser];
    if (v7)
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
    v6 = sub_1000146E4("getLoggingJSON");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "no deviceID for internal user", v11, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)ckDeviceAccountApprovedTopic:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1000262D8 != -1)
    {
      dispatch_once(&qword_1000262D8, &stru_1000210F8);
    }

    v4 = [qword_1000262E0 containsObject:v3];
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

- (id)dataAnalyticsSetting:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
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

- (id)createChunkedLoggingJSON:(id)a3 failures:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[NSMutableArray array];
  v11 = +[NSDate date];
  [v11 timeIntervalSince1970];
  v13 = [NSNumber numberWithDouble:v12 * 1000.0];

  v28 = v8;
  v14 = [(SFAnalyticsTopic *)self chunkFailureSet:[(SFAnalyticsTopic *)self uploadSizeLimit] events:v8 error:a5];
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

        v19 = [(SFAnalyticsTopic *)self createEventDictionary:*(*(&v33 + 1) + 8 * i) timestamp:v13 error:a5];
        if (v19)
        {
          [v10 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v16);
  }

  v20 = [(SFAnalyticsTopic *)self chunkFailureSet:[(SFAnalyticsTopic *)self uploadSizeLimit] events:v9 error:a5];

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

        v26 = [(SFAnalyticsTopic *)self createEventDictionary:*(*(&v29 + 1) + 8 * j) timestamp:v13 error:a5];
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

- (id)createEventDictionary:(id)a3 timestamp:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v20[0] = SFAnalyticsPostTime;
  v20[1] = @"events";
  v21[0] = v8;
  v21[1] = v7;
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
    if (a5)
    {
      v15 = v11;
      v10 = 0;
      *a5 = v11;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)chunkFailureSet:(unint64_t)a3 events:(id)a4 error:(id *)a5
{
  v7 = a4;
  v28 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v27 = a5;
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
          if (v27)
          {
            v23 = v18;
            *v27 = v22;
          }

          v24 = sub_1000146E4("SecEmergency");
          v20 = v28;
          v9 = obj;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v26 = [v22 localizedDescription];
            *buf = 138412290;
            v37 = v26;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unable to serialize event JSON: %@", buf, 0xCu);

            v9 = obj;
          }

          v21 = 0;
          goto LABEL_22;
        }

        if (v12 > 0x3E7 || v17 + v13 > a3)
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

- (unint64_t)serializedEventSize:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if ([NSJSONSerialization isValidJSONObject:v5])
  {
    v15 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:&v15];
    v8 = v15;
    if (v7)
    {
      v9 = [v7 length];

      objc_autoreleasePoolPop(v6);
      goto LABEL_10;
    }

    v11 = sub_1000146E4("serializedEventSize");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "failed to serialize event: %@", buf, 0xCu);
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
    v11 = [NSString localizedStringWithFormat:@"Event is not valid JSON: %@", v5];
    v19 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.security.supd" code:2 userInfo:v12];
  }

  objc_autoreleasePoolPop(v6);
  if (a4)
  {
    v13 = v8;
    v9 = 0;
    *a4 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (void)updateUploadDateForClients:(id)a3 date:(id)a4 clearData:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000BE94;
        v14[3] = &unk_1000210D8;
        v15 = v8;
        v16 = v13;
        v17 = a5;
        [v13 withStore:v14];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (id)healthSummaryWithName:(id)a3 store:(id)a4 uuid:(id)a5 timestamp:(id)a6 lastUploadTime:(id)a7
{
  v11 = a3;
  v49 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = v11;
  v12 = [v11 queue];
  dispatch_assert_queue_V2(v12);

  v48 = [v11 name];
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_100008448;
  v73 = sub_100008458;
  v74 = +[NSMutableDictionary dictionary];
  v13 = [NSString stringWithFormat:@"%@HealthSummary", v48];
  v42 = SFAnalyticsEventType;
  [v70[5] setObject:v13 forKeyedSubscript:?];

  if ([(SFAnalyticsTopic *)self eventIsBlacklisted:v70[5]])
  {
    v14 = 0;
  }

  else
  {
    [v70[5] setObject:v45 forKeyedSubscript:SFAnalyticsEventTime];
    [SFAnalytics addOSVersionToEvent:v70[5]];
    if (v46)
    {
      [v70[5] setObject:v46 forKeyedSubscript:SFAnalyticsAttributeLastUploadTime];
    }

    v43 = [v49 summaryCounts];
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
    [v43 enumerateKeysAndObjectsUsingBlock:v56];
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

    v18 = [v49 metricsAccountID];
    if (v18)
    {
      [v70[5] setObject:v18 forKeyedSubscript:@"sfaAccountID"];
    }

    v41 = v18;
    v19 = +[NSMutableDictionary dictionary];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v20 = [v49 samples];
    v21 = [v20 countByEnumeratingWithState:&v52 objects:v81 count:16];
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
            objc_enumerationMutation(v20);
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

        v21 = [v20 countByEnumeratingWithState:&v52 objects:v81 count:16];
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
    if ([(SFAnalyticsTopic *)self prepareEventForUpload:v70[5] linkedUUID:v44])
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
          v78 = v48;
          v79 = 2112;
          v80 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "json: health summary for client %@ is invalid JSON: %@", buf, 0x16u);
        }

        v76[0] = SFAnalyticsEventTypeErrorEvent;
        v75[0] = v42;
        v75[1] = SFAnalyticsEventErrorDestription;
        v38 = [NSString stringWithFormat:@"JSON:%@HealthSummary", v48];
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
        v78 = v48;
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

- (id)sampleStatisticsForSamples:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableDictionary dictionary];
  v9 = [v6 count];
  v10 = [v6 sortedArrayUsingSelector:"compare:"];
  v11 = [NSExpression expressionForConstantValue:v10];
  v68 = v11;
  v12 = [NSArray arrayWithObjects:&v68 count:1];

  if (v9 == 1)
  {
    v13 = [v6 objectAtIndexedSubscript:0];
    [v8 setObject:v13 forKeyedSubscript:v7];
LABEL_3:

    goto LABEL_8;
  }

  v14 = [NSExpression expressionForFunction:@"average:" arguments:v12];
  v15 = [v14 expressionValueWithObject:0 context:0];
  v16 = [NSString stringWithFormat:@"%@-avg", v7];
  [v8 setObject:v15 forKeyedSubscript:v16];

  if (![(SFAnalyticsTopic *)self terseMetrics])
  {
    v17 = [NSExpression expressionForFunction:@"stddev:" arguments:v12];
    v18 = [v17 expressionValueWithObject:0 context:0];
    v19 = [NSString stringWithFormat:@"%@-dev", v7];
    [v8 setObject:v18 forKeyedSubscript:v19];

    v20 = [NSExpression expressionForFunction:@"min:" arguments:v12];
    v21 = [v20 expressionValueWithObject:0 context:0];
    v22 = [NSString stringWithFormat:@"%@-min", v7];
    [v8 setObject:v21 forKeyedSubscript:v22];

    v23 = [NSExpression expressionForFunction:@"max:" arguments:v12];
    v24 = [v23 expressionValueWithObject:0 context:0];
    v25 = [NSString stringWithFormat:@"%@-max", v7];
    [v8 setObject:v24 forKeyedSubscript:v25];

    v26 = [NSExpression expressionForFunction:@"median:" arguments:v12];
    v27 = [v26 expressionValueWithObject:0 context:0];
    v28 = [NSString stringWithFormat:@"%@-med", v7];
    [v8 setObject:v27 forKeyedSubscript:v28];
  }

  if (v9 >= 4 && ![(SFAnalyticsTopic *)self terseMetrics])
  {
    v13 = [NSString stringWithFormat:@"%@-1q", v7];
    v30 = [NSString stringWithFormat:@"%@-3q", v7];
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
        v54 = v65 = v30;
        [v8 setObject:v54 forKeyedSubscript:v13];

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
        v44 = v65 = v30;
        [v8 setObject:v44 forKeyedSubscript:v13];

        v45 = 3 * (v9 >> 2);
        v61 = [v10 objectAtIndexedSubscript:v45];
        [v61 doubleValue];
        v47 = v46;
        v35 = [v10 objectAtIndexedSubscript:v45 + 1];
        [v35 doubleValue];
        v49 = v48 + v47 * 3.0;
      }

      v30 = v65;
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
      v34 = v64 = v30;
      [v8 setObject:v34 forKeyedSubscript:v13];

      v61 = [v10 subarrayWithRange:{v31, v31}];
      v35 = [NSExpression expressionForConstantValue:?];
      v66 = v35;
      v36 = [NSArray arrayWithObjects:&v66 count:1];
      v37 = [NSExpression expressionForFunction:@"median:" arguments:v36];
      v38 = [v37 expressionValueWithObject:0 context:0];
      [v8 setObject:v38 forKeyedSubscript:v64];

      v30 = v64;
    }

    goto LABEL_19;
  }

LABEL_8:

  return v8;
}

- (void)addFailures:(id)a3 toUploadRecords:(id)a4 threshold:(unint64_t)a5 linkedUUID:(id)a6
{
  v9 = a3;
  v35 = a4;
  v10 = a6;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v51 objects:v57 count:16];
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
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v51 + 1) + 8 * i);
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10000D700;
        v47[3] = &unk_100021038;
        v50 = a5;
        v47[4] = self;
        v48 = v10;
        v49 = v35;
        [v15 enumerateObjectsUsingBlock:v47];
      }

      v12 = [v9 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v12);
  }

  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v43 = 0u;
  v16 = v9;
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
        v19 += (v22 - a5) & ~((v22 - a5) >> 63);
      }

      v18 = [v16 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v23 = [v35 count];
  maxEventsToReport = self->_maxEventsToReport;
  if (v23 < maxEventsToReport && v19 >= 1)
  {
    v25 = [v35 count];
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
          if ([v32 count] > a5)
          {
            v33 = [v32 subarrayWithRange:{a5, (v26 * (objc_msgSend(v32, "count") - a5))}];
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_10000D8D0;
            v36[3] = &unk_100021060;
            v36[4] = self;
            v37 = v10;
            v38 = v35;
            [v33 enumerateObjectsUsingBlock:v36];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v39 objects:v55 count:16];
      }

      while (v29);
    }
  }
}

- (BOOL)prepareEventForUpload:(id)a3 linkedUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SFAnalyticsTopic *)self eventIsBlacklisted:v6];
  if ((v8 & 1) == 0)
  {
    [(SFAnalyticsTopic *)self removeBlacklistedFieldsFromEvent:v6];
    [(SFAnalyticsTopic *)self addRequiredFieldsToEvent:v6];
    if (self->_disableClientId)
    {
      [v6 setObject:&off_100022CB8 forKeyedSubscript:@"clientId"];
    }

    splunkTopicName = self->_splunkTopicName;
    if (!splunkTopicName)
    {
      v12 = +[NSNull null];
      [v6 setObject:v12 forKeyedSubscript:@"topic"];

      if (!v7)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    [v6 setObject:splunkTopicName forKeyedSubscript:@"topic"];
    if (v7)
    {
LABEL_6:
      v10 = [v7 UUIDString];
      [v6 setObject:v10 forKeyedSubscript:@"eventLinkID"];
    }
  }

LABEL_7:

  return v8 ^ 1;
}

- (id)applyFilterLogic:(id)a3 linkedID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [NSJSONSerialization JSONObjectWithData:v6 options:1 error:0];
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

    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [v9 setObject:splunkTopicName forKeyedSubscript:@"topic"];
  if (v7)
  {
LABEL_8:
    [v9 setObject:v7 forKeyedSubscript:@"eventLinkID"];
  }

LABEL_9:
  v10 = [NSJSONSerialization dataWithJSONObject:v9 options:0 error:0];
LABEL_10:

  objc_autoreleasePoolPop(v8);

  return v10;
}

- (void)addRequiredFieldsToEvent:(id)a3
{
  v4 = a3;
  metricsBase = self->_metricsBase;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DC5C;
  v7[3] = &unk_100021010;
  v8 = v4;
  v6 = v4;
  [(NSDictionary *)metricsBase enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)removeBlacklistedFieldsFromEvent:(id)a3
{
  v4 = a3;
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

        [v4 removeObjectForKey:{*(*(&v10 + 1) + 8 * v9), v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)eventIsBlacklisted:(id)a3
{
  blacklistedEvents = self->_blacklistedEvents;
  if (!blacklistedEvents)
  {
    return 0;
  }

  v4 = [a3 objectForKeyedSubscript:SFAnalyticsEventType];
  v5 = [(NSArray *)blacklistedEvents containsObject:v4];

  return v5;
}

- (BOOL)postJSONFile:(id)a3 toEndpoint:(id)a4 eventLinkId:(id)a5 postSession:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v13)
  {
    v16 = objc_alloc_init(NSMutableURLRequest);
    [v16 setURL:v13];
    [v16 setHTTPMethod:@"POST"];
    v17 = [NSData dataWithContentsOfURL:v12];
    v18 = [v17 supd_gzipDeflate];
    [v16 setHTTPBody:v18];

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
    v28 = v14;
    v29 = v13;
    v20 = v19;
    v30 = v20;
    v21 = [v15 dataTaskWithRequest:v16 completionHandler:v27];
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
    if (!a7)
    {
      v25 = 0;
      goto LABEL_8;
    }

    v16 = [NSString stringWithFormat:@"No endpoint for %@", self->_internalTopicName];
    v38 = NSLocalizedDescriptionKey;
    v39 = v16;
    v20 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    [NSError errorWithDomain:@"SupdUploadErrorDomain" code:-10 userInfo:v20];
    *a7 = v25 = 0;
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

- (SFAnalyticsTopic)initWithDictionary:(id)a3 name:(id)a4 samplingRates:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v53.receiver = self;
  v53.super_class = SFAnalyticsTopic;
  v11 = [(SFAnalyticsTopic *)&v53 init];
  v12 = v11;
  if (v11)
  {
    v11->_terseMetrics = 0;
    objc_storeStrong(&v11->_internalTopicName, a4);
    v51 = v9;
    [(SFAnalyticsTopic *)v12 setupClientsForTopic:v9];
    v13 = [v8 objectForKeyedSubscript:@"splunk_topic"];
    splunkTopicName = v12->_splunkTopicName;
    v12->_splunkTopicName = v13;

    v15 = [v8 objectForKeyedSubscript:@"splunk_uploadURL"];
    v16 = [NSURL URLWithString:v15];
    splunkUploadURL = v12->__splunkUploadURL;
    v12->__splunkUploadURL = v16;

    v18 = [v8 objectForKeyedSubscript:@"splunk_bagURL"];
    v19 = [NSURL URLWithString:v18];
    splunkBagURL = v12->_splunkBagURL;
    v12->_splunkBagURL = v19;

    v21 = [v8 valueForKey:@"splunk_allowInsecureCertificate"];
    v12->_allowInsecureSplunkCert = [v21 BOOLValue];

    v22 = [v8 valueForKey:@"uploadSizeLimit"];
    v12->_uploadSizeLimit = [v22 unsignedIntegerValue];

    v52 = [v8 objectForKeyedSubscript:@"splunk_endpointDomain"];
    v23 = [v8 objectForKeyedSubscript:@"disableClientId"];

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
    if (v10)
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

      v38 = [v10 objectForKeyedSubscript:v36];
      v39 = [v10 objectForKeyedSubscript:v37];
      v12->_secondsBetweenUploads = [v38 integerValue];
      v40 = [v10 objectForKeyedSubscript:@"NumberOfEvents"];
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

    v9 = v51;
  }

  return v12;
}

- (void)setupClientsForTopic:(id)a3
{
  v18 = a3;
  v4 = objc_opt_new();
  if ([v18 isEqualToString:SFAnalyticsTopicKeySync])
  {
    v5 = [objc_opt_class() databasePathForCKKS];
    v6 = [SFAnalyticsClient getSharedClientNamed:@"ckks" orCreateWithStorePath:v5 requireDeviceAnalytics:0 requireiCloudAnalytics:1];
    [(NSArray *)v4 addObject:v6];

    v7 = [objc_opt_class() databasePathForSOS];
    v8 = [SFAnalyticsClient getSharedClientNamed:@"sos" orCreateWithStorePath:v7 requireDeviceAnalytics:0 requireiCloudAnalytics:1];
    [(NSArray *)v4 addObject:v8];

    v9 = [objc_opt_class() databasePathForPCS];
    v10 = [SFAnalyticsClient getSharedClientNamed:@"pcs" orCreateWithStorePath:v9 requireDeviceAnalytics:0 requireiCloudAnalytics:1];
    [(NSArray *)v4 addObject:v10];

    v11 = [objc_opt_class() databasePathForLocal];
    v12 = @"local";
LABEL_9:
    v13 = v11;
    v14 = 1;
    v15 = 0;
LABEL_10:
    v16 = [SFAnalyticsClient getSharedClientNamed:v12 orCreateWithStorePath:v13 requireDeviceAnalytics:v14 requireiCloudAnalytics:v15];
    [(NSArray *)v4 addObject:v16];

    goto LABEL_11;
  }

  if ([v18 isEqualToString:SFAnalyticsTopicCloudServices])
  {
    v11 = [objc_opt_class() databasePathForCloudServices];
    v12 = @"CloudServices";
    goto LABEL_9;
  }

  if ([v18 isEqualToString:SFAnalyticsTopicTrust])
  {
    v11 = [objc_opt_class() databasePathForTrust];
    v12 = @"trust";
    goto LABEL_9;
  }

  if ([v18 isEqualToString:SFAnalyticsTopicNetworking])
  {
    v11 = [objc_opt_class() databasePathForNetworking];
    v12 = @"networking";
    goto LABEL_9;
  }

  if ([v18 isEqualToString:SFAnalyticsTopicTransparency])
  {
    [(SFAnalyticsTopic *)self setTerseMetrics:1];
    v11 = [objc_opt_class() databasePathForTransparency];
    v12 = @"transparency";
    v13 = v11;
    v14 = 0;
    v15 = 1;
    goto LABEL_10;
  }

  if ([v18 isEqualToString:SFAnalyticsTopicSWTransparency])
  {
    [(SFAnalyticsTopic *)self setTerseMetrics:1];
    v11 = [objc_opt_class() databasePathForSWTransparency];
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
  v3 = [(__CFURL *)v2 path];

  return v3;
}

+ (id)databasePathForTransparency
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/TransparencyAnalytics.db");
  v3 = [(__CFURL *)v2 path];

  return v3;
}

+ (id)databasePathForCloudServices
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/CloudServicesAnalytics.db");
  v3 = [(__CFURL *)v2 path];

  return v3;
}

+ (id)databasePathForNetworking
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/networking_analytics.db");
  v3 = [(__CFURL *)v2 path];

  return v3;
}

+ (id)databasePathForTrust
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/trust_analytics.db");
  v3 = [(__CFURL *)v2 path];

  return v3;
}

+ (id)databasePathForLocal
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/localkeychain.db");
  v3 = [(__CFURL *)v2 path];

  return v3;
}

+ (id)databasePathForPCS
{
  v2 = [a1 AppSupportPath];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"%@/com.apple.ProtectedCloudStorage/PCSAnalytics.db", v2];
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
  v3 = [(__CFURL *)v2 path];

  return v3;
}

+ (id)databasePathForCKKS
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v2 = sub_100014804(@"Library/Keychains", @"Analytics/ckks_analytics.db");
  v3 = [(__CFURL *)v2 path];

  return v3;
}

@end