@interface EPFactory
+ (BOOL)signalProcessNamed:(id)a3 withSignal:(int)a4;
+ (id)newService:(id)a3;
+ (id)sharedFactoryWithQueue:(id)a3;
+ (void)killProcessNamed:(id)a3;
- (id)initBase;
- (id)newAdvertiserWithDelegate:(id)a3;
- (id)newCentralManagerWithDelegate:(id)a3;
- (id)newDiscovererWithDelegate:(id)a3;
- (id)newKeyGeneratorWithDelegate:(id)a3;
- (id)newNullResourceWithDelegate:(id)a3;
- (id)newPeripheralManagerWithDelegate:(id)a3;
- (void)killBluetoothDaemon;
@end

@implementation EPFactory

+ (id)newService:(id)a3
{
  v4 = [a3 queue];
  v5 = [a1 sharedFactoryWithQueue:v4];

  return v5;
}

+ (id)sharedFactoryWithQueue:(id)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CC760;
  v9[3] = &unk_1001761C0;
  v10 = a3;
  v11 = a1;
  v4 = qword_1001B3A78;
  v5 = v10;
  if (v4 != -1)
  {
    dispatch_once(&qword_1001B3A78, v9);
  }

  v6 = qword_1001B3A80;
  v7 = qword_1001B3A80;

  return v6;
}

- (id)initBase
{
  v21.receiver = self;
  v21.super_class = EPFactory;
  v2 = [(EPFactory *)&v21 init];
  if (v2)
  {
    v3 = +[EPFactory queue];
    dispatch_assert_queue_V2(v3);

    v4 = objc_opt_new();
    agentManager = v2->_agentManager;
    v2->_agentManager = v4;

    v6 = objc_opt_new();
    keyGeneratorManager = v2->_keyGeneratorManager;
    v2->_keyGeneratorManager = v6;

    v8 = objc_opt_new();
    advertiserManager = v2->_advertiserManager;
    v2->_advertiserManager = v8;

    v10 = objc_opt_new();
    discovererManager = v2->_discovererManager;
    v2->_discovererManager = v10;

    v12 = objc_opt_new();
    centralManagerManager = v2->_centralManagerManager;
    v2->_centralManagerManager = v12;

    v14 = objc_opt_new();
    peripheralManagerManager = v2->_peripheralManagerManager;
    v2->_peripheralManagerManager = v14;

    v16 = [EPNullResourceManager alloc];
    v17 = +[EPFactory queue];
    v18 = [(EPResourceManager *)v16 initWithQueue:v17];
    nullManager = v2->_nullManager;
    v2->_nullManager = v18;
  }

  return v2;
}

- (void)killBluetoothDaemon
{
  v2 = sub_1000A98C0();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = sub_1000A98C0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10010368C(v4);
    }
  }
}

+ (void)killProcessNamed:(id)a3
{
  v3 = a3;
  [objc_opt_class() signalProcessNamed:v3 withSignal:9];
}

+ (BOOL)signalProcessNamed:(id)a3 withSignal:(int)a4
{
  v5 = a3;
  *v45 = xmmword_100126498;
  v46 = 0;
  size = 0;
  if (sysctl(v45, 3u, 0, &size, 0, 0) == -1)
  {
    v14 = sub_1000A98C0();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = sub_1000A98C0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *__error();
      *buf = 138412546;
      v40 = v5;
      v41 = 1024;
      LODWORD(v42) = v17;
      v18 = "Error calling sysctl, trying to kill process %@ error %d";
      v19 = v16;
      v20 = 18;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }

LABEL_25:

    goto LABEL_32;
  }

  v6 = malloc_type_malloc(size, 0xBE14A793uLL);
  if (!v6)
  {
    v21 = sub_1000A98C0();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (!v22)
    {
      goto LABEL_32;
    }

    v16 = sub_1000A98C0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v40 = size;
      v41 = 2112;
      v42 = v5;
      v18 = "Failed to allocate memory, %zu bytes trying to kill process %@";
      v19 = v16;
      v20 = 22;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v7 = v6;
    if (sysctl(v45, 3u, v6, &size, 0, 0) != -1)
    {
      break;
    }

    if (*__error() != 12)
    {
      v30 = sub_1000A98C0();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

      if (v31)
      {
        v10 = sub_1000A98C0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *__error();
          *buf = 138412546;
          v40 = v5;
          v41 = 1024;
          LODWORD(v42) = v32;
          v11 = "Error calling sysctl, trying to kill process %@ error %d";
          v12 = v10;
          v13 = 18;
LABEL_29:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        }

LABEL_30:
      }

LABEL_31:
      free(v7);
      goto LABEL_32;
    }

    size += size / 0xA;
    v6 = malloc_type_realloc(v7, size, 0x5E904C92uLL);
    if (!v6)
    {
      v8 = sub_1000A98C0();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v10 = sub_1000A98C0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v40 = size;
          v41 = 2112;
          v42 = v5;
          v11 = "Failed to reallocate memory, %zu bytes trying to kill process %@";
          v12 = v10;
          v13 = 22;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      goto LABEL_31;
    }
  }

  v23 = [v5 UTF8String];
  if (size < 0x288)
  {
LABEL_20:
    free(v7);
    goto LABEL_21;
  }

  v24 = v23;
  v25 = size / 0x288;
  v26 = v7 + 243;
  while (1)
  {
    v27 = *(v26 - 203);
    if (v27)
    {
      if (!strncmp(v24, v26, 0x10uLL))
      {
        break;
      }
    }

    v26 += 648;
    if (!--v25)
    {
      goto LABEL_20;
    }
  }

  free(v7);
  if (v27 == -1)
  {
LABEL_21:
    v28 = sub_1000A98C0();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

    if (!v29)
    {
      goto LABEL_32;
    }

    v16 = sub_1000A98C0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v5;
      v18 = "Did not find process named %@";
      v19 = v16;
      v20 = 12;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (kill(v27, a4) != -1)
  {
    v33 = 1;
    goto LABEL_33;
  }

  v35 = sub_1000A98C0();
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

  if (v36)
  {
    v16 = sub_1000A98C0();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v37 = *__error();
    *buf = 134218498;
    v40 = v27;
    v41 = 2112;
    v42 = v5;
    v43 = 1024;
    v44 = v37;
    v18 = "Failed to kill pid %lu for process named %@, error %d";
    v19 = v16;
    v20 = 28;
    goto LABEL_24;
  }

LABEL_32:
  v33 = 0;
LABEL_33:

  return v33;
}

- (id)newKeyGeneratorWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[EPFactory queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EPOOBKeyGeneratorManager *)self->_keyGeneratorManager newGeneratorWithDelegate:v4];
  return v6;
}

- (id)newDiscovererWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[EPFactory queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EPDiscovererManager *)self->_discovererManager newDiscovererWithDelegate:v4];
  return v6;
}

- (id)newAdvertiserWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[EPFactory queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EPAdvertiserManager *)self->_advertiserManager newAdvertiserWithDelegate:v4];
  return v6;
}

- (id)newCentralManagerWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[EPFactory queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EPCentralManagerManager *)self->_centralManagerManager newManagerWithDelegate:v4];
  return v6;
}

- (id)newPeripheralManagerWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[EPFactory queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EPPeripheralManagerManager *)self->_peripheralManagerManager newManagerWithDelegate:v4];
  return v6;
}

- (id)newNullResourceWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[EPFactory queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(EPResourceManager *)self->_nullManager newResourceWithDelegate:v4];
  return v6;
}

@end