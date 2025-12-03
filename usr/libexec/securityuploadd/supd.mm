@interface supd
+ (id)serializeLoggingEvent:(id)event error:(id *)error;
+ (void)writeURL:(id)l intoFileHandle:(id)handle;
- (BOOL)checkSupdEntitlement;
- (BOOL)filebasedUploadAnalytics:(BOOL)analytics error:(id *)error;
- (id)getSysdiagnoseDump;
- (id)stringForEventClass:(int64_t)class;
- (id)sysdiagnoseStringForEventRecord:(id)record;
- (supd)initWithConnection:(id)connection;
- (supd)initWithConnection:(id)connection reporter:(id)reporter;
- (void)clientStatus:(id)status;
- (void)createChunkedLoggingJSON:(BOOL)n topic:(id)topic reply:(id)reply;
- (void)createLoggingJSON:(BOOL)n topic:(id)topic reply:(id)reply;
- (void)deleteDataFromOlderVersionsToAvoidDataMixing;
- (void)fixFiles:(id)files;
- (void)forceUploadWithReply:(id)reply;
- (void)getSFACollectionForCollection:(id)collection reply:(id)reply;
- (void)getSysdiagnoseDumpWithReply:(id)reply;
- (void)performRegularlyScheduledUpload;
- (void)sendNotificationForOncePerReportSamplers;
- (void)setSFACollection:(id)collection forTopic:(id)topic reply:(id)reply;
- (void)setUploadDateWith:(id)with reply:(id)reply;
- (void)setupSamplingRates;
- (void)setupTopics;
@end

@implementation supd

- (void)fixFiles:(id)files
{
  filesCopy = files;
  connection = [(supd *)self connection];
  v6 = [connection valueForEntitlement:@"com.apple.private.trustd.FileHelp"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = objc_alloc_init(TrustdFileHelper);
    [(TrustdFileHelper *)v8 fixFiles:filesCopy];
  }

  else
  {
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 userInfo:0];
    filesCopy[2](filesCopy, 0);
  }
}

- (void)clientStatus:(id)status
{
  statusCopy = status;
  if ([(supd *)self checkSupdEntitlement])
  {
    v5 = +[NSMutableDictionary dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = self->_analyticsTopics;
    v16 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v16)
    {
      v15 = *v25;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v24 + 1) + 8 * i);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          topicClients = [v7 topicClients];
          v9 = [topicClients countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v21;
            do
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(topicClients);
                }

                v13 = *(*(&v20 + 1) + 8 * j);
                v17[0] = _NSConcreteStackBlock;
                v17[1] = 3221225472;
                v17[2] = sub_10000F6B4;
                v17[3] = &unk_100021340;
                v18 = v5;
                v19 = v13;
                [v13 withStore:v17];
              }

              v10 = [topicClients countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v10);
          }
        }

        v16 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v16);
    }

    statusCopy[2](statusCopy, v5, 0);
  }

  else
  {
    v5 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 userInfo:0];
    (statusCopy)[2](statusCopy, 0, v5);
  }
}

- (void)getSFACollectionForCollection:(id)collection reply:(id)reply
{
  collectionCopy = collection;
  replyCopy = reply;
  if ([(supd *)self checkSupdEntitlement])
  {
    if (collectionCopy)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = self->_analyticsTopics;
      v21 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v21)
      {
        v8 = *v35;
        v20 = *v35;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v35 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v34 + 1) + 8 * i);
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            topicClients = [v10 topicClients];
            v12 = [topicClients countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v12)
            {
              v13 = *v31;
              while (2)
              {
                for (j = 0; j != v12; j = j + 1)
                {
                  if (*v31 != v13)
                  {
                    objc_enumerationMutation(topicClients);
                  }

                  v15 = *(*(&v30 + 1) + 8 * j);
                  name = [v15 name];
                  v17 = [name isEqual:collectionCopy];

                  if (v17)
                  {
                    v24 = 0;
                    v25 = &v24;
                    v26 = 0x3032000000;
                    v27 = sub_100008448;
                    v28 = sub_100008458;
                    v29 = 0;
                    v23[0] = _NSConcreteStackBlock;
                    v23[1] = 3221225472;
                    v23[2] = sub_10000FAF4;
                    v23[3] = &unk_100021318;
                    v23[4] = &v24;
                    [v15 withStore:v23];
                    replyCopy[2](replyCopy, v25[5], 0);
                    _Block_object_dispose(&v24, 8);

                    goto LABEL_22;
                  }
                }

                v12 = [topicClients countByEnumeratingWithState:&v30 objects:v38 count:16];
                if (v12)
                {
                  continue;
                }

                break;
              }
            }

            v8 = v20;
          }

          v21 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
          v8 = v20;
        }

        while (v21);
      }

      v18 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-25303 userInfo:0];
      (replyCopy)[2](replyCopy, 0, v18);
    }

    else
    {
      replyCopy[2](replyCopy, 0, 0);
    }
  }

  else
  {
    v19 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 userInfo:0];
    (replyCopy)[2](replyCopy, 0, v19);
  }

