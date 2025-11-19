@interface DMDTestEventStream
- (id)_testEvent;
- (void)startNotificationStreamWithEventsHandler:(id)a3;
@end

@implementation DMDTestEventStream

- (void)startNotificationStreamWithEventsHandler:(id)a3
{
  v5 = a3;
  v6 = [(DMDTestEventStream *)self _testEvent];
  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  (*(a3 + 2))(v5, v7);
}

- (id)_testEvent
{
  v2 = [[DMDEventStreamEvent alloc] initWithEventType:@"com.apple.event.management.test" details:0];

  return v2;
}

@end