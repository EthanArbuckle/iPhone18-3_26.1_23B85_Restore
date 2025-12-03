@interface CLLocationStreamer
+ (BOOL)isSupported;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLLocationStreamer)init;
- (id).cxx_construct;
- (void)beginService;
- (void)endService;
- (void)failedToSendMessage:(id)message withError:(id)error isFatal:(BOOL)fatal;
- (void)onLocationNotification:(const int *)notification withData:(const void *)data;
- (void)onMotionStateNotification:(const int *)notification withData:(const NotificationData *)data;
- (void)pairedDeviceIsNearby:(BOOL)nearby;
- (void)receivedMessageOfType:(id)type withPayload:(id)payload;
- (void)reevaluateMotionSubscription;
- (void)sendAliveAgainMessage;
- (void)sendMotionState;
- (void)setClientActivityTypeAirborneActive:(BOOL)active;
- (void)setClientActivityTypeFitnessActive:(BOOL)active;
- (void)setClientMapMatchingActive:(BOOL)active;
- (void)setEmergencyEnablementAssertionActive:(BOOL)active;
- (void)startMotionAlarm;
- (void)startUpdatingLocationWithGranularity:(int)granularity includeMotion:(BOOL)motion inFitnessSession:(BOOL)session inAirborneSession:(BOOL)airborneSession emergencyEnablementAssertionActive:(BOOL)active hasMapMatching:(BOOL)matching;
- (void)stopLocation;
- (void)stopMotionAlarm;
- (void)successfullySentMessage:(id)message;
- (void)unregisterAllLocationNotifications;
@end

@implementation CLLocationStreamer

- (void)stopLocation
{
  [-[CLLocationStreamer universe](self "universe")];
  [(CLLocationStreamer *)self unregisterAllLocationNotifications];
  [(CLLocationStreamer *)self setEmergencyEnablementAssertionActive:0];
  [(CLLocationStreamer *)self setCurrentGranularity:0];
  [(CLLocationStreamer *)self setLocationUpdatesIncludeMotionState:0];
  [(CLLocationStreamer *)self reevaluateMotionSubscription];
  [(CLLocationStreamer *)self setClientActivityTypeFitnessActive:0];
  [(CLLocationStreamer *)self setClientActivityTypeAirborneActive:0];
  [(CLLocationStreamer *)self setClientMapMatchingActive:0];
  ptr = self->_locationAssertion.__ptr_;
  [*(ptr + 1) setNextFireDelay:1.79769313e308];
  v4 = *ptr;
  *ptr = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v5 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Shut down location streaming}", v6, 0x12u);
  }
}

- (void)unregisterAllLocationNotifications
{
  [-[CLLocationStreamer universe](self "universe")];
  [*(self->_locationClient.__ptr_ + 2) unregister:*(self->_locationClient.__ptr_ + 1) forNotification:0];
  [*(self->_locationClient.__ptr_ + 2) unregister:*(self->_locationClient.__ptr_ + 1) forNotification:1];
  ptr = self->_locationClient.__ptr_;
  v5 = *(ptr + 1);
  v4 = *(ptr + 2);

  [v4 unregister:v5 forNotification:2];
}

- (void)reevaluateMotionSubscription
{
  if ([(CLLocationStreamer *)self motionAlarmActive]|| [(CLLocationStreamer *)self locationUpdatesIncludeMotionState])
  {
    if (![(CLLocationStreamer *)self isSubscribedForMotion])
    {
      [*(self->_motionStateClient.__ptr_ + 2) register:*(self->_motionStateClient.__ptr_ + 1) forNotification:0 registrationInfo:0];
      [(CLLocationStreamer *)self setIsSubscribedForMotion:1];
    }
  }

  else if ([(CLLocationStreamer *)self isSubscribedForMotion])
  {
    [*(self->_motionStateClient.__ptr_ + 2) unregister:*(self->_motionStateClient.__ptr_ + 1) forNotification:0];
    ptr = self->_lastMotionActivity.__ptr_;
    self->_lastMotionActivity.__ptr_ = 0;
    if (ptr)
    {
      operator delete();
    }

    [(CLLocationStreamer *)self setIsSubscribedForMotion:0];
    [(CLTimer *)[(CLLocationStreamer *)self resendMotionStateTimer] setNextFireDelay:1.79769313e308];
  }

  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    isSubscribedForMotion = [(CLLocationStreamer *)self isSubscribedForMotion];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Motion state subscription, is subscribed:%{public}d}", v5, 0x18u);
  }
}

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
  if (qword_10265A5F8 != -1)
  {
    sub_10194FEB0();
  }

  return qword_10265A5F0;
}