LABEL_22:
}

- (void)setSFACollection:(id)collection forTopic:(id)topic reply:(id)reply
{
  collectionCopy = collection;
  topicCopy = topic;
  replyCopy = reply;
  if ([(supd *)self checkSupdEntitlement])
  {
    if (!topicCopy)
    {
      replyCopy[2](replyCopy, 0);
      goto LABEL_25;
    }

    v41 = 0;
    v11 = [SFAnalytics validateSFACollection:collectionCopy error:&v41];
    v12 = v41;
    if (v11)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v13 = self->_analyticsTopics;
      v27 = [(NSArray *)v13 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v27)
      {
        v14 = *v38;
        v29 = v13;
        v30 = v12;
        v26 = *v38;
        do
        {
          v15 = 0;
          do
          {
            if (*v38 != v14)
            {
              objc_enumerationMutation(v13);
            }

            v28 = v15;
            v16 = *(*(&v37 + 1) + 8 * v15);
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            topicClients = [v16 topicClients];
            v18 = [topicClients countByEnumeratingWithState:&v33 objects:v42 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v34;
              while (2)
              {
                for (i = 0; i != v19; i = i + 1)
                {
                  if (*v34 != v20)
                  {
                    objc_enumerationMutation(topicClients);
                  }

                  v22 = *(*(&v33 + 1) + 8 * i);
                  name = [v22 name];
                  v24 = [name isEqual:topicCopy];

                  if (v24)
                  {
                    v31[0] = _NSConcreteStackBlock;
                    v31[1] = 3221225472;
                    v31[2] = sub_10000FE9C;
                    v31[3] = &unk_1000211E8;
                    v32 = collectionCopy;
                    [v22 withStore:v31];
                    replyCopy[2](replyCopy, 0);

                    goto LABEL_25;
                  }
                }

                v19 = [topicClients countByEnumeratingWithState:&v33 objects:v42 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            v15 = v28 + 1;
            v13 = v29;
            v12 = v30;
            v14 = v26;
          }

          while ((v28 + 1) != v27);
          v27 = [(NSArray *)v29 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v27);
      }

      v25 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-25303 userInfo:0];
      (replyCopy)[2](replyCopy, v25);

      goto LABEL_22;
    }
  }

  else
  {
    v12 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 userInfo:0];
  }

  (replyCopy)[2](replyCopy, v12);
LABEL_22:

LABEL_25:
}

- (void)setUploadDateWith:(id)with reply:(id)reply
{
  withCopy = with;
  replyCopy = reply;
  if ([(supd *)self checkSupdEntitlement])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = self->_analyticsTopics;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          topicClients = [v13 topicClients];
          [v13 updateUploadDateForClients:topicClients date:withCopy clearData:0];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 userInfo:0];
    (replyCopy)[2](replyCopy, 0, v15);
  }
}

- (void)forceUploadWithReply:(id)reply
{
  replyCopy = reply;
  if ([(supd *)self checkSupdEntitlement])
  {
    v5 = sub_1000146E4("upload");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performing upload in response to rpc message", buf, 2u);
    }

    v11 = 0;
    v6 = [(supd *)self filebasedUploadAnalytics:1 error:&v11];
    v7 = v11;
    v8 = sub_1000146E4("upload");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"failure";
      if (v6)
      {
        v9 = @"success";
      }

      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Result of manually triggered upload: %@, error: %@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, v6, v7);
  }

  else
  {
    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 userInfo:0];
    (replyCopy[2])(replyCopy, 0);
  }
}

