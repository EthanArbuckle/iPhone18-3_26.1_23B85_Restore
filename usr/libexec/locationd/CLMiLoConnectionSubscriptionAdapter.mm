@interface CLMiLoConnectionSubscriptionAdapter
- (CLMiLoConnectionSubscriptionAdapter)initWithMiLoConnectionSubscription:(void *)subscription;
- (void)onMiLoConnectionStatusEventUpdate:(id)update;
- (void)onMiLoDebugResponse:(id)response;
- (void)onMiLoGenericEvent:(id)event;
- (void)onMiLoObservationMetaInfo:(id)info;
- (void)onMiLoPredictionEventUpdate:(id)update;
- (void)onMiLoServiceEventUpdate:(id)update;
@end

@implementation CLMiLoConnectionSubscriptionAdapter

- (CLMiLoConnectionSubscriptionAdapter)initWithMiLoConnectionSubscription:(void *)subscription
{
  v5.receiver = self;
  v5.super_class = CLMiLoConnectionSubscriptionAdapter;
  result = [(CLMiLoConnectionSubscriptionAdapter *)&v5 init];
  if (result)
  {
    result->_subscription = subscription;
  }

  return result;
}

- (void)onMiLoServiceEventUpdate:(id)update
{
  v4 = sub_1005DE15C(update);
  if (v4)
  {
    v5 = v4;
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3D8();
    }

    v6 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v5[1];
      v8[0] = 68289282;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 1026;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onMiloServiceEventUpdate, miloServiceEventType data:%{public}d}", v8, 0x18u);
    }

    sub_1005DE1BC(self->_subscription, v5);
  }
}

- (void)onMiLoPredictionEventUpdate:(id)update
{
  v4 = sub_1005DEAA8(update);
  if (v4)
  {
    v5 = v4;
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3D8();
    }

    v6 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onMiloPredictionEventUpdate}", v7, 0x12u);
    }

    sub_1005DEB08(self->_subscription, v5);
  }
}

- (void)onMiLoDebugResponse:(id)response
{
  v4 = sub_1005DEC78(response);
  if (v4)
  {
    v5 = v4;
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3D8();
    }

    v6 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onMiLoDebugResponse}", v7, 0x12u);
    }

    sub_1005DECD8(self->_subscription, v5);
  }
}

- (void)onMiLoConnectionStatusEventUpdate:(id)update
{
  v4 = sub_1005DEEFC(update);
  if (v4)
  {
    v5 = v4;
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3D8();
    }

    v6 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onMiLoConnectionStatusEventUpdate}", v7, 0x12u);
    }

    sub_1005DEF98(self->_subscription, v5);
  }
}

- (void)onMiLoObservationMetaInfo:(id)info
{
  v4 = sub_1005DF124(info);
  if (v4)
  {
    v5 = v4;
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3D8();
    }

    v6 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *v5;
      v8[0] = 68289282;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 1026;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onMiLoRecordingMetaInfo, event type:%{public}d}", v8, 0x18u);
    }

    sub_1005DF184(self->_subscription, v5);
  }
}

- (void)onMiLoGenericEvent:(id)event
{
  v4 = sub_1005DF440(event);
  if (v4)
  {
    v5 = v4;
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3D8();
    }

    v6 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onMiLoGenericEventResponse}", v7, 0x12u);
    }

    sub_1005DF4A0(self->_subscription, v5);
  }
}

@end