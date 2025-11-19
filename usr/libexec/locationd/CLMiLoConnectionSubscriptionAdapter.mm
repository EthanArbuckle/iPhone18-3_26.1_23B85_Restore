@interface CLMiLoConnectionSubscriptionAdapter
- (CLMiLoConnectionSubscriptionAdapter)initWithMiLoConnectionSubscription:(void *)a3;
- (void)onMiLoConnectionStatusEventUpdate:(id)a3;
- (void)onMiLoDebugResponse:(id)a3;
- (void)onMiLoGenericEvent:(id)a3;
- (void)onMiLoObservationMetaInfo:(id)a3;
- (void)onMiLoPredictionEventUpdate:(id)a3;
- (void)onMiLoServiceEventUpdate:(id)a3;
@end

@implementation CLMiLoConnectionSubscriptionAdapter

- (CLMiLoConnectionSubscriptionAdapter)initWithMiLoConnectionSubscription:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CLMiLoConnectionSubscriptionAdapter;
  result = [(CLMiLoConnectionSubscriptionAdapter *)&v5 init];
  if (result)
  {
    result->_subscription = a3;
  }

  return result;
}

- (void)onMiLoServiceEventUpdate:(id)a3
{
  v4 = sub_1005DE15C(a3);
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

- (void)onMiLoPredictionEventUpdate:(id)a3
{
  v4 = sub_1005DEAA8(a3);
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

- (void)onMiLoDebugResponse:(id)a3
{
  v4 = sub_1005DEC78(a3);
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

- (void)onMiLoConnectionStatusEventUpdate:(id)a3
{
  v4 = sub_1005DEEFC(a3);
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

- (void)onMiLoObservationMetaInfo:(id)a3
{
  v4 = sub_1005DF124(a3);
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

- (void)onMiLoGenericEvent:(id)a3
{
  v4 = sub_1005DF440(a3);
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