- (void)createChunkedLoggingJSON:(BOOL)n topic:(id)topic reply:(id)reply
{
  nCopy = n;
  topicCopy = topic;
  replyCopy = reply;
  if ([(supd *)self checkSupdEntitlement])
  {
    v9 = sub_1000146E4("rpcCreateChunkedLoggingJSON");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Building an array of JSON blobs resembling the one we would have uploaded", buf, 2u);
    }

    [(supd *)self sendNotificationForOncePerReportSamplers];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = self->_analyticsTopics;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v25 = replyCopy;
      v13 = 0;
      v14 = 0;
      v15 = *v30;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          internalTopicName = [v17 internalTopicName];
          v19 = [internalTopicName isEqualToString:topicCopy];

          if (v19)
          {
            v28 = v14;
            v20 = [v17 createChunkedLoggingJSON:nCopy forUpload:0 participatingClients:0 force:1 error:&v28];
            v21 = v28;

            v13 = v20;
            v14 = v21;
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v12);

      v22 = objc_autoreleasePoolPush();
      if (v13)
      {
        v27 = v14;
        v23 = [NSJSONSerialization dataWithJSONObject:v13 options:nCopy error:&v27];
        v24 = v27;
        replyCopy = v25;
LABEL_21:

        objc_autoreleasePoolPop(v22);
        replyCopy[2](replyCopy, v23, v24);

        goto LABEL_22;
      }

      v24 = v14;
      replyCopy = v25;
    }

    else
    {

      v22 = objc_autoreleasePoolPush();
      v24 = 0;
    }

    v14 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v24;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unable to obtain JSON: %@", buf, 0xCu);
    }

    v13 = 0;
    v23 = 0;
    goto LABEL_21;
  }

  v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 userInfo:0];
  replyCopy[2](replyCopy, 0, v24);
LABEL_22:
}

- (void)createLoggingJSON:(BOOL)n topic:(id)topic reply:(id)reply
{
  nCopy = n;
  topicCopy = topic;
  replyCopy = reply;
  if ([(supd *)self checkSupdEntitlement])
  {
    v9 = sub_1000146E4("rpcCreateLoggingJSON");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Building a JSON blob resembling the one we would have uploaded", buf, 2u);
    }

    [(supd *)self sendNotificationForOncePerReportSamplers];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = self->_analyticsTopics;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v26 = replyCopy;
      v13 = 0;
      v14 = 0;
      v15 = *v31;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          internalTopicName = [v17 internalTopicName];
          v19 = [internalTopicName isEqualToString:topicCopy];

          if (v19)
          {
            v29 = v14;
            v20 = [v17 createLoggingJSON:nCopy forUpload:0 participatingClients:0 force:1 error:&v29];
            v21 = v29;

            v13 = v20;
            v14 = v21;
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v12);

      if (v13)
      {
        v22 = objc_autoreleasePoolPush();
        v28 = v14;
        v23 = [NSJSONSerialization dataWithJSONObject:v13 options:nCopy error:&v28];
        v24 = v28;

        objc_autoreleasePoolPop(v22);
        v14 = v24;
        replyCopy = v26;
LABEL_21:
        replyCopy[2](replyCopy, v23, v14);

        goto LABEL_22;
      }

      replyCopy = v26;
    }

    else
    {

      v14 = 0;
    }

    v25 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v14;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unable to obtain JSON: %@", buf, 0xCu);
    }

    v13 = 0;
    v23 = 0;
    goto LABEL_21;
  }

  v14 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-34018 userInfo:0];
  replyCopy[2](replyCopy, 0, v14);
LABEL_22:
}

- (void)getSysdiagnoseDumpWithReply:(id)reply
{
  replyCopy = reply;
  if ([(supd *)self checkSupdEntitlement])
  {
    getSysdiagnoseDump = [(supd *)self getSysdiagnoseDump];
    replyCopy[2](replyCopy, getSysdiagnoseDump);
  }

  else
  {
    replyCopy[2](replyCopy, @"client not entitled");
  }
}

