@interface RadioCC
- (int)numberOfFields;
- (void)addRadioMitigations;
- (void)calculateAdditionalRadioMitigations;
- (void)calculateMitigation;
- (void)createConnectionToCT;
- (void)createServerConnection;
- (void)dealloc;
- (void)defaultAction;
- (void)defaultCPMSAction;
- (void)sendRadioNotification;
- (void)setAdditionalRadioMitigations;
- (void)setMaxTransmitPower;
@end

@implementation RadioCC

- (void)dealloc
{
  v3 = *(&self->super.currentPower + 1);
  if (v3)
  {
    CFRelease(v3);
  }

  v4.receiver = self;
  v4.super_class = RadioCC;
  [(PidComponent *)&v4 dealloc];
}

- (void)defaultAction
{
  if (dword_1000A21D8 != self->super.previousValue)
  {
    [(RadioCC *)self calculateMitigation];
    [(RadioCC *)self setMaxTransmitPower];
    previousValue = self->super.previousValue;
    if (previousValue - 100 <= 0xFFFFFF9C)
    {
      [(RadioCC *)self sendRadioNotification];
      previousValue = self->super.previousValue;
    }

    dword_1000A21D8 = previousValue;
  }
}

- (void)defaultCPMSAction
{
  if (self->radioNotificationToken != self->super.previousValue)
  {
    v4.receiver = self;
    v4.super_class = RadioCC;
    [(ComponentControl *)&v4 defaultCPMSAction];
    previousValue = self->super.previousValue;
    if (previousValue - 100 <= 0xFFFFFF9C)
    {
      [(RadioCC *)self sendRadioNotification];
      previousValue = self->super.previousValue;
    }

    self->radioNotificationToken = previousValue;
  }
}

- (void)sendRadioNotification
{
  previousValue = self->super.previousValue;
  if (previousValue <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = previousValue;
  }

  if (notify_set_state(self->txPowerLimit, v3) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000536B8();
  }

  if (notify_post("com.apple.cltm.radioNotification"))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000536EC();
    }
  }
}

- (void)calculateMitigation
{
  v2 = *(&self->radioPowerConfiguration + 4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000250EC;
  block[3] = &unk_100085260;
  block[4] = self;
  dispatch_async(v2, block);
}

- (void)createServerConnection
{
  v3 = *(&self->radioQueue + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = _CTServerConnectionCreateWithIdentifier();
  *(&self->radioQueue + 4) = v4;
  if (v4)
  {
    if (byte_1000AB2F8 == 1)
    {
      v5 = v4;
      v6 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> CT connection %p", buf, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100053720();
  }

  v7 = *(&self->radioQueue + 4);
  v8 = *(&self->serverConnection + 4);
  _CTServerConnectionAddToRunLoop();
  v9 = *(&self->radioQueue + 4);
  v10 = kCTDaemonReadyNotification;
  if (_CTServerConnectionRegisterForNotification())
  {
    v11 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100053754(v10, v11);
    }
  }
}

- (void)createConnectionToCT
{
  if (![(ComponentControl *)self isCPMSControlEnabled])
  {
    [(RadioCC *)self createServerConnection];

    [(RadioCC *)self initializeRadio];
  }
}

- (void)setMaxTransmitPower
{
  v2 = *(&self->radioPowerConfiguration + 4);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025484;
  block[3] = &unk_100085260;
  block[4] = self;
  dispatch_async(v2, block);
}

- (void)addRadioMitigations
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000538E8();
  }
}

- (void)calculateAdditionalRadioMitigations
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000538E8();
  }
}

- (void)setAdditionalRadioMitigations
{
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000538E8();
  }
}

- (int)numberOfFields
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5.receiver = self;
    v5.super_class = RadioCC;
    return [(ComponentControl *)&v5 numberOfFields];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = RadioCC;
    return [(ComponentControl *)&v4 numberOfFields]+ 1;
  }
}

@end