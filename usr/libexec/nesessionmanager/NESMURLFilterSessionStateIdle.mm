@interface NESMURLFilterSessionStateIdle
- (NESMURLFilterSessionStateIdle)init;
- (void)enterWithSession:(id)session;
- (void)handleStartMessage:(id)message;
@end

@implementation NESMURLFilterSessionStateIdle

- (void)handleStartMessage:(id)message
{
  messageCopy = message;
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
    v7 = sub_10006E94C(Property, v6);
    v9 = objc_getProperty(self, v8, 16, 1);
    if (v7)
    {
LABEL_3:
      v10 = 2;
      goto LABEL_6;
    }

    [v9 setLastStopReason:6];
    v9 = objc_getProperty(self, v11, 16, 1);
  }

  else
  {
    v12 = sub_10006E94C(0, v4);
    v9 = 0;
    if (v12)
    {
      goto LABEL_3;
    }

    [0 setLastStopReason:6];
    v9 = 0;
  }

  v10 = 4;
LABEL_6:
  sub_10006DE84(v9, v10);
}

- (void)enterWithSession:(id)session
{
  v3.receiver = self;
  v3.super_class = NESMURLFilterSessionStateIdle;
  [(NESMURLFilterSessionState *)&v3 enterWithSession:session];
}

- (NESMURLFilterSessionStateIdle)init
{
  v3.receiver = self;
  v3.super_class = NESMURLFilterSessionStateIdle;
  return [(NESMURLFilterSessionState *)&v3 initWithType:1 andTimeout:0];
}

@end