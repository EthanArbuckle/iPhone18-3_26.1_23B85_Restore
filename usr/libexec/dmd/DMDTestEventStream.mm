@interface DMDTestEventStream
- (id)_testEvent;
- (void)startNotificationStreamWithEventsHandler:(id)handler;
@end

@implementation DMDTestEventStream

- (void)startNotificationStreamWithEventsHandler:(id)handler
{
  handlerCopy = handler;
  _testEvent = [(DMDTestEventStream *)self _testEvent];
  v8 = _testEvent;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  (*(handler + 2))(handlerCopy, v7);
}

- (id)_testEvent
{
  v2 = [[DMDEventStreamEvent alloc] initWithEventType:@"com.apple.event.management.test" details:0];

  return v2;
}

@end