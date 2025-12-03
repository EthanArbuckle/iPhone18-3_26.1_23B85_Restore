@interface APMediaServiceErrorResponseProcessor
+ (void)processJourneyErrorEventsForContentDataItems:(id)items contextFingerprint:(id)fingerprint params:(id)params;
@end

@implementation APMediaServiceErrorResponseProcessor

+ (void)processJourneyErrorEventsForContentDataItems:(id)items contextFingerprint:(id)fingerprint params:(id)params
{
  itemsCopy = items;
  fingerprintCopy = fingerprint;
  paramsCopy = params;
  if (![itemsCopy count])
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v38 = 1025;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Encountered error from client. Error code: %{public}lu", buf, 0xCu);
    }

    v10 = [[NSUUID alloc] initWithUUIDString:fingerprintCopy];
    v11 = [APContentData createForServerUnfilledReason:1025 placementType:5 contextIdentifier:v10];

    v12 = [[APJourneyDaemonMetricHelper alloc] initWithContentData:v11];
    requestID = [paramsCopy requestID];
    uUIDString = [requestID UUIDString];
    -[APJourneyDaemonMetricHelper requestFailedForBundleID:withCode:requestID:placement:placementType:](v12, "requestFailedForBundleID:withCode:requestID:placement:placementType:", @"com.apple.AppStore", 3304, uUIDString, [paramsCopy placement], 5);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = itemsCopy;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v33;
    *&v17 = 134349056;
    v30 = v17;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        if ([v21 serverUnfilledReason])
        {
          v22 = APLogForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            serverUnfilledReason = [v21 serverUnfilledReason];
            *buf = v30;
            v38 = serverUnfilledReason;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Encountered error from client. Error code: %{public}lu", buf, 0xCu);
          }

          serverUnfilledReason2 = [v21 serverUnfilledReason];
          v25 = [[NSUUID alloc] initWithUUIDString:fingerprintCopy];
          v26 = [APContentData createForServerUnfilledReason:serverUnfilledReason2 placementType:5 contextIdentifier:v25];

          v27 = [[APJourneyDaemonMetricHelper alloc] initWithContentData:v26];
          requestID2 = [paramsCopy requestID];
          uUIDString2 = [requestID2 UUIDString];
          -[APJourneyDaemonMetricHelper requestFailedForBundleID:withCode:requestID:placement:placementType:](v27, "requestFailedForBundleID:withCode:requestID:placement:placementType:", @"com.apple.AppStore", 3304, uUIDString2, [paramsCopy placement], 5);
        }
      }

      v18 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v18);
  }
}

@end