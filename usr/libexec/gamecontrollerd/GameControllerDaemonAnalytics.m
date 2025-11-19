@interface GameControllerDaemonAnalytics
- (BOOL)sendEvent:(id)a3 withXPCPayloadBuilder:(id)a4;
- (void)sendEvent:(id)a3 withXPCPayload:(id)a4;
@end

@implementation GameControllerDaemonAnalytics

- (void)sendEvent:(id)a3 withXPCPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  [a3 UTF8String];
  analytics_send_event();
}

- (BOOL)sendEvent:(id)a3 withXPCPayloadBuilder:(id)a4
{
  v5 = a3;
  v6 = a3;
  v7 = a4;
  [v5 UTF8String];
  LOBYTE(v5) = analytics_send_event_lazy();

  return v5;
}

@end