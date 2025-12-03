@interface MSLoggingEvent
- (id)initForEventType:(id)type atTimestamp:(id)timestamp;
@end

@implementation MSLoggingEvent

- (id)initForEventType:(id)type atTimestamp:(id)timestamp
{
  typeCopy = type;
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = MSLoggingEvent;
  v9 = [(MSLoggingEvent *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_eventType, type);
    objc_storeStrong(p_isa + 2, timestamp);
  }

  return p_isa;
}

@end