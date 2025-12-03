@interface GKPreferences
+ (void)setupForGameDaemon;
- (BOOL)hasConsumedArcadeSubscription:(id)subscription arcadeFamilyId:(id)id;
- (void)updateArcadeSubscriptionState:(id)state completionHandler:(id)handler;
@end

@implementation GKPreferences

- (BOOL)hasConsumedArcadeSubscription:(id)subscription arcadeFamilyId:(id)id
{
  subscriptionCopy = subscription;
  idCopy = id;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = subscriptionCopy;
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

        stringValue = [*(*(&v14 + 1) + 8 * i) stringValue];
        v12 = [stringValue isEqualToString:idCopy];

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

- (void)updateArcadeSubscriptionState:(id)state completionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  v8 = +[ASDSubscriptionEntitlements sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011E6B8;
  v11[3] = &unk_100367690;
  v12 = stateCopy;
  v13 = handlerCopy;
  v11[4] = self;
  v9 = stateCopy;
  v10 = handlerCopy;
  [v8 getAppStoreConsumedIntroOfferFamilyIdsWithResultHandler:v11];
}

+ (void)setupForGameDaemon
{
  v3 = objc_alloc_init(GKDaemonPreferencesSupport);
  [self configureWithSupport:v3];
}

@end