+ (BOOL)isSupported
{
  if (qword_10265A608 != -1)
  {
    sub_10194FEC4();
  }

  return byte_10265A600;
}

- (CLLocationStreamer)init
{
  v3.receiver = self;
  v3.super_class = CLLocationStreamer;
  return [(CLLocationStreamer *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLLocationStreamerServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLLocationStreamerClientProtocol];
}

- (void)beginService
{
  [-[CLLocationStreamer universe](self "universe")];
  [(CLLocationStreamer *)self setCurrentGranularity:0];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100836A08;
  v3[3] = &unk_102447418;
  v3[4] = self;
  v3[5] = v3;
  v3[6] = [-[CLLocationStreamer universe](self "universe")];
  sub_1008368B0();
}

- (void)endService
{
  [-[CLLocationStreamer universe](self "universe")];
  ptr = self->_locationClient.__ptr_;
  self->_locationClient.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  sub_100836F40(&self->_locationAssertion, 0);
  sub_100836F40(&self->_motionAlarmAssertion, 0);
  v4 = self->_lastMotionActivity.__ptr_;
  self->_lastMotionActivity.__ptr_ = 0;
  if (v4)
  {
    operator delete();
  }

  [(CLTimer *)[(CLLocationStreamer *)self resendMotionStateTimer] invalidate];
  [(CLLocationStreamer *)self setResendMotionStateTimer:0];
  [(CLLocationStreamingConnectionManagerServiceProtocol *)[(CLLocationStreamer *)self streamingConnection] retireClient:self];
  [(CLLocationStreamer *)self setStreamingConnection:0];
  [(CLTimer *)[(CLLocationStreamer *)self aliveAgainThrottleTimer] invalidate];

  [(CLLocationStreamer *)self setAliveAgainThrottleTimer:0];
}

- (void)sendAliveAgainMessage
{
  v3 = sub_1000206B4();
  Current = CFAbsoluteTimeGetCurrent();
  sub_100116D68(v3, "kCLLocationStreamerLastAliveAgainMessageTimestamp", &Current);
  v4 = *sub_1000206B4();
  (*(v4 + 944))();
  v5 = objc_alloc_init(CLLocationStreamingMessage);
  [(CLLocationStreamingMessage *)v5 setMessageType:@"kCLLocationStreamingMessageTypeAliveAgain"];
  [(CLLocationStreamingMessage *)v5 setPriority:300];
  v8[0] = IDSSendMessageOptionTimeoutKey;
  v6 = [NSNumber numberWithDouble:30.0];
  v8[1] = IDSSendMessageOptionForceLocalDeliveryKey;
  v8[2] = IDSSendMessageOptionEncryptPayloadKey;
  v9[0] = v6;
  v9[1] = &__kCFBooleanTrue;
  v9[2] = &__kCFBooleanTrue;
  v9[3] = &__kCFBooleanTrue;
  v8[3] = IDSSendMessageOptionRequireBluetoothKey;
  v8[4] = IDSSendMessageOptionQueueOneIdentifierKey;
  v9[4] = @"kCLLocationStreamingMessageTypeAliveAgain";
  [(CLLocationStreamingMessage *)v5 setIdsOptions:[NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5]];
  [(CLLocationStreamingConnectionManagerServiceProtocol *)[(CLLocationStreamer *)self streamingConnection] sendMessage:v5];
}

- (void)setEmergencyEnablementAssertionActive:(BOOL)active
{
  if (self->_emergencyEnablementAssertionActive != active)
  {
    activeCopy = active;
    if (qword_1025D47B0 != -1)
    {
      sub_10194FF00();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 68289282;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 1026;
      v10 = activeCopy;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLEEA change, needed:%{public}hhd}", v6, 0x18u);
    }

    [objc_msgSend(objc_msgSend(-[CLLocationStreamer universe](self "universe")];
    self->_emergencyEnablementAssertionActive = activeCopy;
  }
}

- (void)setClientMapMatchingActive:(BOOL)active
{
  if (self->_clientMapMatchingActive != active)
  {
    activeCopy = active;
    if (qword_1025D47B0 != -1)
    {
      sub_10194FF00();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 68289282;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 1026;
      v13 = activeCopy;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMM Setting client map matching, state:%{public}hhd}", v9, 0x18u);
    }

    self->_clientMapMatchingActive = activeCopy;
    ptr = self->_locationClient.__ptr_;
    v8 = *(ptr + 1);
    v7 = *(ptr + 2);
    if (activeCopy)
    {
      [v7 register:v8 forNotification:17 registrationInfo:0];
    }

    else
    {
      [v7 unregister:v8 forNotification:17];
    }
  }
}

- (void)setClientActivityTypeFitnessActive:(BOOL)active
{
  if (self->_clientActivityTypeFitnessActive != active)
  {
    activeCopy = active;
    if (qword_1025D47B0 != -1)
    {
      sub_10194FF00();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 68289282;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 1026;
      v13 = activeCopy;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting fitness activity type, state:%{public}hhd}", v9, 0x18u);
    }

    self->_clientActivityTypeFitnessActive = activeCopy;
    ptr = self->_locationClient.__ptr_;
    v8 = *(ptr + 1);
    v7 = *(ptr + 2);
    if (activeCopy)
    {
      [v7 register:v8 forNotification:28 registrationInfo:0];
    }

    else
    {
      [v7 unregister:v8 forNotification:28];
    }
  }
}

