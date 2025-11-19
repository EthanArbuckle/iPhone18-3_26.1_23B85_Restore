@interface DMDSubscriptionEvent
+ (id)fetchRequestMatchingEventsFromOrganizationWithIdentifier:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation DMDSubscriptionEvent

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(DMDSubscriptionEvent *)self payloadIdentifier];

  if (v4)
  {
    v5 = [(DMDSubscriptionEvent *)self payloadIdentifier];
    [v3 setObject:v5 forKeyedSubscript:DMFDeclarationEventsMessageInReplyToKey];
  }

  v6 = [(DMDSubscriptionEvent *)self eventType];

  if (v6)
  {
    v7 = [(DMDSubscriptionEvent *)self eventType];
    [v3 setObject:v7 forKeyedSubscript:DMFDeclarationEventsMessageEventTypeKey];
  }

  v8 = [(DMDSubscriptionEvent *)self date];

  if (v8)
  {
    v9 = [(DMDSubscriptionEvent *)self date];
    [v3 setObject:v9 forKeyedSubscript:DMFDeclarationEventsMessageEventTimestampKey];
  }

  v10 = [(DMDSubscriptionEvent *)self details];

  if (v10)
  {
    v11 = [(DMDSubscriptionEvent *)self details];
    [v3 setObject:v11 forKeyedSubscript:DMFDeclarationEventsMessageEventPayloadKey];
  }

  return v3;
}

+ (id)fetchRequestMatchingEventsFromOrganizationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 fetchRequest];
  v6 = [NSPredicate predicateWithFormat:@"organization.identifier = %@", v4];

  [v5 setPredicate:v6];

  return v5;
}

@end