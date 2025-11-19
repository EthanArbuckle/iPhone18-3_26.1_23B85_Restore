@interface DMDEventSubscriptionManager
- (BOOL)setEventSubscriptionRegistrations:(id)a3 error:(id *)a4;
- (DMDEventSubscriptionManager)init;
- (id)eventStatusesByPayloadIdentifierSinceStartDate:(id)a3 organizationIdentifier:(id)a4;
@end

@implementation DMDEventSubscriptionManager

- (DMDEventSubscriptionManager)init
{
  v6.receiver = self;
  v6.super_class = DMDEventSubscriptionManager;
  v2 = [(DMDEventSubscriptionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    eventSubscriptionsByIdentifier = v2->_eventSubscriptionsByIdentifier;
    v2->_eventSubscriptionsByIdentifier = v3;
  }

  return v2;
}

- (BOOL)setEventSubscriptionRegistrations:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(DMDEventSubscriptionManager *)self eventSubscriptionsByIdentifier];
  v7 = [v6 allKeys];
  v23 = [v7 mutableCopy];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v24 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v24)
  {
    v22 = *v31;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 payloadMetadata];
        v11 = [v10 organization];
        v12 = [v11 identifier];

        v13 = [v10 identifier];
        v14 = [v9 identifier];
        v15 = [(DMDEventSubscriptionManager *)self eventSubscriptionsByIdentifier];
        v16 = [v15 objectForKeyedSubscript:v14];

        if (v16)
        {
          [(DMDEventSubscriptionRegistrationController *)v16 updateWithSubscriptionRegistration:v9];
        }

        else
        {
          objc_initWeak(&location, self);
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100043AE8;
          v25[3] = &unk_1000CF0C0;
          objc_copyWeak(&v28, &location);
          v26 = v13;
          v27 = v12;
          v17 = objc_retainBlock(v25);
          v16 = [[DMDEventSubscriptionRegistrationController alloc] initWithSubscriptionRegistration:v9 streamEventsHandler:v17];
          v18 = [(DMDEventSubscriptionManager *)self eventSubscriptionsByIdentifier];
          [v18 setObject:v16 forKeyedSubscript:v14];

          objc_destroyWeak(&v28);
          objc_destroyWeak(&location);
        }

        [v23 removeObject:v14];
      }

      v24 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v24);
  }

  v19 = [(DMDEventSubscriptionManager *)self eventSubscriptionsByIdentifier];
  [v19 removeObjectsForKeys:v23];

  return 1;
}

- (id)eventStatusesByPayloadIdentifierSinceStartDate:(id)a3 organizationIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DMDEventSubscriptionManager *)self eventSubscriptionsByIdentifier];
  v9 = [v8 copy];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100043CA0;
  v16[3] = &unk_1000CF0E8;
  v17 = v7;
  v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v18 = v10;
  v19 = v6;
  v11 = v6;
  v12 = v7;
  [v9 enumerateKeysAndObjectsUsingBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

@end