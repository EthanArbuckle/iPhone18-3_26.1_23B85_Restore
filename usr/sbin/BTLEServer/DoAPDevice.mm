@interface DoAPDevice
+ (id)doapDeviceWithCodecs:(id)codecs streamID:(unsigned __int16)d;
- (DoAPDevice)init;
- (DoAPDevice)initWithCodecs:(id)codecs streamID:(unsigned __int16)d;
- (id)allocQueue;
- (id)doapStateNameFor:(unsigned __int8)for;
- (int)eventIndicator:(unsigned __int8)indicator eventValue:(unsigned __int8)value;
- (int)selectCodec:(unsigned __int8)codec;
- (int)startStreaming;
- (int)stopStreaming:(unsigned __int8)streaming;
- (void)dealloc;
- (void)notifyDidStart;
- (void)notifyDidStop;
- (void)start;
- (void)stop;
@end

@implementation DoAPDevice

+ (id)doapDeviceWithCodecs:(id)codecs streamID:(unsigned __int16)d
{
  dCopy = d;
  codecsCopy = codecs;
  if (dCopy == 1 && (v6 = objc_opt_class()) != 0)
  {
    v7 = [[v6 alloc] initWithCodecs:codecsCopy streamID:1];
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

- (DoAPDevice)initWithCodecs:(id)codecs streamID:(unsigned __int16)d
{
  v6.receiver = self;
  v6.super_class = DoAPDevice;
  result = [(DoAPDevice *)&v6 init];
  if (result)
  {
    result->_state = 0;
    result->_streamID = d;
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

- (int)selectCodec:(unsigned __int8)codec
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
  v10[3] = codec;
  v6 = [NSData dataWithBytesNoCopy:v10 length:4 freeWhenDone:0];
  if ([(DoAPDevice *)self state])
  {
    service = [(DoAPDevice *)self service];
    [service selectCodec:v6];

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
    service = [(DoAPDevice *)self service];
    [service startStreaming:v4];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(DoAPDevice *)selfCopy doapStateSet:5];
    objc_sync_exit(selfCopy);

    [(DoAPDevice *)selfCopy setHighPriorityLink:1 burstTime:&off_1000C3DB0];
    v7 = 0;
  }

  else
  {
    v7 = -536870195;
  }

  return v7;
}

- (int)stopStreaming:(unsigned __int8)streaming
{
  streamingCopy = streaming;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11) = 67109120;
    HIDWORD(v11) = streamingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DoAP Send stopStreaming %d", &v11, 8u);
  }

  LOBYTE(v11) = [(DoAPDevice *)self streamID];
  BYTE1(v11) = [(DoAPDevice *)self streamID]>> 8;
  BYTE2(v11) = streamingCopy;
  v6 = [NSData dataWithBytesNoCopy:&v11 length:3 freeWhenDone:0];
  if ([(DoAPDevice *)self state]< 2)
  {
    v9 = -536870198;
  }

  else
  {
    service = [(DoAPDevice *)self service];
    [service stopStreaming:v6];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(DoAPDevice *)selfCopy doapStateSet:6];
    objc_sync_exit(selfCopy);

    v9 = 0;
  }

  return v9;
}

- (int)eventIndicator:(unsigned __int8)indicator eventValue:(unsigned __int8)value
{
  valueCopy = value;
  indicatorCopy = indicator;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v14) = 67109376;
    HIDWORD(v14) = indicatorCopy;
    v15 = 1024;
    v16 = valueCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DoAP Send eventIndicator(%u) value(%u)", &v14, 0xEu);
  }

  LOBYTE(v14) = [(DoAPDevice *)self streamID];
  BYTE1(v14) = [(DoAPDevice *)self streamID]>> 8;
  BYTE2(v14) = indicatorCopy;
  BYTE3(v14) = 1;
  BYTE4(v14) = valueCopy;
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
  if (indicatorCopy == 4)
  {
    if ([(DoAPDevice *)self state]>= 2 && [(DoAPDevice *)self state]<= 6)
    {
      v9 = [NSData dataWithBytesNoCopy:&v14 length:5 freeWhenDone:0];
      service = [(DoAPDevice *)self service];
      [service eventIndicator:v9];

      return 0;
    }
  }

  else
  {
    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007B794(indicatorCopy, v12);
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

- (id)doapStateNameFor:(unsigned __int8)for
{
  if ((for - 1) > 7u)
  {
    return @"Initialized";
  }

  else
  {
    return *(&off_1000BE708 + (for - 1));
  }
}

@end