- (BOOL)checkSupdEntitlement
{
  connection = [(supd *)self connection];
  v3 = [connection valueForEntitlement:@"com.apple.private.securityuploadd"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)stringForEventClass:(int64_t)class
{
  if (class > 4)
  {
    return @"EventUnknown";
  }

  else
  {
    return off_1000213F0[class];
  }
}

- (id)getSysdiagnoseDump
{
  v3 = objc_alloc_init(NSMutableString);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_analyticsTopics;
  v15 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v15)
  {
    v14 = *v26;
    do
    {
      v4 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = v4;
        v5 = *(*(&v25 + 1) + 8 * v4);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        topicClients = [v5 topicClients];
        v7 = [topicClients countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v22;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(topicClients);
              }

              v11 = *(*(&v21 + 1) + 8 * i);
              v17[0] = _NSConcreteStackBlock;
              v17[1] = 3221225472;
              v17[2] = sub_100010C00;
              v17[3] = &unk_1000212F0;
              v18 = v3;
              v19 = v11;
              selfCopy = self;
              [v11 withStore:v17];
            }

            v8 = [topicClients countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v8);
        }

        v4 = v16 + 1;
      }

      while ((v16 + 1) != v15);
      v15 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v15);
  }

  return v3;
}

- (id)sysdiagnoseStringForEventRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy mutableCopy];
  [v5 removeObjectForKey:@"topic"];
  v6 = SFAnalyticsEventTime;
  v7 = [recordCopy valueForKey:SFAnalyticsEventTime];
  [v7 doubleValue];
  v9 = [NSDate dateWithTimeIntervalSince1970:v8 / 1000.0];

  [v5 removeObjectForKey:v6];
  v10 = SFAnalyticsEventType;
  v11 = [recordCopy objectForKeyedSubscript:SFAnalyticsEventType];
  [v5 removeObjectForKey:v10];
  v12 = SFAnalyticsEventClassKey;
  v13 = [recordCopy valueForKey:SFAnalyticsEventClassKey];
  integerValue = [v13 integerValue];

  v15 = [(supd *)self stringForEventClass:integerValue];
  [v5 removeObjectForKey:v12];
  v16 = +[NSMutableString string];
  if ([v5 count])
  {
    [v16 appendString:@" - Attributes: {"];
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 1;
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100011004;
    v23 = &unk_1000212C8;
    v25 = v26;
    v17 = v16;
    v24 = v17;
    [v5 enumerateKeysAndObjectsUsingBlock:&v20];
    [v17 appendString:@" }"];

    _Block_object_dispose(v26, 8);
  }

  v18 = [NSString stringWithFormat:@"%@ %@: %@%@", v9, v15, v11, v16, v20, v21, v22, v23];

  return v18;
}

