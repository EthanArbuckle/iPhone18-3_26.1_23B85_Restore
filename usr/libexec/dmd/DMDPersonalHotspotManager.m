@interface DMDPersonalHotspotManager
+ (DMDPersonalHotspotManager)sharedManager;
- (BOOL)enabled;
- (DMDPersonalHotspotManager)init;
- (void)dealloc;
- (void)setEnabled:(BOOL)a3;
@end

@implementation DMDPersonalHotspotManager

+ (DMDPersonalHotspotManager)sharedManager
{
  if (qword_1000FF278 != -1)
  {
    sub_100085FF0();
  }

  v3 = qword_1000FF270;

  return v3;
}

- (DMDPersonalHotspotManager)init
{
  v4.receiver = self;
  v4.super_class = DMDPersonalHotspotManager;
  v2 = [(DMDPersonalHotspotManager *)&v4 init];
  if (v2)
  {
    v2->_scDynamicStore = SCDynamicStoreCreate(0, @"com.apple.managedconfiguration.DMDPersonalHotspotManager", 0, 0);
    v2->_netrbClient = _NETRBClientCreate();
  }

  return v2;
}

- (void)dealloc
{
  netrbClient = self->_netrbClient;
  _NETRBClientDestroy();
  CFRelease(self->_scDynamicStore);
  v4.receiver = self;
  v4.super_class = DMDPersonalHotspotManager;
  [(DMDPersonalHotspotManager *)&v4 dealloc];
}

- (BOOL)enabled
{
  if ([(DMDPersonalHotspotManager *)self scDynamicStore])
  {
    v3 = SCDynamicStoreCopyValue([(DMDPersonalHotspotManager *)self scDynamicStore], @"com.apple.MobileInternetSharing");
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"State"];
      v6 = [v5 intValue];

      v7 = v6 == 1023;
      v8 = DMFPersonalHotspotLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = MCStringForBool();
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Personal hotspot enabled: %{public}@", &v11, 0xCu);
      }
    }

    else
    {
      v8 = DMFPersonalHotspotLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100086004();
      }

      v7 = 0;
    }
  }

  else
  {
    v4 = DMFPersonalHotspotLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100086038();
    }

    v7 = 0;
  }

  return v7;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = [(DMDPersonalHotspotManager *)self netrbClient];
  v4 = DMFPersonalHotspotLog();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000860A0();
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MCStringForBool();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting personal hotspot enabled to %{public}@", &v7, 0xCu);
  }

  if ((_NETRBClientSetGlobalServiceState() & 1) == 0)
  {
    v5 = DMFPersonalHotspotLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10008606C();
    }

LABEL_9:
  }
}

@end