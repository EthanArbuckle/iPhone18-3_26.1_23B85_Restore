@interface GameControllerDaemonAnalytics
- (BOOL)sendEvent:(id)event withXPCPayloadBuilder:(id)builder;
- (void)sendEvent:(id)event withXPCPayload:(id)payload;
@end

@implementation GameControllerDaemonAnalytics

- (void)sendEvent:(id)event withXPCPayload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
  [event UTF8String];
  analytics_send_event();
}

- (BOOL)sendEvent:(id)event withXPCPayloadBuilder:(id)builder
{
  eventCopy = event;
  eventCopy2 = event;
  builderCopy = builder;
  [eventCopy UTF8String];
  LOBYTE(eventCopy) = analytics_send_event_lazy();

  return eventCopy;
}

@end