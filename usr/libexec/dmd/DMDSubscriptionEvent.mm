@interface DMDSubscriptionEvent
+ (id)fetchRequestMatchingEventsFromOrganizationWithIdentifier:(id)identifier;
- (id)dictionaryRepresentation;
@end

@implementation DMDSubscriptionEvent

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  payloadIdentifier = [(DMDSubscriptionEvent *)self payloadIdentifier];

  if (payloadIdentifier)
  {
    payloadIdentifier2 = [(DMDSubscriptionEvent *)self payloadIdentifier];
    [v3 setObject:payloadIdentifier2 forKeyedSubscript:DMFDeclarationEventsMessageInReplyToKey];
  }

  eventType = [(DMDSubscriptionEvent *)self eventType];

  if (eventType)
  {
    eventType2 = [(DMDSubscriptionEvent *)self eventType];
    [v3 setObject:eventType2 forKeyedSubscript:DMFDeclarationEventsMessageEventTypeKey];
  }

  date = [(DMDSubscriptionEvent *)self date];

  if (date)
  {
    date2 = [(DMDSubscriptionEvent *)self date];
    [v3 setObject:date2 forKeyedSubscript:DMFDeclarationEventsMessageEventTimestampKey];
  }

  details = [(DMDSubscriptionEvent *)self details];

  if (details)
  {
    details2 = [(DMDSubscriptionEvent *)self details];
    [v3 setObject:details2 forKeyedSubscript:DMFDeclarationEventsMessageEventPayloadKey];
  }

  return v3;
}

+ (id)fetchRequestMatchingEventsFromOrganizationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  fetchRequest = [self fetchRequest];
  identifierCopy = [NSPredicate predicateWithFormat:@"organization.identifier = %@", identifierCopy];

  [fetchRequest setPredicate:identifierCopy];

  return fetchRequest;
}

@end