- (BOOL)filebasedUploadAnalytics:(BOOL)analytics error:(id *)error
{
  analyticsCopy = analytics;
  [(supd *)self sendNotificationForOncePerReportSamplers];
  bzero(v86, 0x400uLL);
  if (confstr(65537, v86, 0x400uLL))
  {
    v4 = [NSString stringWithCString:v86 encoding:4];
    v5 = [NSURL fileURLWithPath:v4 isDirectory:1];

    v43 = v5 != 0;
    if (v5)
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v6 = self->_analyticsTopics;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v73 objects:v85 count:16];
      if (!v7)
      {
        goto LABEL_44;
      }

      v8 = v7;
      v9 = &DiagnosticLogSubmissionEnabled_ptr;
      v10 = *v74;
      v50 = v5;
      v44 = *v74;
      v45 = v6;
      while (1)
      {
        v11 = 0;
        v46 = v8;
        do
        {
          if (*v74 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v73 + 1) + 8 * v11);
          getSession = [v12 getSession];
          [v9[288] UUID];
          v60 = v59 = getSession;
          v58 = [v12 splunkUploadURL:analyticsCopy urlSession:getSession];
          if (!v58)
          {
            topicClients2 = sub_1000146E4("upload");
            if (!os_log_type_enabled(&topicClients2->super, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_36;
            }

            internalTopicName = [v12 internalTopicName];
            *buf = 138412290;
            v78 = internalTopicName;
            p_super = &topicClients2->super;
            v18 = "Skipping upload for %@ because no endpoint";
            goto LABEL_14;
          }

          v14 = v12;
          if ([v12 disableUploads])
          {
            topicClients2 = sub_1000146E4("upload");
            if (!os_log_type_enabled(&topicClients2->super, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_36;
            }

            internalTopicName = [v12 internalTopicName];
            *buf = 138412290;
            v78 = internalTopicName;
            p_super = &topicClients2->super;
            v18 = "Aborting upload task for %@ because uploads are disabled";
LABEL_14:
            _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);

            goto LABEL_36;
          }

          if ([v12 isSampledUpload])
          {
            v47 = v11;
            topicClients2 = [[_TtC15securityuploadd25SFAnalyticsTopicGenerator alloc] initWithTopic:v12];
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            obj = [v12 topicClients];
            v54 = [obj countByEnumeratingWithState:&v69 objects:v84 count:16];
            if (v54)
            {
              v53 = *v70;
              do
              {
                v19 = 0;
                do
                {
                  if (*v70 != v53)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v56 = v19;
                  v20 = *(*(&v69 + 1) + 8 * v19);
                  -[SFAnalyticsTopicGenerator generateWithTopicClient:outputDirectory:uploadSizeLimit:eventQuota:uuid:error:](topicClients2, "generateWithTopicClient:outputDirectory:uploadSizeLimit:eventQuota:uuid:error:", v20, v5, [v14 uploadSizeLimit], 1000, v60, error);
                  v21 = [(SFAnalyticsTopicGenerator *)topicClients2 uploadFilesWithTopicClient:v20];
                  name = [v20 name];
                  v23 = [NSString stringWithFormat:@"SFA-%@.json", name];

                  reporter = self->_reporter;
                  v66[0] = _NSConcreteStackBlock;
                  v66[1] = 3221225472;
                  v66[2] = sub_100011814;
                  v66[3] = &unk_1000212A0;
                  v25 = v21;
                  v67 = v25;
                  selfCopy = self;
                  v55 = v23;
                  [(SFAnalyticsReporter *)reporter saveReportNamed:v23 intoFileHandle:v66];
                  v62 = 0u;
                  v63 = 0u;
                  v64 = 0u;
                  v65 = 0u;
                  v57 = v25;
                  v26 = [v57 countByEnumeratingWithState:&v62 objects:v83 count:16];
                  if (v26)
                  {
                    v27 = v26;
                    v28 = *v63;
                    do
                    {
                      for (i = 0; i != v27; i = i + 1)
                      {
                        v30 = topicClients2;
                        if (*v63 != v28)
                        {
                          objc_enumerationMutation(v57);
                        }

                        v31 = *(*(&v62 + 1) + 8 * i);
                        uUIDString = [v60 UUIDString];
                        v61 = 0;
                        v33 = v14;
                        v34 = [v14 postJSONFile:v31 toEndpoint:v58 eventLinkId:uUIDString postSession:v59 error:&v61];
                        v35 = v61;

                        if ((v34 & 1) == 0)
                        {
                          v36 = sub_1000146E4("SecError");
                          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                          {
                            internalTopicName2 = [v33 internalTopicName];
                            *buf = 138543874;
                            v78 = internalTopicName2;
                            v79 = 2112;
                            v80 = v31;
                            v81 = 2114;
                            v82 = v35;
                            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "upload filed for topic %{public}@ for file %@ with error: %{public}@", buf, 0x20u);
                          }
                        }

                        topicClients2 = v30;
                        [(SFAnalyticsTopicGenerator *)v30 confirmUploadFileWithTopicClient:v20 url:v31];

                        v14 = v33;
                      }

                      v27 = [v57 countByEnumeratingWithState:&v62 objects:v83 count:16];
                    }

                    while (v27);
                  }

                  v19 = v56 + 1;
                  v5 = v50;
                }

                while ((v56 + 1) != v54);
                v54 = [obj countByEnumeratingWithState:&v69 objects:v84 count:16];
              }

              while (v54);
            }

            topicClients = [v14 topicClients];
            v39 = +[NSDate date];
            [v14 updateUploadDateForClients:topicClients date:v39 clearData:1];

            v6 = v45;
            v8 = v46;
            v9 = &DiagnosticLogSubmissionEnabled_ptr;
            v10 = v44;
            v11 = v47;
          }

          else
          {
            topicClients2 = [v12 topicClients];
            +[NSDate date];
            v41 = v40 = v11;
            [v12 updateUploadDateForClients:topicClients2 date:v41 clearData:1];

            v11 = v40;
          }

LABEL_36:

          v11 = v11 + 1;
        }

        while (v11 != v8);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v73 objects:v85 count:16];
        if (!v8)
        {
          goto LABEL_44;
        }
      }
    }

    v6 = sub_1000146E4("SecError");
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_DEFAULT, "Skipping upload for because no temp dir", buf, 2u);
    }

