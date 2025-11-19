@interface DPDPushManager
+ (id)sharedInstance;
- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connectionDidReconnect:(id)a3;
@end

@implementation DPDPushManager

+ (id)sharedInstance
{
  if (qword_10001C890 != -1)
  {
    swift_once();
  }

  v3 = qword_10001D010;

  return v3;
}

- (void)connection:(id)a3 didChangeConnectedStatus:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_10000242C(a3, a4);
}

- (void)connectionDidReconnect:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000025E4(a3);
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v11 = a3;
    v12 = self;
    v10 = 0xF000000000000000;
  }

  sub_100002780(a3, v4, v10);
  sub_100003EA4(v4, v10);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100002A0C(a4);
}

@end