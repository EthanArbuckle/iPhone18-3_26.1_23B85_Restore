@interface CLTelephonyCallObserver
- (CLTelephonyCallObserver)initWithQueue:(id)queue helperObj:(CLTelephonyCallObserverHelper *)obj;
- (void)callObserver:(id)observer callChanged:(id)changed;
- (void)shutdown;
@end

@implementation CLTelephonyCallObserver

- (CLTelephonyCallObserver)initWithQueue:(id)queue helperObj:(CLTelephonyCallObserverHelper *)obj
{
  v11.receiver = self;
  v11.super_class = CLTelephonyCallObserver;
  v6 = [(CLTelephonyCallObserver *)&v11 init];
  if (v6)
  {
    v7 = [CXCallObserver alloc];
    v6->_fCallObserver = v7;
    if (v7)
    {
      [(CXCallObserver *)v7 init];
      [(CXCallObserver *)v6->_fCallObserver setDelegate:v6 queue:queue];
      v6->_fHelper = obj;
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_1018C8028();
      }

      v8 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#CLT CXCallObserver alloc failed", v10, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C905C();
      }
    }
  }

  return v6;
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  v5 = [objc_msgSend(observer "calls")];
  if (self->_fHelper)
  {
    v6 = v5;
    if (qword_1025D4870 != -1)
    {
      sub_1018C7FD0();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134349056;
      v9 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLT CXCallObserver call count, %{public}lu", &v8, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C9140(v6);
    }

    if (qword_102636F30)
    {
      (*(*qword_102636F30 + 264))();
      if (qword_102636F30)
      {
        (*(*qword_102636F30 + 264))(qword_102636F30, @"kCallStatusChangeNotification", 0);
      }
    }
  }
}

- (void)shutdown
{
  p_fCallObserver = &self->_fCallObserver;
  fCallObserver = self->_fCallObserver;
  if (fCallObserver)
  {
    [(CXCallObserver *)fCallObserver setDelegate:0 queue:0];

    *p_fCallObserver = 0;
    p_fCallObserver[1] = 0;
  }
}

@end