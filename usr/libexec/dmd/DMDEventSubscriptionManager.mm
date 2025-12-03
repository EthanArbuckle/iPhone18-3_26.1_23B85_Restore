@interface DMDEventSubscriptionManager
- (BOOL)setEventSubscriptionRegistrations:(id)registrations error:(id *)error;
- (DMDEventSubscriptionManager)init;
- (id)eventStatusesByPayloadIdentifierSinceStartDate:(id)date organizationIdentifier:(id)identifier;
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

- (BOOL)setEventSubscriptionRegistrations:(id)registrations error:(id *)error
{
  registrationsCopy = registrations;
  eventSubscriptionsByIdentifier = [(DMDEventSubscriptionManager *)self eventSubscriptionsByIdentifier];
  allKeys = [eventSubscriptionsByIdentifier allKeys];
  v23 = [allKeys mutableCopy];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = registrationsCopy;
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
        payloadMetadata = [v9 payloadMetadata];
        organization = [payloadMetadata organization];
        identifier = [organization identifier];

        identifier2 = [payloadMetadata identifier];
        identifier3 = [v9 identifier];
        eventSubscriptionsByIdentifier2 = [(DMDEventSubscriptionManager *)self eventSubscriptionsByIdentifier];
        v16 = [eventSubscriptionsByIdentifier2 objectForKeyedSubscript:identifier3];

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
          v26 = identifier2;
          v27 = identifier;
          v17 = objc_retainBlock(v25);
          v16 = [[DMDEventSubscriptionRegistrationController alloc] initWithSubscriptionRegistration:v9 streamEventsHandler:v17];
          eventSubscriptionsByIdentifier3 = [(DMDEventSubscriptionManager *)self eventSubscriptionsByIdentifier];
          [eventSubscriptionsByIdentifier3 setObject:v16 forKeyedSubscript:identifier3];

          objc_destroyWeak(&v28);
          objc_destroyWeak(&location);
        }

        [v23 removeObject:identifier3];
      }

      v24 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v24);
  }

  eventSubscriptionsByIdentifier4 = [(DMDEventSubscriptionManager *)self eventSubscriptionsByIdentifier];
  [eventSubscriptionsByIdentifier4 removeObjectsForKeys:v23];

  return 1;
}

- (id)eventStatusesByPayloadIdentifierSinceStartDate:(id)date organizationIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  eventSubscriptionsByIdentifier = [(DMDEventSubscriptionManager *)self eventSubscriptionsByIdentifier];
  v9 = [eventSubscriptionsByIdentifier copy];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100043CA0;
  v16[3] = &unk_1000CF0E8;
  v17 = identifierCopy;
  v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v18 = v10;
  v19 = dateCopy;
  v11 = dateCopy;
  v12 = identifierCopy;
  [v9 enumerateKeysAndObjectsUsingBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

@end