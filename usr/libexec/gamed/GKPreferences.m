@interface GKPreferences
+ (void)setupForGameDaemon;
- (BOOL)hasConsumedArcadeSubscription:(id)a3 arcadeFamilyId:(id)a4;
- (void)updateArcadeSubscriptionState:(id)a3 completionHandler:(id)a4;
@end

@implementation GKPreferences

- (BOOL)hasConsumedArcadeSubscription:(id)a3 arcadeFamilyId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) stringValue];
        v12 = [v11 isEqualToString:v6];

        if (v12)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)updateArcadeSubscriptionState:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ASDSubscriptionEntitlements sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011E6B8;
  v11[3] = &unk_100367690;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [v8 getAppStoreConsumedIntroOfferFamilyIdsWithResultHandler:v11];
}

+ (void)setupForGameDaemon
{
  v3 = objc_alloc_init(GKDaemonPreferencesSupport);
  [a1 configureWithSupport:v3];
}

@end