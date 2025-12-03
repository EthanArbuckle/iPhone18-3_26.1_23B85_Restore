@interface HAPSuspendedAccessoryIP
+ (id)logCategory;
- (HAPSuspendedAccessoryIP)initWithName:(id)name identifier:(id)identifier wakeTuples:(id)tuples queue:(id)queue;
- (id)_wakeWithTuple:(id)tuple dnsName:(id)name;
- (void)_closeConnection;
- (void)dealloc;
- (void)wakeWithCompletion:(id)completion;
@end

@implementation HAPSuspendedAccessoryIP

- (HAPSuspendedAccessoryIP)initWithName:(id)name identifier:(id)identifier wakeTuples:(id)tuples queue:(id)queue
{
  tuplesCopy = tuples;
  v16.receiver = self;
  v16.super_class = HAPSuspendedAccessoryIP;
  v11 = [(HAPSuspendedAccessory *)&v16 initWithName:name identifier:identifier type:1 queue:queue];
  if (v11)
  {
    v12 = [NSSet setWithArray:tuplesCopy];
    allObjects = [v12 allObjects];
    wakeTuples = v11->_wakeTuples;
    v11->_wakeTuples = allObjects;

    v11->_timeout = 10000000000;
  }

  return v11;
}

- (void)dealloc
{
  [(HAPSuspendedAccessoryIP *)self _closeConnection];
  v3.receiver = self;
  v3.super_class = HAPSuspendedAccessoryIP;
  [(HAPSuspendedAccessoryIP *)&v3 dealloc];
}

- (void)wakeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(HAPSuspendedAccessory *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000499C;
  v7[3] = &unk_100273268;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (id)_wakeWithTuple:(id)tuple dnsName:(id)name
{
  tupleCopy = tuple;
  nameCopy = name;
  queue = [(HAPSuspendedAccessory *)self queue];
  dispatch_assert_queue_V2(queue);

  wakeAddress = [tupleCopy wakeAddress];
  v10 = nameCopy | wakeAddress;

  if (v10)
  {
    v12 = nameCopy;
    wakeAddress2 = [tupleCopy wakeAddress];

    if (wakeAddress2)
    {
      wakeAddress3 = [tupleCopy wakeAddress];
      v15 = [NSString stringWithFormat:@"wake://%@%s%@", wakeAddress3, "\x1E", v12];

      v12 = v15;
    }

    [v12 UTF8String];
    [tupleCopy wakePort];
    [(HAPSuspendedAccessoryIP *)self timeout];
    [(HAPSuspendedAccessory *)self queue];
    v23 = v22 = self;
    v16 = AsyncConnection_Connect();

    if (v16)
    {
      v17 = [NSError errorWithOSStatus:v16, 0, 0, v22, v23];
      v11 = [NSError hapErrorWithcode:1 description:@"Connection failed" reason:0 suggestion:0 underlyingError:v17];
    }

    else
    {
      v11 = 0;
    }

    v18 = sub_10007FAA0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = sub_10007FAFC(0);
      domain = [v11 domain];
      *buf = 138543874;
      v25 = v19;
      v26 = 2112;
      v27 = domain;
      v28 = 2048;
      code = [v11 code];
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@The suspended accessory sent wake command with error: %{key:errorDomain}@ %{key:errorCode}ld", buf, 0x20u);
    }
  }

  else
  {
    v11 = [NSError hapErrorWithcode:9];
  }

  return v11;
}

- (void)_closeConnection
{
  if (self->_connection)
  {
    AsyncConnection_Release();
    self->_connection = 0;
  }
}

+ (id)logCategory
{
  if (qword_1002ACB80 != -1)
  {
    sub_1001F7A84();
  }

  v3 = qword_1002ACB88;

  return v3;
}

@end