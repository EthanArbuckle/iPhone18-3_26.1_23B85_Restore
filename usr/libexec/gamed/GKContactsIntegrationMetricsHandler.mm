@interface GKContactsIntegrationMetricsHandler
- (GKContactsIntegrationMetricsHandler)init;
- (GKContactsIntegrationMetricsHandler)initWithAMPController:(id)a3;
- (void)recordContactInfoMatchCount:(unint64_t)a3;
- (void)recordContactRelationshipsFromResults:(id)a3;
@end

@implementation GKContactsIntegrationMetricsHandler

- (GKContactsIntegrationMetricsHandler)init
{
  v3 = +[GKAMPController controller];
  v4 = [(GKContactsIntegrationMetricsHandler *)self initWithAMPController:v3];

  return v4;
}

- (GKContactsIntegrationMetricsHandler)initWithAMPController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GKContactsIntegrationMetricsHandler;
  v6 = [(GKContactsIntegrationMetricsHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ampController, a3);
  }

  return v7;
}

- (void)recordContactInfoMatchCount:(unint64_t)a3
{
  v7[0] = GKMetricsEventType;
  v7[1] = @"contactInfoMatchCount";
  v8[0] = @"contactsIntegration";
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  v6 = [(GKContactsIntegrationMetricsHandler *)self ampController];
  [v6 reportPerformanceEventWithHostAppBundleId:GKDaemonIdentifier metricsFields:v5];
}

- (void)recordContactRelationshipsFromResults:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v21[0] = GKMetricsEventType;
    v21[1] = @"contactContainsFriendHandle";
    v22[0] = @"contactsIntegration";
    v22[1] = &__kCFBooleanFalse;
    v21[2] = @"contactContainsNonFriendHandle";
    v21[3] = @"contactContainsUnknownHandle";
    v22[2] = &__kCFBooleanFalse;
    v22[3] = &__kCFBooleanFalse;
    v5 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
    v6 = [v5 mutableCopy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * v11) relationship];
          if (v12 <= 2)
          {
            [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:off_100366FD8[v12]];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [(GKContactsIntegrationMetricsHandler *)self ampController];
    v14 = GKDaemonIdentifier;
    v15 = [v6 copy];
    [v13 reportPerformanceEventWithHostAppBundleId:v14 metricsFields:v15];
  }
}

@end