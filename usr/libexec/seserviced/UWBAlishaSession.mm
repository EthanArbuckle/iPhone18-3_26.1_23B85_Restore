@interface UWBAlishaSession
- (void)session:(id)session didUpdateHealthStatus:(int64_t)status;
- (void)session:(id)session relayDCKMessage:(id)message;
@end

@implementation UWBAlishaSession

- (void)session:(id)session relayDCKMessage:(id)message
{
  sessionCopy = session;
  messageCopy = message;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_10024E51C(v8, v10);
  sub_10006A178(v8, v10);
}

- (void)session:(id)session didUpdateHealthStatus:(int64_t)status
{
  sessionCopy = session;
  selfCopy = self;
  sub_10024E700(status);
}

@end