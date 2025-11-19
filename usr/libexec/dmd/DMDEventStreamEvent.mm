@interface DMDEventStreamEvent
- (DMDEventStreamEvent)initWithEventType:(id)a3 details:(id)a4;
- (id)description;
- (id)eventStatusMessageWithPayloadIdentifier:(id)a3;
@end

@implementation DMDEventStreamEvent

- (DMDEventStreamEvent)initWithEventType:(id)a3 details:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = DMDEventStreamEvent;
  v8 = [(DMDEventStreamEvent *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    eventType = v8->_eventType;
    v8->_eventType = v9;

    v11 = [v7 copy];
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

- (id)eventStatusMessageWithPayloadIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:4];
  [v5 setObject:v4 forKeyedSubscript:DMFDeclarationEventsMessageInReplyToKey];

  v6 = [(DMDEventStreamEvent *)self eventType];
  [v5 setObject:v6 forKeyedSubscript:DMFDeclarationEventsMessageEventTypeKey];

  v7 = [(DMDEventStreamEvent *)self timestamp];
  [v5 setObject:v7 forKeyedSubscript:DMFDeclarationEventsMessageEventTimestampKey];

  v8 = [(DMDEventStreamEvent *)self details];
  [v5 setObject:v8 forKeyedSubscript:DMFDeclarationEventsMessageEventPayloadKey];

  return v5;
}

@end