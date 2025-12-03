@interface RSDNCMInterface
- (BOOL)activate;
- (BOOL)address;
- (void)addressWithRetry;
- (void)advanceState:(unint64_t)state;
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
    selfCopy3 = self;
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
    selfCopy3 = self;
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
    selfCopy3 = self;
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
      queue = [(RSDNCMInterface *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100032834;
      block[3] = &unk_10005D130;
      block[4] = self;
      dispatch_after(v3, queue, block);
    }
  }
}

- (void)advanceState:(unint64_t)state
{
  state = [(RSDNCMInterface *)self state];
  if (state == state)
  {
    return;
  }

  v6 = state;
  v7 = sub_1000012E4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    selfCopy = self;
    v32 = 2048;
    v33 = v6;
    v34 = 2048;
    stateCopy = state;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%p] advancing state from %llu to %llu", buf, 0x20u);
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (state && state != 3)
      {
        sub_100043CD0(state, &v29, buf);
      }
    }

    else if (v6 == 3)
    {
      sub_100043CB4();
    }
  }

  else if (v6)
  {
    if (v6 == 1 && state - 2 >= 2)
    {
      if (state)
      {
        sub_100043D60(state, &v29, buf);
      }
    }
  }

  else if ((state & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    sub_100043DF0(&v29, buf);
  }

  [(RSDNCMInterface *)self setState:state];
  self->address_tries = 0;
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
      {
        queue = [(RSDNCMInterface *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100032C14;
        block[3] = &unk_10005D130;
        block[4] = self;
        dispatch_async(queue, block);
LABEL_24:

        return;
      }

      return;
    }

    inactive_callback = [(RSDNCMInterface *)self inactive_callback];

    if (!inactive_callback)
    {
      return;
    }

    inactive_callback2 = [(RSDNCMInterface *)self inactive_callback];
    queue2 = [(RSDNCMInterface *)self queue];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100032C1C;
    v26[3] = &unk_10005E058;
    v26[4] = self;
    v27 = inactive_callback2;
    v14 = inactive_callback2;
    dispatch_async(queue2, v26);

    v15 = v27;
LABEL_28:

    return;
  }

  if (state == 2)
  {
    addressed_callback = [(RSDNCMInterface *)self addressed_callback];
    queue3 = [(RSDNCMInterface *)self queue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100032C30;
    v24[3] = &unk_10005E058;
    v24[4] = self;
    v25 = addressed_callback;
    v14 = addressed_callback;
    dispatch_async(queue3, v24);

    v15 = v25;
    goto LABEL_28;
  }

  if (state == 3)
  {
    detached_callback = [(RSDNCMInterface *)self detached_callback];
    queue4 = [(RSDNCMInterface *)self queue];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100032C44;
    v21 = &unk_10005E058;
    selfCopy2 = self;
    v23 = detached_callback;
    queue = detached_callback;
    dispatch_async(queue4, &v18);

    [(RSDNCMInterface *)self setInactive_callback:0, v18, v19, v20, v21, selfCopy2];
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