LABEL_44:
  }

  else
  {
    v5 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping upload for because no temp dir", buf, 2u);
    }

    v43 = 0;
  }

  return v43;
}

- (void)performRegularlyScheduledUpload
{
  v3 = sub_1000146E4("upload");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting uploads in response to regular trigger", buf, 2u);
  }

  v10 = 0;
  v4 = [(supd *)self filebasedUploadAnalytics:0 error:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = sub_1000146E4("upload");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Regularly scheduled upload successful";
      v8 = v6;
      v9 = 2;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else
  {
    v6 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      v7 = "upload: Failed to complete regularly scheduled upload: %@";
      v8 = v6;
      v9 = 12;
      goto LABEL_8;
    }
  }
}

- (void)sendNotificationForOncePerReportSamplers
{
  notify_post(SFAnalyticsFireSamplersNotification);

  [NSThread sleepForTimeInterval:3.0];
}

- (void)deleteDataFromOlderVersionsToAvoidDataMixing
{
  v3 = _CFCopySystemVersionDictionary();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:_kCFSystemVersionBuildVersionKey];
    if (v5)
    {
      v6 = v5;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = self->_analyticsTopics;
      v17 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v17)
      {
        v16 = *v25;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v24 + 1) + 8 * i);
            v20 = 0u;
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            topicClients = [v8 topicClients];
            v10 = [topicClients countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v21;
              do
              {
                for (j = 0; j != v11; j = j + 1)
                {
                  if (*v21 != v12)
                  {
                    objc_enumerationMutation(topicClients);
                  }

                  v14 = *(*(&v20 + 1) + 8 * j);
                  v18[0] = _NSConcreteStackBlock;
                  v18[1] = 3221225472;
                  v18[2] = sub_100011D10;
                  v18[3] = &unk_1000211E8;
                  v19 = v6;
                  [v14 withStore:v18];
                }

                v11 = [topicClients countByEnumeratingWithState:&v20 objects:v28 count:16];
              }

              while (v11);
            }
          }

          v17 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v17);
      }
    }
  }
}

- (supd)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = objc_alloc_init(SFAnalyticsReporter);
  v6 = [(supd *)self initWithConnection:connectionCopy reporter:v5];

  return v6;
}

- (supd)initWithConnection:(id)connection reporter:(id)reporter
{
  connectionCopy = connection;
  reporterCopy = reporter;
  v14.receiver = self;
  v14.super_class = supd;
  v9 = [(supd *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_reporter, reporter);
    [(supd *)v10 setupSamplingRates];
    [(supd *)v10 setupTopics];
    [(supd *)v10 deleteDataFromOlderVersionsToAvoidDataMixing];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011F28;
    block[3] = &unk_1000211C0;
    v13 = v10;
    if (qword_1000262E8 != -1)
    {
      dispatch_once(&qword_1000262E8, block);
    }
  }

  return v10;
}

