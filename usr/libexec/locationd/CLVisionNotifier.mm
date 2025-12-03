@interface CLVisionNotifier
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (BOOL)hasSessionTimedOut:(double)out;
- (CLVisionNotifier)init;
- (void)beginService;
- (void)closeSessionWithState:(unint64_t)state fromClient:(id)client;
- (void)deregisterForVisionNotifications:(id)notifications;
- (void)endService;
- (void)registerForVisionNotifications:(id)notifications;
- (void)sendARSessionState:(id)state fromClient:(id)client;
- (void)sendVIOEstimation:(id)estimation fromClient:(id)client;
- (void)sendVLLocalizationResult:(id)result fromClient:(id)client;
- (void)startSessionWithState:(unint64_t)state fromClient:(id)client;
- (void)updateClientsWithHandler:(id)handler;
@end

@implementation CLVisionNotifier

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_102656658 != -1)
  {
    sub_101899B20();
  }

  return qword_102656650;
}

- (CLVisionNotifier)init
{
  v3.receiver = self;
  v3.super_class = CLVisionNotifier;
  return [(CLVisionNotifier *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLVisionNotifierServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLVisionNotifierClientProtocol];
}

- (void)beginService
{
  [-[CLVisionNotifier universe](self "universe")];
  [(CLVisionNotifier *)self setArSessionActive:0];
  [(CLVisionNotifier *)self setLastARKitUpdate:-1.0];
  -[CLVisionNotifier setSessionTimer:](self, "setSessionTimer:", [objc_msgSend(-[CLVisionNotifier universe](self "universe")]);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004D0EA0;
  v5[3] = &unk_102447418;
  v5[4] = self;
  [(CLTimer *)[(CLVisionNotifier *)self sessionTimer] setHandler:v5];
  [(CLVisionNotifier *)self setClients:+[NSMutableSet set]];
  if (qword_1025D46A0 != -1)
  {
    sub_101899B34();
  }

  v3 = qword_1025D46A8;
  if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "CLVN,beginService,vision notifier started.", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101899B5C();
  }
}

- (void)endService
{
  [-[CLVisionNotifier universe](self "universe")];
  [(CLVisionNotifier *)self setArSessionActive:0];
  [(CLVisionNotifier *)self setLastARKitUpdate:-1.0];
  [(CLTimer *)[(CLVisionNotifier *)self sessionTimer] invalidate];
  [(CLVisionNotifier *)self setSessionTimer:0];
  [(CLVisionNotifier *)self setClients:0];
  if (qword_1025D46A0 != -1)
  {
    sub_101899C30();
  }

  v3 = qword_1025D46A8;
  if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "CLVN,endService,vision notifier ended.", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101899D78();
  }
}

- (void)registerForVisionNotifications:(id)notifications
{
  [-[CLVisionNotifier universe](self "universe")];
  clients = self->_clients;

  [(NSMutableSet *)clients addObject:notifications];
}

- (void)deregisterForVisionNotifications:(id)notifications
{
  [-[CLVisionNotifier universe](self "universe")];
  clients = self->_clients;

  [(NSMutableSet *)clients removeObject:notifications];
}

- (void)sendARSessionState:(id)state fromClient:(id)client
{
  [-[CLVisionNotifier universe](self "universe")];
  v10 = 0;
  if (state && [state length] == 8)
  {
    [state getBytes:&v10 length:8];
    if (v10 == 1)
    {
      if ([(CLVisionNotifier *)self isARSessionActive])
      {
        if (qword_1025D46A0 != -1)
        {
          sub_101899B34();
        }

        v7 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLVN,sendARSessionState:fromClient:,New session has started without end notification of previous session.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101899E4C();
        }

        [(CLVisionNotifier *)self closeSessionWithState:2 fromClient:client];
      }

      [(CLVisionNotifier *)self startSessionWithState:v10 fromClient:client];
    }

    else
    {
      [(CLVisionNotifier *)self closeSessionWithState:v10 fromClient:client];
    }
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_101899C30();
    }

    v8 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLVN,sendARSessionState:fromClient:,Could not decode payload}", buf, 0x12u);
      if (qword_1025D46A0 != -1)
      {
        sub_101899B34();
      }
    }

    v9 = qword_1025D46A8;
    if (os_signpost_enabled(qword_1025D46A8))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLVN,sendARSessionState:fromClient:,Could not decode payload", "{msg%{public}.0s:CLVN,sendARSessionState:fromClient:,Could not decode payload}", buf, 0x12u);
    }
  }
}

