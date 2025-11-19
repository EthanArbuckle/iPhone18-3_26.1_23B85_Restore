@interface DoAPDevice
+ (id)doapDeviceWithCodecs:(id)a3 streamID:(unsigned __int16)a4;
- (DoAPDevice)init;
- (DoAPDevice)initWithCodecs:(id)a3 streamID:(unsigned __int16)a4;
- (id)allocQueue;
- (id)doapStateNameFor:(unsigned __int8)a3;
- (int)eventIndicator:(unsigned __int8)a3 eventValue:(unsigned __int8)a4;
- (int)selectCodec:(unsigned __int8)a3;
- (int)startStreaming;
- (int)stopStreaming:(unsigned __int8)a3;
- (void)dealloc;
- (void)notifyDidStart;
- (void)notifyDidStop;
- (void)start;
- (void)stop;
@end

@implementation DoAPDevice

+ (id)doapDeviceWithCodecs:(id)a3 streamID:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  if (v4 == 1 && (v6 = objc_opt_class()) != 0)
  {
    v7 = [[v6 alloc] initWithCodecs:v5 streamID:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)start
{
  obj = self;
  objc_sync_enter(obj);
  [(DoAPDevice *)obj doapStateSet:1];
  objc_sync_exit(obj);
}

- (void)stop
{
  obj = self;
  objc_sync_enter(obj);
  [(DoAPDevice *)obj doapStateSet:7];
  objc_sync_exit(obj);
}

- (DoAPDevice)init
{
  v3 = [NSString stringWithUTF8String:"[DoAPDevice init]"];
  [NSException raise:NSInvalidArgumentException format:@"Calling %@ is not allowed", v3];

  return 0;
}

- (DoAPDevice)initWithCodecs:(id)a3 streamID:(unsigned __int16)a4
{
  v6.receiver = self;
  v6.super_class = DoAPDevice;
  result = [(DoAPDevice *)&v6 init];
  if (result)
  {
    result->_state = 0;
    result->_streamID = a4;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = DoAPDevice;
  [(DoAPDevice *)&v2 dealloc];
}

- (void)notifyDidStart
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000671D0;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)notifyDidStop
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000672E0;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (int)selectCodec:(unsigned __int8)a3
{
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DoAP Send selectCodec", buf, 2u);
  }

  v10[0] = 1;
  v10[1] = [(DoAPDevice *)self streamID];
  v10[2] = [(DoAPDevice *)self streamID]>> 8;
  v10[3] = a3;
  v6 = [NSData dataWithBytesNoCopy:v10 length:4 freeWhenDone:0];
  if ([(DoAPDevice *)self state])
  {
    v7 = [(DoAPDevice *)self service];
    [v7 selectCodec:v6];

    v8 = 0;
  }

  else
  {
    v8 = -536870195;
  }

  return v8;
}

- (int)startStreaming
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DoAP Send startStreaming", buf, 2u);
  }

  v9[0] = [(DoAPDevice *)self streamID];
  v9[1] = [(DoAPDevice *)self streamID]>> 8;
  v4 = [NSData dataWithBytesNoCopy:v9 length:2 freeWhenDone:0];
  if ([(DoAPDevice *)self state]== 2 || [(DoAPDevice *)self state]== 3)
  {
    v5 = [(DoAPDevice *)self service];
    [v5 startStreaming:v4];

    v6 = self;
    objc_sync_enter(v6);
    [(DoAPDevice *)v6 doapStateSet:5];
    objc_sync_exit(v6);

    [(DoAPDevice *)v6 setHighPriorityLink:1 burstTime:&off_1000C3DB0];
    v7 = 0;
  }

  else
  {
    v7 = -536870195;
  }

  return v7;
}

- (int)stopStreaming:(unsigned __int8)a3
{
  v3 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 67109120;
    HIDWORD(v11) = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DoAP Send stopStreaming %d", &v11, 8u);
  }

  LOBYTE(v11) = [(DoAPDevice *)self streamID];
  BYTE1(v11) = [(DoAPDevice *)self streamID]>> 8;
  BYTE2(v11) = v3;
  v6 = [NSData dataWithBytesNoCopy:&v11 length:3 freeWhenDone:0];
  if ([(DoAPDevice *)self state]< 2)
  {
    v9 = -536870198;
  }

  else
  {
    v7 = [(DoAPDevice *)self service];
    [v7 stopStreaming:v6];

    v8 = self;
    objc_sync_enter(v8);
    [(DoAPDevice *)v8 doapStateSet:6];
    objc_sync_exit(v8);

    v9 = 0;
  }

  return v9;
}

- (int)eventIndicator:(unsigned __int8)a3 eventValue:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v14) = 67109376;
    HIDWORD(v14) = v5;
    v15 = 1024;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DoAP Send eventIndicator(%u) value(%u)", &v14, 0xEu);
  }

  LOBYTE(v14) = [(DoAPDevice *)self streamID];
  BYTE1(v14) = [(DoAPDevice *)self streamID]>> 8;
  BYTE2(v14) = v5;
  BYTE3(v14) = 1;
  BYTE4(v14) = v4;
  if ([(DoAPDevice *)self streamID]!= 1)
  {
    if ([(DoAPDevice *)self streamID]== 2 && (_os_feature_enabled_impl() & 1) == 0)
    {
      v11 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007B750(v11);
      }
    }

    return 0;
  }

  v8 = -536870198;
  if (v5 == 4)
  {
    if ([(DoAPDevice *)self state]>= 2 && [(DoAPDevice *)self state]<= 6)
    {
      v9 = [NSData dataWithBytesNoCopy:&v14 length:5 freeWhenDone:0];
      v10 = [(DoAPDevice *)self service];
      [v10 eventIndicator:v9];

      return 0;
    }
  }

  else
  {
    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007B794(v5, v12);
    }
  }

  return v8;
}

- (id)allocQueue
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = [NSString stringWithFormat:@"com.apple.%@", objc_opt_class()];
  v4 = dispatch_queue_create([v3 UTF8String], v2);

  return v4;
}

- (id)doapStateNameFor:(unsigned __int8)a3
{
  if ((a3 - 1) > 7u)
  {
    return @"Initialized";
  }

  else
  {
    return *(&off_1000BE708 + (a3 - 1));
  }
}

@end