@interface RSDNCMInterface
- (BOOL)activate;
- (BOOL)address;
- (void)addressWithRetry;
- (void)advanceState:(unint64_t)a3;
- (void)deactivate;
- (void)dealloc;
@end

@implementation RSDNCMInterface

- (BOOL)activate
{
  notification = 0;
  v3 = IOServiceAddInterestNotification([(RSDNCMInterface *)self notification_port], [(RSDNCMInterface *)self service], "IOGeneralInterest", sub_100001328, self, &notification);
  if (v3)
  {
    v4 = sub_1000012E4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10004398C(v3, v4);
    }
  }

  else
  {
    [(RSDNCMInterface *)self setNotification:notification];
    v9 = 0;
    if (sub_100012B08([(RSDNCMInterface *)self service], &v9))
    {
      v5 = sub_1000012E4();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        if ((v9 - 1) > 2)
        {
          v6 = "<unknown>";
        }

        else
        {
          v6 = (&off_10005E098)[v9 - 1];
        }

        *buf = 136446210;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "initial linkstatus: %{public}s", buf, 0xCu);
      }

      if (v9 == 3)
      {
        v7 = sub_1000012E4();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "arming the connected device", buf, 2u);
        }

        [(RSDNCMInterface *)self advanceState:1];
      }
    }
  }

  return v3 == 0;
}

- (void)deactivate
{
  if ([(RSDNCMInterface *)self notification])
  {
    IOObjectRelease([(RSDNCMInterface *)self notification]);

    [(RSDNCMInterface *)self setNotification:0];
  }
}

- (BOOL)address
{
  memset(__s1, 170, sizeof(__s1));
  WORD2(v14) = -21846;
  LODWORD(v14) = -1431655766;
  v3 = sub_1000012E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100043A7C();
  }

  if (!sub_100012C1C([(RSDNCMInterface *)self service], __s1))
  {
    v13 = sub_1000012E4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100043AF0();
    }

    return 0;
  }

  if (*__s1 != 28261 && *__s1 != 1768975969)
  {
    sub_100043B58(&v15, buf);
  }

  v4 = sub_1000012E4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v18 = self;
    v19 = 2082;
    *v20 = __s1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%p] ifname: %{public}s", buf, 0x16u);
  }

  v5 = if_nametoindex(__s1);
  if (!v5)
  {
    sub_100043C2C(&v15, buf);
  }

  v6 = v5;
  v7 = sub_1000012E4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v18 = self;
    v19 = 1024;
    *v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%p] ifindex: %d", buf, 0x12u);
  }

  v8 = sub_1000130A4([(RSDNCMInterface *)self service], &v14);
  v9 = sub_1000012E4();
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100043BC4();
    }

    return 0;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219520;
    v18 = self;
    v19 = 1024;
    *v20 = v14;
    *&v20[4] = 1024;
    *&v20[6] = BYTE1(v14);
    v21 = 1024;
    v22 = BYTE2(v14);
    v23 = 1024;
    v24 = BYTE3(v14);
    v25 = 1024;
    v26 = BYTE4(v14);
    v27 = 1024;
    v28 = BYTE5(v14);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%p] MAC Address: %02x:%02x:%02x:%02x:%02x:%02x", buf, 0x30u);
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v11 = strdup(__s1);
      if (v11)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v11 = strdup(__s1);
    if (!v11)
    {
      sub_100041274(__s1, &v15, buf);
    }
  }

  [(RSDNCMInterface *)self setName:v11, v14];
  [(RSDNCMInterface *)self setIndex:v6];
  [(RSDNCMInterface *)self setMac_addr:memdup2_np()];
  return 1;
}

- (void)addressWithRetry
{
  if ([(RSDNCMInterface *)self state]== 1)
  {
    ++self->address_tries;
    if ([(RSDNCMInterface *)self address])
    {

      [(RSDNCMInterface *)self advanceState:2];
    }

    else
    {
      if (self->address_tries == 60)
      {
        sub_100043C98();
      }

      v3 = dispatch_time(0, 5000000000);
      v4 = [(RSDNCMInterface *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100032834;
      block[3] = &unk_10005D130;
      block[4] = self;
      dispatch_after(v3, v4, block);
    }
  }
}

- (void)advanceState:(unint64_t)a3
{
  v5 = [(RSDNCMInterface *)self state];
  if (v5 == a3)
  {
    return;
  }

  v6 = v5;
  v7 = sub_1000012E4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v31 = self;
    v32 = 2048;
    v33 = v6;
    v34 = 2048;
    v35 = a3;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%p] advancing state from %llu to %llu", buf, 0x20u);
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (a3 && a3 != 3)
      {
        sub_100043CD0(a3, &v29, buf);
      }
    }

    else if (v6 == 3)
    {
      sub_100043CB4();
    }
  }

  else if (v6)
  {
    if (v6 == 1 && a3 - 2 >= 2)
    {
      if (a3)
      {
        sub_100043D60(a3, &v29, buf);
      }
    }
  }

  else if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    sub_100043DF0(&v29, buf);
  }

  [(RSDNCMInterface *)self setState:a3];
  self->address_tries = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v8 = [(RSDNCMInterface *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100032C14;
        block[3] = &unk_10005D130;
        block[4] = self;
        dispatch_async(v8, block);
LABEL_24:

        return;
      }

      return;
    }

    v11 = [(RSDNCMInterface *)self inactive_callback];

    if (!v11)
    {
      return;
    }

    v12 = [(RSDNCMInterface *)self inactive_callback];
    v13 = [(RSDNCMInterface *)self queue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100032C1C;
    v26[3] = &unk_10005E058;
    v26[4] = self;
    v27 = v12;
    v14 = v12;
    dispatch_async(v13, v26);

    v15 = v27;
LABEL_28:

    return;
  }

  if (a3 == 2)
  {
    v16 = [(RSDNCMInterface *)self addressed_callback];
    v17 = [(RSDNCMInterface *)self queue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100032C30;
    v24[3] = &unk_10005E058;
    v24[4] = self;
    v25 = v16;
    v14 = v16;
    dispatch_async(v17, v24);

    v15 = v25;
    goto LABEL_28;
  }

  if (a3 == 3)
  {
    v9 = [(RSDNCMInterface *)self detached_callback];
    v10 = [(RSDNCMInterface *)self queue];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100032C44;
    v21 = &unk_10005E058;
    v22 = self;
    v23 = v9;
    v8 = v9;
    dispatch_async(v10, &v18);

    [(RSDNCMInterface *)self setInactive_callback:0, v18, v19, v20, v21, v22];
    [(RSDNCMInterface *)self setAddressed_callback:0];
    [(RSDNCMInterface *)self setDetached_callback:0];

    goto LABEL_24;
  }
}

- (void)dealloc
{
  v3 = sub_1000012E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100043E5C();
  }

  if ([(RSDNCMInterface *)self name])
  {
    free([(RSDNCMInterface *)self name]);
    [(RSDNCMInterface *)self setName:0];
  }

  if ([(RSDNCMInterface *)self mac_addr])
  {
    free([(RSDNCMInterface *)self mac_addr]);
    [(RSDNCMInterface *)self setMac_addr:0];
  }

  [(RSDNCMInterface *)self setIndex:0];
  if ([(RSDNCMInterface *)self service])
  {
    IOObjectRelease([(RSDNCMInterface *)self service]);
    [(RSDNCMInterface *)self setService:0];
  }

  [(RSDNCMInterface *)self deactivate];
  v4.receiver = self;
  v4.super_class = RSDNCMInterface;
  [(RSDNCMInterface *)&v4 dealloc];
}

@end