- (void)setClientActivityTypeAirborneActive:(BOOL)active
{
  if (self->_clientActivityTypeAirborneActive != active)
  {
    activeCopy = active;
    if (qword_1025D47B0 != -1)
    {
      sub_10194FF00();
    }

    v5 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 68289282;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 1026;
      v13 = activeCopy;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting airborne activity type, state:%{public}hhd}", v9, 0x18u);
    }

    self->_clientActivityTypeAirborneActive = activeCopy;
    ptr = self->_locationClient.__ptr_;
    v8 = *(ptr + 1);
    v7 = *(ptr + 2);
    if (activeCopy)
    {
      [v7 register:v8 forNotification:29 registrationInfo:0];
    }

    else
    {
      [v7 unregister:v8 forNotification:29];
    }
  }
}

- (void)startUpdatingLocationWithGranularity:(int)granularity includeMotion:(BOOL)motion inFitnessSession:(BOOL)session inAirborneSession:(BOOL)airborneSession emergencyEnablementAssertionActive:(BOOL)active hasMapMatching:(BOOL)matching
{
  matchingCopy = matching;
  activeCopy = active;
  airborneSessionCopy = airborneSession;
  sessionCopy = session;
  motionCopy = motion;
  v13 = *&granularity;
  [-[CLLocationStreamer universe](self "universe")];
  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v15 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    [(CLLocationStreamer *)self currentGranularity];
    v19 = 68289538;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2050;
    v24 = v13;
    v25 = 2050;
    currentGranularity = [(CLLocationStreamer *)self currentGranularity];
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Starting, new granularity:%{public, location:CLLocationStreamingGranularity}lld, current granularity:%{public, location:CLLocationStreamingGranularity}lld}", &v19, 0x26u);
  }

  if (v13)
  {
    [(CLLocationStreamer *)self setLocationUpdatesIncludeMotionState:motionCopy];
    [(CLLocationStreamer *)self reevaluateMotionSubscription];
    [(CLLocationStreamer *)self setClientActivityTypeFitnessActive:sessionCopy];
    [(CLLocationStreamer *)self setClientActivityTypeAirborneActive:airborneSessionCopy];
    [(CLLocationStreamer *)self setEmergencyEnablementAssertionActive:activeCopy];
    [(CLLocationStreamer *)self setClientMapMatchingActive:matchingCopy];
    if ([(CLLocationStreamer *)self currentGranularity]== v13)
    {
      goto LABEL_9;
    }

    [(CLLocationStreamer *)self unregisterAllLocationNotifications];
    if (v13 < 4)
    {
      [*(self->_locationClient.__ptr_ + 2) register:*(self->_locationClient.__ptr_ + 1) forNotification:(3 - v13) registrationInfo:0];
      [(CLLocationStreamer *)self setCurrentGranularity:v13];
LABEL_9:
      sub_1008378A4(self->_locationAssertion.__ptr_);
    }

    if (qword_1025D47B0 != -1)
    {
      sub_10194FED8();
    }

    v16 = qword_1025D47B8;
    v17 = v13;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v19 = 68289282;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2050;
      v24 = v13;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected granularity, granularity:%{public, location:CLLocationStreamingGranularity}lld}", &v19, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10194FED8();
      }
    }

    v18 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v19 = 68289282;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2050;
      v24 = v17;
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected granularity", "{msg%{public}.0s:Unexpected granularity, granularity:%{public, location:CLLocationStreamingGranularity}lld}", &v19, 0x1Cu);
    }
  }

  else
  {
    [(CLLocationStreamer *)self stopLocation];
  }
}

