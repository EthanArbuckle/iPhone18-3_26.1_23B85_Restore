@interface DispatchMonotonicTimer
- (DispatchMonotonicTimer)initWithName:(id)name;
- (void)dealloc;
- (void)implOnQueuePause;
- (void)implOnQueueResume;
- (void)implOnQueueUpdateTimer;
- (void)invalidate;
- (void)onQueueInvalidate;
@end

@implementation DispatchMonotonicTimer

- (DispatchMonotonicTimer)initWithName:(id)name
{
  v14.receiver = self;
  v14.super_class = DispatchMonotonicTimer;
  v3 = [(AbstractMonotonicTimer *)&v14 initWithName:name];
  v4 = v3;
  if (v3)
  {
    *(v3 + 12) = 1;
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v3 + 3));
    timer = v4->_timer;
    v4->_timer = v5;

    objc_initWeak(&location, v4);
    v7 = v4->_timer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3321888768;
    handler[2] = sub_1002F6B3C;
    handler[3] = &unk_100448488;
    objc_copyWeak(&to, &location);
    objc_copyWeak(&v12, &to);
    dispatch_source_set_event_handler(v7, handler);
    objc_destroyWeak(&to);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    v8 = v4;
  }

  return v4;
}

- (void)dealloc
{
  dispatch_assert_queue_not_V2(self->super._q);
  q = self->super._q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002F6C84;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_sync(q, block);
  v4.receiver = self;
  v4.super_class = DispatchMonotonicTimer;
  [(DispatchMonotonicTimer *)&v4 dealloc];
}

- (void)invalidate
{
  dispatch_assert_queue_not_V2(self->super._q);
  q = self->super._q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002F6D1C;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_sync(q, block);
}

- (void)onQueueInvalidate
{
  if (self->_suspendCount)
  {
    sub_1000474A4(v5, "");
    sub_100224398("Timer is unbalanced - cannot be cancelled while suspended. cnt = ", &v7);
    sub_10024C4BC(&self->_suspendCount, &v8);
    sub_1000E661C(v5, &v7, 2);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v5[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v7.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  dispatch_source_cancel(self->_timer);
  v3.receiver = self;
  v3.super_class = DispatchMonotonicTimer;
  [(AbstractMonotonicTimer *)&v3 onQueueInvalidate];
  self->_suspendCount = 0;
}

- (void)implOnQueuePause
{
  if (self->_suspendCount)
  {
    sub_1000474A4(v5, "");
    sub_10022679C("Cannot suspend an already-suspended timer. cnt = ", &buf);
    sub_10024C4BC(&self->_suspendCount, &v8);
    sub_1000E661C(v5, &buf, 2);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_9:
        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_13:
        operator delete(v5[0]);
LABEL_10:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(buf.__r_.__value_.__l.__data_);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  dispatch_suspend(self->_timer);
  ++self->_suspendCount;
  if (qword_10045B050 != -1)
  {
    sub_1003870F0();
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "dispatch timer paused", &buf, 2u);
  }
}

- (void)implOnQueueResume
{
  if (qword_10045B050 != -1)
  {
    sub_100387118();
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    rep = self->super._delay.__rep_;
    v5 = self->super._interval.__rep_;
    LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
    *(buf.__r_.__value_.__r.__words + 4) = rep;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "resume dispatch timer. delay = %lld ns, interval = %lld ns", &buf, 0x16u);
  }

  if (self->_suspendCount != 1)
  {
    sub_1000474A4(v7, "");
    sub_1002B218C("Cannot resume a non-suspended timer. cnt = ", &buf);
    sub_10024C4BC(&self->_suspendCount, &v10);
    sub_1000E661C(v7, &buf, 2);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_9:
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_13:
        operator delete(v7[0]);
LABEL_10:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(buf.__r_.__value_.__l.__data_);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  dispatch_resume(self->_timer);
  --self->_suspendCount;
}

- (void)implOnQueueUpdateTimer
{
  rep = self->super._interval.__rep_;
  if (qword_10045B050 != -1)
  {
    sub_100387118();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v5 = self->super._delay.__rep_;
    v6 = self->super._interval.__rep_;
    LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Updating timer with delay = %lld ns, interval = %lld ns", &buf, 0x16u);
  }

  timer = self->_timer;
  v8 = self->super._delay.__rep_;
  v11 = v8;
  if (v8 < 0)
  {
    sub_1000474A4(v13, "");
    sub_100050FC8("Do not support negative delays: ", &buf);
    sub_10023F7EC(&v11, &v16);
    sub_1000E661C(v13, &buf, 2);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_10:
        if ((v14 & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_19:
        operator delete(v13[0]);
LABEL_11:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(buf.__r_.__value_.__l.__data_);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = -1;
  }

  else
  {
    v9 = dispatch_time(0, v8);
  }

  if (rep == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = -1;
  }

  else
  {
    v10 = rep;
  }

  dispatch_source_set_timer(timer, v9, v10, 0);
}

@end