@interface MSDBackgroundActivityTask
- (MSDBackgroundActivityTask)initWithIdentifier:(id)a3;
- (void)checkIn;
- (void)invalidate;
- (void)schedule;
@end

@implementation MSDBackgroundActivityTask

- (MSDBackgroundActivityTask)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v18.receiver = self;
    v18.super_class = MSDBackgroundActivityTask;
    v6 = [(MSDBackgroundActivityTask *)&v18 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_identifier, a3);
      v7->_qualityOfService = 9;
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = sub_100030FE4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000358C(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v8 = 0;
  }

  return v8;
}

- (void)checkIn
{
  v3 = sub_100030FE4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v13 = 136315395;
    v14 = "[MSDBackgroundActivityTask checkIn]";
    v15 = 2113;
    v16 = identifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Checking-in with identifier %{private}@", &v13, 0x16u);
  }

  if (self->_activityBlock)
  {
    v5 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:self->_identifier];
    [v5 setPreregistered:1];
  }

  else
  {
    v5 = sub_100030FE4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000035C4(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

- (void)invalidate
{
  v2 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:self->_identifier];
  [v2 invalidate];
}

- (void)schedule
{
  activityBlock = self->_activityBlock;
  v4 = sub_100030FE4();
  v5 = v4;
  if (activityBlock)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      repeats = self->_repeats;
      allowBattery = self->_allowBattery;
      requireNetworkConnection = self->_requireNetworkConnection;
      requireInexpensiveNetworkConnection = self->_requireInexpensiveNetworkConnection;
      interval = self->_interval;
      qualityOfService = self->_qualityOfService;
      v21 = 138479363;
      v22 = identifier;
      v23 = 1024;
      v24 = repeats;
      v25 = 2048;
      v26 = interval;
      v27 = 1024;
      v28 = allowBattery;
      v29 = 1024;
      v30 = requireNetworkConnection;
      v31 = 1024;
      v32 = requireInexpensiveNetworkConnection;
      v33 = 2048;
      v34 = qualityOfService;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scheduling block for execution at a later time: identifier %{private}@, repeats: %d, interval %f, allowBattery: %d, networkConnection: %d, inexpensiveNetworkConnection: %d, Quality of service %ld", &v21, 0x38u);
    }

    v5 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:self->_identifier];
    [v5 setInterval:fmax(self->_interval, 2.0)];
    [v5 setQualityOfService:self->_qualityOfService];
    [v5 setRepeats:self->_repeats];
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v13, XPC_ACTIVITY_ALLOW_BATTERY, self->_allowBattery);
    xpc_dictionary_set_BOOL(v13, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, self->_requireInexpensiveNetworkConnection);
    xpc_dictionary_set_BOOL(v13, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, self->_requireNetworkConnection);
    [v5 _setAdditionalXPCActivityProperties:v13];
    [v5 scheduleWithBlock:self->_activityBlock];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000035FC(v5, v14, v15, v16, v17, v18, v19, v20);
  }
}

@end