@interface NESMFilterSessionStateIdle
- (NESMFilterSessionStateIdle)init;
- (void)enterWithSession:(id)session;
- (void)handleStartMessage:(id)message;
- (void)handleStop;
@end

@implementation NESMFilterSessionStateIdle

- (void)handleStop
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412546;
    v9 = Property;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ ignoring stop message in state %@", &v8, 0x16u);
  }
}

- (void)handleStartMessage:(id)message
{
  messageCopy = message;
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
    v7 = sub_100083C64(Property, v6);
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
    v12 = sub_100083C64(0, v4);
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
  sub_100082FD8(v9, v10);
}

- (void)enterWithSession:(id)session
{
  v7.receiver = self;
  v7.super_class = NESMFilterSessionStateIdle;
  [(NESMFilterSessionState *)&v7 enterWithSession:session];
  if (self)
  {
    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    Property = 0;
  }

  policySession = [Property policySession];
  if (policySession)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003420C;
    v8[3] = &unk_1000E9C98;
    v8[4] = policySession;
    sub_100031500(NESMPolicyMasterSession, v8);
  }
}

- (NESMFilterSessionStateIdle)init
{
  v3.receiver = self;
  v3.super_class = NESMFilterSessionStateIdle;
  return [(NESMFilterSessionState *)&v3 initWithType:1 andTimeout:0];
}

@end