- (void)sendVIOEstimation:(id)estimation fromClient:(id)client
{
  [-[CLVisionNotifier universe](self "universe")];
  v13 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObject:objc_opt_class()] fromData:estimation error:&v13];
  if (v13 || (v8 = v7) == 0)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_101899B34();
    }

    v10 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v13;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLVN,sendVIOEstimation:fromClient:,Could not decode payload, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D46A0 != -1)
      {
        sub_101899B34();
      }
    }

    v11 = qword_1025D46A8;
    if (os_signpost_enabled(qword_1025D46A8))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v13;
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLVN,sendVIOEstimation:fromClient:,Could not decode payload", "{msg%{public}.0s:CLVN,sendVIOEstimation:fromClient:,Could not decode payload, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    if (![(CLVisionNotifier *)self isARSessionActive])
    {
      if (qword_1025D46A0 != -1)
      {
        sub_101899B34();
      }

      v9 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLVN,sendVIOEstimation:fromClient:,Payload was sent without start notification of current session", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101899F20();
      }

      [(CLVisionNotifier *)self startSessionWithState:1 fromClient:client];
    }

    [(CLVisionNotifier *)self setLastARKitUpdate:sub_1000081AC()];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1004D1634;
    v12[3] = &unk_102458EB0;
    v12[4] = v8;
    v12[5] = client;
    [(CLVisionNotifier *)self updateClientsWithHandler:v12];
  }
}

- (void)sendVLLocalizationResult:(id)result fromClient:(id)client
{
  [-[CLVisionNotifier universe](self "universe")];
  v13 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:[NSSet setWithObject:objc_opt_class()] fromData:result error:&v13];
  if (v13 || (v8 = v7) == 0)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_101899B34();
    }

    v10 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v13;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CLVN,sendVLLocalizationResult:fromClient:,Could not decode payload, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D46A0 != -1)
      {
        sub_101899B34();
      }
    }

    v11 = qword_1025D46A8;
    if (os_signpost_enabled(qword_1025D46A8))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v13;
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLVN,sendVLLocalizationResult:fromClient:,Could not decode payload", "{msg%{public}.0s:CLVN,sendVLLocalizationResult:fromClient:,Could not decode payload, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    if (![(CLVisionNotifier *)self isARSessionActive])
    {
      if (qword_1025D46A0 != -1)
      {
        sub_101899B34();
      }

      v9 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLVN,sendVLLocalizationResult:fromClient:,Payload was sent without start notification of current session", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101899FF4();
      }

      [(CLVisionNotifier *)self startSessionWithState:1 fromClient:client];
    }

    [(CLVisionNotifier *)self setLastARKitUpdate:sub_1000081AC()];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1004D1900;
    v12[3] = &unk_102458EB0;
    v12[4] = v8;
    v12[5] = client;
    [(CLVisionNotifier *)self updateClientsWithHandler:v12];
  }
}

- (void)updateClientsWithHandler:(id)handler
{
  [-[CLVisionNotifier universe](self "universe")];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  clients = self->_clients;
  v6 = [(NSMutableSet *)clients countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(clients);
        }

        (*(handler + 2))(handler, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)clients countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)startSessionWithState:(unint64_t)state fromClient:(id)client
{
  [-[CLVisionNotifier universe](self "universe")];
  [(CLVisionNotifier *)self setArSessionActive:1];
  [(CLVisionNotifier *)self setLastARKitUpdate:sub_1000081AC()];
  [(CLTimer *)[(CLVisionNotifier *)self sessionTimer] setNextFireDelay:5.0 interval:5.0];
  if (qword_1025D46A0 != -1)
  {
    sub_101899C30();
  }

  v7 = qword_1025D46A8;
  if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    stateCopy = state;
    v11 = 2082;
    uTF8String = [client UTF8String];
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLVN,startSessionWithState:%{public}lu fromClient:%{public}s", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189A0C8(client, state);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1004D1BA0;
  v8[3] = &unk_102458ED8;
  v8[4] = client;
  v8[5] = state;
  [(CLVisionNotifier *)self updateClientsWithHandler:v8];
}

- (void)closeSessionWithState:(unint64_t)state fromClient:(id)client
{
  [-[CLVisionNotifier universe](self "universe")];
  [(CLVisionNotifier *)self setArSessionActive:0];
  [(CLVisionNotifier *)self setLastARKitUpdate:-1.0];
  [(CLTimer *)[(CLVisionNotifier *)self sessionTimer] setNextFireDelay:1.79769313e308 interval:1.79769313e308];
  if (qword_1025D46A0 != -1)
  {
    sub_101899C30();
  }

  v7 = qword_1025D46A8;
  if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    stateCopy = state;
    v11 = 2082;
    uTF8String = [client UTF8String];
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLVN,closeSessionWithState:%{public}lu fromClient:%{public}s", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189A1D4(client, state);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1004D1D34;
  v8[3] = &unk_102458ED8;
  v8[4] = client;
  v8[5] = state;
  [(CLVisionNotifier *)self updateClientsWithHandler:v8];
}

- (BOOL)hasSessionTimedOut:(double)out
{
  [(CLVisionNotifier *)self lastARKitUpdate];
  if (v5 < 0.0)
  {
    return 1;
  }

  [(CLVisionNotifier *)self lastARKitUpdate];
  return vabdd_f64(out, v7) > 10.0;
}

@end