- (void)onLocationNotification:(const int *)notification withData:(const void *)data
{
  [-[CLLocationStreamer universe](self "universe")];
  if (*notification > 2u)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10194FF00();
    }

    v10 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      v11 = *notification;
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected notification, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", buf, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_10194FED8();
      }
    }

    v12 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      v13 = *notification;
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v13;
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected notification", "{msg%{public}.0s:Unexpected notification, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", buf, 0x1Cu);
    }
  }

  else
  {
    v7 = *(data + 11);
    if (v7 <= 0.0)
    {
      v9 = 15.0;
    }

    else
    {
      v8 = v7 + *(data + 76);
      v9 = v8 - CFAbsoluteTimeGetCurrent();
    }

    if (v9 <= 0.0)
    {
      if (qword_1025D47B0 != -1)
      {
        sub_10194FF00();
      }

      v23 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(data + 76);
        v25 = *(data + 11);
        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = v24;
        *&buf[28] = 2050;
        *&buf[30] = v25;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Dropping location due to expiration, timestamp:%{public}f, lifespan:%{public}f}", buf, 0x26u);
      }
    }

    else
    {
      v14 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
      v15 = [CLLocation alloc];
      v16 = *(data + 7);
      v32 = *(data + 6);
      v33 = v16;
      v34[0] = *(data + 8);
      *(v34 + 12) = *(data + 140);
      v17 = *(data + 3);
      *&buf[32] = *(data + 2);
      v29 = v17;
      v18 = *(data + 5);
      v30 = *(data + 4);
      v31 = v18;
      v19 = *(data + 1);
      *buf = *data;
      *&buf[16] = v19;
      [v14 encodeObject:objc_msgSend(v15 forKey:{"initWithClientLocation:", buf), @"kCLLocationStreamingMessageLocationKey"}];
      v20 = objc_alloc_init(NSMutableDictionary);
      [v20 setObject:objc_msgSend(v14 forKeyedSubscript:{"encodedData"), @"kCLLocationStreamingMessageLocationKey"}];
      if ([(CLLocationStreamer *)self locationUpdatesIncludeMotionState])
      {
        ptr = self->_lastMotionActivity.__ptr_;
        if (ptr)
        {
          [v20 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", CLMotionActivity::isMoving(ptr)), @"kCLLocationStreamingMessageInMotionKey"}];
        }
      }

      [v20 setObject:-[CLStreamedLocationPrivate data](-[CLStreamedLocationPrivate initWithDaemonLocationPrivate:]([CLStreamedLocationPrivate alloc] forKeyedSubscript:{"initWithDaemonLocationPrivate:", data + 160), "data"), @"kCLLocationStreamingMessageLocationPrivateKey"}];
      [v20 setObject:-[CLStreamedLocationInternal data](-[CLStreamedLocationInternal initWithDaemonLocation:]([CLStreamedLocationInternal alloc] forKeyedSubscript:{"initWithDaemonLocation:", data), "data"), @"kCLLocationStreamingMessageLocationInternalKey"}];
      v22 = objc_alloc_init(CLLocationStreamingMessage);
      [(CLLocationStreamingMessage *)v22 setMessageType:@"kCLLocationStreamingMessageTypeLocation"];
      [(CLLocationStreamingMessage *)v22 setPayload:v20];
      [(CLLocationStreamingMessage *)v22 setPriority:300];
      v27[0] = [NSNumber numberWithDouble:v9, IDSSendMessageOptionTimeoutKey];
      v27[1] = &__kCFBooleanTrue;
      v26[1] = IDSSendMessageOptionForceLocalDeliveryKey;
      v26[2] = IDSSendMessageOptionEncryptPayloadKey;
      v26[3] = IDSSendMessageOptionRequireBluetoothKey;
      v27[2] = &__kCFBooleanTrue;
      v27[3] = &__kCFBooleanTrue;
      [(CLLocationStreamingMessage *)v22 setIdsOptions:[NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4]];
      [(CLLocationStreamingConnectionManagerServiceProtocol *)[(CLLocationStreamer *)self streamingConnection] sendMessage:v22];
    }
  }
}