- (void)setupSamplingRates
{
  v3 = [NSBundle bundleWithPath:@"/System/Library/Security/Certificates.bundle"];
  v4 = sub_100014804(@"private/var/protected/", @"trustd/");
  v5 = [(__CFURL *)v4 URLByAppendingPathComponent:@"SupplementalsAssets/" isDirectory:1];
  v6 = [v3 URLForResource:@"AssetVersion" withExtension:@"plist"];
  v7 = [NSDictionary dictionaryWithContentsOfURL:v6];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 objectForKeyedSubscript:@"MobileAssetContentVersion"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 URLByAppendingPathComponent:@"OTAPKIContext.plist"];
  v11 = [NSDictionary dictionaryWithContentsOfURL:v10];

  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v11 objectForKeyedSubscript:@"MobileAssetContentVersion"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  if (!v9 || !v13)
  {

    goto LABEL_27;
  }

  v14 = [v13 compare:v9];

  if (v14 != 1)
  {
    goto LABEL_27;
  }

  v15 = [NSString stringWithFormat:@"%@.plist", @"AnalyticsSamplingRates"];
  v16 = [v5 URLByAppendingPathComponent:v15];

  v17 = [NSDictionary dictionaryWithContentsOfURL:v16];
  v18 = sub_1000146E4("supd");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "read sampling rates from SupplementalsAssets dir", buf, 2u);
  }

  if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_27:
    v19 = [v3 URLForResource:@"AnalyticsSamplingRates" withExtension:@"plist"];
    v17 = [NSDictionary dictionaryWithContentsOfURL:v19];

    if (!v17)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

LABEL_28:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v17 objectForKeyedSubscript:@"Topics"];
    topicsSamplingRates = self->_topicsSamplingRates;
    self->_topicsSamplingRates = v20;

    v22 = self->_topicsSamplingRates;
    if (!v22)
    {
LABEL_32:
      self->_topicsSamplingRates = 0;

      goto LABEL_33;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = self->_topicsSamplingRates;
      goto LABEL_32;
    }
  }

LABEL_33:
}

- (void)setupTopics
{
  v3 = [NSBundle bundleWithPath:@"/System/Library/Frameworks/Security.framework"];
  v4 = [v3 pathForResource:@"SFAnalytics" ofType:@"plist"];
  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];

  v6 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [(NSDictionary *)self->_topicsSamplingRates objectForKeyedSubscript:v12, v19];
        v14 = [SFAnalyticsTopic alloc];
        v15 = [v7 objectForKeyedSubscript:v12];
        v16 = [(SFAnalyticsTopic *)v14 initWithDictionary:v15 name:v12 samplingRates:v13];

        [v6 addObject:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = [NSArray arrayWithArray:v6];
  analyticsTopics = self->_analyticsTopics;
  self->_analyticsTopics = v17;
}

+ (void)writeURL:(id)l intoFileHandle:(id)handle
{
  lCopy = l;
  handleCopy = handle;
  v7 = sub_1000146E4("saveReport");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "starting writing data", buf, 2u);
  }

  v8 = dispatch_queue_create("saveReport", 0);
  v9 = dispatch_group_create();
  path = [lCopy path];
  v11 = path;
  v12 = dispatch_io_create_with_path(0, [path UTF8String], 0, 0, v8, &stru_100021228);

  dispatch_io_set_high_water(v12, 0xC800uLL);
  dispatch_group_enter(v9);
  *buf = 0;
  v22 = buf;
  v23 = 0x2020000000;
  v24 = 0;
  io_handler[0] = _NSConcreteStackBlock;
  io_handler[1] = 3221225472;
  io_handler[2] = sub_1000128A8;
  io_handler[3] = &unk_100021278;
  v13 = handleCopy;
  v18 = v13;
  v20 = buf;
  v14 = v9;
  v19 = v14;
  dispatch_io_read(v12, 0, 0xFFFFFFFFFFFFFFFFLL, v8, io_handler);
  dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v15 = sub_1000146E4("saveReport");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(v22 + 3);
    *v25 = 134218242;
    v26 = v16;
    v27 = 2112;
    v28 = lCopy;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "wrote %lld bytes from file %@", v25, 0x16u);
  }

  _Block_object_dispose(buf, 8);
}

+ (id)serializeLoggingEvent:(id)event error:(id *)error
{
  eventCopy = event;
  if (eventCopy)
  {
    v6 = objc_autoreleasePoolPush();
    v13 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:eventCopy options:0 error:&v13];
    v8 = v13;
    objc_autoreleasePoolPop(v6);
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v11 = v7;
    }

    else if (error)
    {
      v10 = v8;
      v11 = 0;
      *error = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:@"com.apple.security.supd" code:3 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end