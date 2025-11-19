@interface b515cUnifiedDevice
- (b515cUnifiedDevice)initWithBluetoothAddress:(unint64_t)a3;
- (void)configureUSBCSpatialOnDevice:(BOOL)a3;
- (void)usbcRequestSensorDataOnDevice;
- (void)usbcStopSensorDataOnDevice;
@end

@implementation b515cUnifiedDevice

- (b515cUnifiedDevice)initWithBluetoothAddress:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = b515cUnifiedDevice;
  v4 = [(b515cUnifiedDevice *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(b515cUnifiedDevice *)v4 setBtAddress:a3];
    [(b515cUnifiedDevice *)v5 setAudioStarted:0];
    [(b515cUnifiedDevice *)v5 setIsTimerRunning:0];
    [(b515cUnifiedDevice *)v5 setUsbcTimer:0];
  }

  return v5;
}

- (void)configureUSBCSpatialOnDevice:(BOOL)a3
{
  v3 = a3;
  [(b515cUnifiedDevice *)self setAudioStarted:?];
  if (qword_100B50930 != -1)
  {
    sub_1007FFC98();
  }

  v5 = *(off_100B50928 + 8);
  if (qword_100B508F0 != -1)
  {
    sub_1007FFCAC();
  }

  v6 = sub_1000504C8(off_100B508E8, [(b515cUnifiedDevice *)self btAddress], 0);
  if (v6)
  {
    v7 = v6;
    if ([(b515cUnifiedDevice *)self btAddress])
    {
      v8 = sub_1002D3618([(b515cUnifiedDevice *)self btAddress]);
      v19 = v8;
      v20 = WORD2(v8);
      v9 = sub_10000C7D0();
      if (v3)
      {
        (*(*v9 + 56))(v9, v8 & 0xFFFFFFFFFFFFLL, 16, 2, 1, 1, 1, 0);
        v10 = *sub_10000C7D0();
        (*(v10 + 944))();
        v11 = sub_10000C7D0();
        (*(*v11 + 80))(v11, v7, 1);
        v18 = 0;
        sub_1000216B4(&v18);
        sub_1002429D4(&v19);
        v12 = sub_10023DF34(v7 + 128);
        sub_100022214(&v18);
        if (v12 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_1007FFD38();
        }

        [(b515cUnifiedDevice *)self setAudioStarted:1];
        if (v5)
        {
          [(b515cUnifiedDevice *)self usbcRequestSensorDataOnDevice];
        }

        v13 = &v18;
      }

      else
      {
        (*(*v9 + 944))(v9, 0, 1);
        v14 = sub_10000C7D0();
        (*(*v14 + 56))(v14, v8 & 0xFFFFFFFFFFFFLL, 16, 2, 0, 1, 1, 0);
        v15 = sub_10000C7D0();
        (*(*v15 + 80))(v15, v7, 0);
        v17 = 0;
        sub_1000216B4(&v17);
        v16 = sub_10023DF34(v7 + 128);
        sub_100022214(&v17);
        if (v16 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_1007FFCC0();
        }

        [(b515cUnifiedDevice *)self setAudioStarted:0];
        [(b515cUnifiedDevice *)self usbcStopSensorDataOnDevice];
        v13 = &v17;
      }

      sub_10002249C(v13);
      notify_post("com.apple.bluetooth.AdaptiveJitterBufferChanged");
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_1007FFDB0();
  }
}

- (void)usbcRequestSensorDataOnDevice
{
  if (qword_100B50940 != -1)
  {
    sub_1007FFDF0();
  }

  v3 = *(off_100B50938 + 32);
  if (![(b515cUnifiedDevice *)self isTimerRunning])
  {
    [(b515cUnifiedDevice *)self setIsTimerRunning:1];
    if (qword_100B508F0 != -1)
    {
      sub_1007FFCAC();
    }

    v4 = sub_1000504C8(off_100B508E8, [(b515cUnifiedDevice *)self btAddress], 0);
    if (v4)
    {
      v5 = v4;
      [(b515cUnifiedDevice *)self setUsbcTimer:dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3)];
      v6 = [(b515cUnifiedDevice *)self usbcTimer];
      v7 = dispatch_time(0, 0);
      dispatch_source_set_timer(v6, v7, 0x1312D00uLL, 0);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000F21E0;
      handler[3] = &unk_100ADF8F8;
      handler[4] = v5;
      dispatch_source_set_event_handler([(b515cUnifiedDevice *)self usbcTimer], handler);
      dispatch_resume([(b515cUnifiedDevice *)self usbcTimer]);
    }

    else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_1007FFE04();
    }
  }
}

- (void)usbcStopSensorDataOnDevice
{
  if ([(b515cUnifiedDevice *)self isTimerRunning])
  {
    dispatch_source_cancel([(b515cUnifiedDevice *)self usbcTimer]);
    dispatch_release([(b515cUnifiedDevice *)self usbcTimer]);

    [(b515cUnifiedDevice *)self setIsTimerRunning:0];
  }
}

@end