- (void)startMotionAlarm
{
  [-[CLLocationStreamer universe](self "universe")];
  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v3 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 1026;
    motionAlarmActive = [(CLLocationStreamer *)self motionAlarmActive];
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Start motion alarm, currently active:%{public}d}", v4, 0x18u);
  }

  sub_1008378A4(self->_motionAlarmAssertion.__ptr_);
}

- (void)stopMotionAlarm
{
  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v3 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    motionAlarmActive = [(CLLocationStreamer *)self motionAlarmActive];
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Stop motion alarm, currently active:%{public}d}", v6, 0x18u);
  }

  [(CLLocationStreamer *)self setMotionAlarmActive:0];
  [(CLLocationStreamer *)self reevaluateMotionSubscription];
  ptr = self->_motionAlarmAssertion.__ptr_;
  [*(ptr + 1) setNextFireDelay:1.79769313e308];
  v5 = *ptr;
  *ptr = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

- (void)sendMotionState
{
  isMoving = CLMotionActivity::isMoving(self->_lastMotionActivity.__ptr_);
  v4 = objc_alloc_init(CLLocationStreamingMessage);
  [(CLLocationStreamingMessage *)v4 setMessageType:@"kCLLocationStreamingMessageTypeMotionAlarmUpdate"];
  v8 = @"kCLLocationStreamingMessageInMotionKey";
  v9 = [NSNumber numberWithBool:isMoving];
  [(CLLocationStreamingMessage *)v4 setPayload:[NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1]];
  [(CLLocationStreamingMessage *)v4 setPriority:300];
  v6[0] = IDSSendMessageOptionTimeoutKey;
  v5 = [NSNumber numberWithDouble:*&qword_10265A610];
  v6[1] = IDSSendMessageOptionForceLocalDeliveryKey;
  v6[2] = IDSSendMessageOptionEncryptPayloadKey;
  v7[0] = v5;
  v7[1] = &__kCFBooleanTrue;
  v6[3] = IDSSendMessageOptionRequireBluetoothKey;
  v7[2] = &__kCFBooleanTrue;
  v7[3] = &__kCFBooleanTrue;
  [(CLLocationStreamingMessage *)v4 setIdsOptions:[NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4]];
  [(CLLocationStreamingConnectionManagerServiceProtocol *)[(CLLocationStreamer *)self streamingConnection] sendMessage:v4];
}

- (void)onMotionStateNotification:(const int *)notification withData:(const NotificationData *)data
{
  if (!*notification)
  {
    if (self->_lastMotionActivity.__ptr_)
    {
      CLMotionActivity::isMoving(self->_lastMotionActivity.__ptr_);
    }

    operator new();
  }

  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v8 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
  {
    v9 = *notification;
    *buf = 68289282;
    *&buf[4] = 0;
    v13[0] = 2082;
    *&v13[1] = "";
    v14 = 1026;
    v15 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected motion notification, notification:%{public}d}", buf, 0x18u);
    if (qword_1025D47B0 != -1)
    {
      sub_10194FED8();
    }
  }

  v10 = qword_1025D47B8;
  if (os_signpost_enabled(qword_1025D47B8))
  {
    v11 = *notification;
    *buf = 68289282;
    *&buf[4] = 0;
    v13[0] = 2082;
    *&v13[1] = "";
    v14 = 1026;
    v15 = v11;
    _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected motion notification", "{msg%{public}.0s:Unexpected motion notification, notification:%{public}d}", buf, 0x18u);
  }
}

