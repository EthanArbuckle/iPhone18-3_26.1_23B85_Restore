@interface GKContactsIntegrationIDSUpdateIntervalState
+ (id)stateWithMoc:(id)a3;
@end

@implementation GKContactsIntegrationIDSUpdateIntervalState

+ (id)stateWithMoc:(id)a3
{
  v3 = a3;
  v4 = +[GKCDIDSInfoList _gkFetchRequest];
  v16 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v16];

  v6 = v16;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10029487C(v6, v8);
    }

    v9 = 0;
  }

  else
  {
    v10 = [v5 firstObject];
    v11 = [GKContactsIntegrationIDSUpdateIntervalState alloc];
    v12 = [v10 updateIntervalHandlesCount];
    v13 = [v12 unsignedIntValue];
    v14 = [v10 updateIntervalStartTimeStamp];
    v9 = [v11 initUpdateIntervalHandleCount:v13 updateIntervalStartTime:v14];
  }

  return v9;
}

@end