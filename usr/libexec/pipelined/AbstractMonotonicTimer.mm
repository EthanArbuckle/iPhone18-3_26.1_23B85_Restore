@interface AbstractMonotonicTimer
- (AbstractMonotonicTimer)init;
- (AbstractMonotonicTimer)initWithName:(id)a3;
- (duration<long)delay;
- (duration<long)interval;
- (void)abstractFunctionCalled:(SEL)a3;
- (void)onQueueInvalidate;
- (void)onQueueTick;
- (void)pause;
- (void)resume;
- (void)setDelay:(duration<long)long;
- (void)setEventHandler:(id)a3 onQueue:(id)a4;
- (void)setInterval:(duration<long)long;
@end

@implementation AbstractMonotonicTimer

- (AbstractMonotonicTimer)init
{
  [(AbstractMonotonicTimer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (AbstractMonotonicTimer)initWithName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AbstractMonotonicTimer;
  v5 = [(AbstractMonotonicTimer *)&v10 init];
  if (v5 && (v6 = dispatch_queue_create([v4 UTF8String], 0), q = v5->_q, v5->_q = v6, q, v5->_q))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)abstractFunctionCalled:(SEL)a3
{
  v3 = NSStringFromSelector(a3);
  [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass", v3];
}

- (void)resume
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FD260;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_sync(q, block);
}

- (void)pause
{
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FD2DC;
  block[3] = &unk_100432828;
  block[4] = self;
  dispatch_sync(q, block);
}

- (void)onQueueInvalidate
{
  handler = self->_handler;
  self->_handler = 0;

  handlerQ = self->_handlerQ;
  self->_handlerQ = 0;
}

- (duration<long)delay
{
  v8.__rep_ = -1;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002FD3EC;
  block[3] = &unk_100448838;
  v6 = self;
  v7 = &v8;
  v3 = v6;
  dispatch_sync(q, block);

  return v8;
}

- (void)setDelay:(duration<long)long
{
  rep = a3.__rep_;
  if (a3.__rep_ < 0)
  {
    sub_1000474A4(v8, "");
    sub_1000D8214("Negative delays are unsupported: ", &v10);
    sub_10023F7EC(&rep, &v11);
    sub_1000E661C(v8, &v10, 2);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v8[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v10.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  q = self->_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002FD620;
  v5[3] = &unk_100448870;
  v5[4] = self;
  v5[5] = a3.__rep_;
  dispatch_sync(q, v5);
}

- (duration<long)interval
{
  v8.__rep_ = -1;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002FD6EC;
  block[3] = &unk_100448890;
  v6 = self;
  v7 = &v8;
  v3 = v6;
  dispatch_sync(q, block);

  return v8;
}

- (void)setInterval:(duration<long)long
{
  rep = a3.__rep_;
  if (a3.__rep_ < 0)
  {
    sub_1000474A4(v8, "");
    sub_100232548("Negative intervals are unsupported: ", &v10);
    sub_10023F7EC(&rep, &v11);
    sub_1000E661C(v8, &v10, 2);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v8[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v10.__r_.__value_.__l.__data_);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  q = self->_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002FD90C;
  v5[3] = &unk_100448870;
  v5[4] = self;
  v5[5] = a3.__rep_;
  dispatch_sync(q, v5);
}

- (void)setEventHandler:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FDA10;
  block[3] = &unk_1004488C8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(q, block);
}

- (void)onQueueTick
{
  handlerQ = self->_handlerQ;
  if (handlerQ)
  {
    handler = self->_handler;
    if (handler)
    {
      dispatch_async(handlerQ, handler);
    }
  }
}

@end