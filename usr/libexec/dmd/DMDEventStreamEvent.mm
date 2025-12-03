@interface DMDEventStreamEvent
- (DMDEventStreamEvent)initWithEventType:(id)type details:(id)details;
- (id)description;
- (id)eventStatusMessageWithPayloadIdentifier:(id)identifier;
@end

@implementation DMDEventStreamEvent

- (DMDEventStreamEvent)initWithEventType:(id)type details:(id)details
{
  typeCopy = type;
  detailsCopy = details;
  v16.receiver = self;
  v16.super_class = DMDEventStreamEvent;
  v8 = [(DMDEventStreamEvent *)&v16 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    eventType = v8->_eventType;
    v8->_eventType = v9;

    v11 = [detailsCopy copy];
    details = v8->_details;
    v8->_details = v11;

    v13 = objc_opt_new();
    timestamp = v8->_timestamp;
    v8->_timestamp = v13;
  }

  return v8;
}

- (id)description
{
  v5[0] = @"eventType";
  v5[1] = @"timestamp";
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = DMFObjectDescriptionWithProperties();

  return v3;
}

- (id)eventStatusMessageWithPayloadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:4];
  [v5 setObject:identifierCopy forKeyedSubscript:DMFDeclarationEventsMessageInReplyToKey];

  eventType = [(DMDEventStreamEvent *)self eventType];
  [v5 setObject:eventType forKeyedSubscript:DMFDeclarationEventsMessageEventTypeKey];

  timestamp = [(DMDEventStreamEvent *)self timestamp];
  [v5 setObject:timestamp forKeyedSubscript:DMFDeclarationEventsMessageEventTimestampKey];

  details = [(DMDEventStreamEvent *)self details];
  [v5 setObject:details forKeyedSubscript:DMFDeclarationEventsMessageEventPayloadKey];

  return v5;
}

@end