- (void)receivedMessageOfType:(id)type withPayload:(id)payload
{
  if ([type isEqual:@"kCLLocationStreamingMessageTypeRequestLocation"])
  {
    v7 = [payload objectForKeyedSubscript:@"kCLLocationStreamingMessageGranularityKey"];
    v8 = [payload objectForKeyedSubscript:@"kCLLocationStreamingMessageIncludeMotionKey"];
    v9 = [payload objectForKeyedSubscript:@"kCLLocationStreamingMessageInFitnessSessionKey"];
    v10 = [payload objectForKeyedSubscript:@"kCLLocationStreamingMessageActivityTypeAirborneKey"];
    v11 = [payload objectForKeyedSubscript:@"kCLLocationStreamingMessageEmergencyEnablementKey"];
    v12 = [payload objectForKeyedSubscript:@"kCLLocationStreamingMessageMapMatching"];
    if (v7)
    {
      v13 = v12;
      [v7 intValue];
      [v8 BOOLValue];
      [v9 BOOLValue];
      [v10 BOOLValue];
      [v11 BOOLValue];
      [v13 BOOLValue];

      [CLLocationStreamer startUpdatingLocationWithGranularity:"startUpdatingLocationWithGranularity:includeMotion:inFitnessSession:inAirborneSession:emergencyEnablementAssertionActive:hasMapMatching:" includeMotion:? inFitnessSession:? inAirborneSession:? emergencyEnablementAssertionActive:? hasMapMatching:?];
    }

    else
    {
      if (qword_1025D47B0 != -1)
      {
        sub_10194FF00();
      }

      v15 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
      {
        v18 = 68289282;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2082;
        uTF8String = [@"kCLLocationStreamingMessageGranularityKey" UTF8String];
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Missing data, key:%{public, location:escape_only}s}", &v18, 0x1Cu);
        if (qword_1025D47B0 != -1)
        {
          sub_10194FED8();
        }
      }

      v16 = qword_1025D47B8;
      if (os_signpost_enabled(qword_1025D47B8))
      {
        uTF8String2 = [@"kCLLocationStreamingMessageGranularityKey" UTF8String];
        v18 = 68289282;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2082;
        uTF8String = uTF8String2;
        _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Missing data", "{msg%{public}.0s:Missing data, key:%{public, location:escape_only}s}", &v18, 0x1Cu);
      }
    }
  }

  else if ([type isEqual:@"kCLLocationStreamingMessageTypeSetMotionAlarm"])
  {
    if ([objc_msgSend(payload objectForKeyedSubscript:{@"kCLLocationStreamingMessageMotionAlarmStateKey", "BOOLValue"}])
    {

      [(CLLocationStreamer *)self startMotionAlarm];
    }

    else
    {

      [(CLLocationStreamer *)self stopMotionAlarm];
    }
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10194FF00();
    }

    v14 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      v18 = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      uTF8String = [type UTF8String];
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Unrecognized message type, type:%{public, location:escape_only}s}", &v18, 0x1Cu);
    }
  }
}

- (void)failedToSendMessage:(id)message withError:(id)error isFatal:(BOOL)fatal
{
  fatalCopy = fatal;
  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v8 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 68289794;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = [objc_msgSend(message "messageType")];
    v14 = 2114;
    errorCopy = error;
    v16 = 1026;
    v17 = fatalCopy;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Message failed to send, type:%{public, location:escape_only}s, error:%{public, location:escape_only}@, fatal:%{public}d}", v9, 0x2Cu);
  }
}

- (void)successfullySentMessage:(id)message
{
  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = [objc_msgSend(message "messageType")];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Message sent, type:%{public, location:escape_only}s}", v5, 0x1Cu);
  }
}

- (void)pairedDeviceIsNearby:(BOOL)nearby
{
  nearbyCopy = nearby;
  if (qword_1025D47B0 != -1)
  {
    sub_10194FF00();
  }

  v5 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = nearbyCopy;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Nearby status change, is nearby:%{public}d}", &v7, 0x18u);
  }

  if (!nearbyCopy)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_10194FED8();
    }

    v6 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Paired device has left us, stopping location}", &v7, 0x12u);
    }

    [(CLLocationStreamer *)self stopLocation];
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end