@interface GKContactsIntegrationIDSUpdateIntervalState
+ (id)stateWithMoc:(id)moc;
@end

@implementation GKContactsIntegrationIDSUpdateIntervalState

+ (id)stateWithMoc:(id)moc
{
  mocCopy = moc;
  v4 = +[GKCDIDSInfoList _gkFetchRequest];
  v16 = 0;
  v5 = [mocCopy executeFetchRequest:v4 error:&v16];

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
    firstObject = [v5 firstObject];
    v11 = [GKContactsIntegrationIDSUpdateIntervalState alloc];
    updateIntervalHandlesCount = [firstObject updateIntervalHandlesCount];
    unsignedIntValue = [updateIntervalHandlesCount unsignedIntValue];
    updateIntervalStartTimeStamp = [firstObject updateIntervalStartTimeStamp];
    v9 = [v11 initUpdateIntervalHandleCount:unsignedIntValue updateIntervalStartTime:updateIntervalStartTimeStamp];
  }

  return v9;
}

@end