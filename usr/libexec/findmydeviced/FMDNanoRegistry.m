@interface FMDNanoRegistry
- (FMDCompanionRegistryDelegate)delegate;
- (FMDNanoRegistry)init;
- (id)accessoriesWithProperty:(id)a3;
- (id)activePairedDevice;
- (id)allAccessories;
- (id)migratableAccessories;
- (id)migratableAccessoriesByIdentifier;
- (id)pairedAccessories;
- (void)addObservers;
- (void)dealloc;
- (void)deviceDidPair:(id)a3;
- (void)deviceDidUnpair:(id)a3;
- (void)getAccessoriesWithCompletion:(id)a3;
@end

@implementation FMDNanoRegistry

- (FMDNanoRegistry)init
{
  v5.receiver = self;
  v5.super_class = FMDNanoRegistry;
  v2 = [(FMDNanoRegistry *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDNanoRegistry *)v2 addObservers];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FMDNanoRegistry;
  [(FMDNanoRegistry *)&v4 dealloc];
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"deviceDidPair:" name:@"nano.devicedidpair" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"deviceDidUnpair:" name:@"nano.devicedidunpair" object:0];
}

- (void)getAccessoriesWithCompletion:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(FMDNanoRegistry *)self allAccessories];
    (*(a3 + 2))(v5, v6, 0);
  }
}

- (id)activePairedDevice
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getActivePairedDevice];

  v4 = [[FMDNanoRegistryAccessory alloc] initWithNRDevice:v3];

  return v4;
}

- (id)allAccessories
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDNanoRegistry allAccessories", v6, 2u);
  }

  v4 = [(FMDNanoRegistry *)self accessoriesWithProperty:0];

  return v4;
}

- (id)pairedAccessories
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDNanoRegistry pairedAccessories", v6, 2u);
  }

  v4 = [(FMDNanoRegistry *)self accessoriesWithProperty:NRDevicePropertyIsPaired];

  return v4;
}

- (id)migratableAccessories
{
  v2 = [(FMDNanoRegistry *)self migratableAccessoriesByIdentifier];
  v3 = [v2 allValues];

  return v3;
}

- (id)migratableAccessoriesByIdentifier
{
  v2 = sub_100002880();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "FMDNanoRegistry migratedAccessories", buf, 2u);
  }

  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NRMigrator sharedMigrator];
  v5 = [v4 migratableDevices];
  v6 = v5;
  v7 = &__NSArray0__struct;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = +[NRMigrator sharedMigrator];
  v10 = [v9 migratableDevicesRequiringConsent];

  if (v10)
  {
    v11 = [v8 arrayByAddingObjectsFromArray:v10];

    v8 = v11;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001515AC;
  v14[3] = &unk_1002CE498;
  v12 = v3;
  v15 = v12;
  [v8 enumerateObjectsUsingBlock:v14];

  return v12;
}

- (id)accessoriesWithProperty:(id)a3
{
  v4 = a3;
  v5 = [(FMDNanoRegistry *)self migratableAccessoriesByIdentifier];
  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = [v6 getAllDevices];

  +[NSMutableArray array];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100151774;
  v14[3] = &unk_1002CE4C0;
  v15 = v4;
  v8 = v16 = v5;
  v17 = v8;
  v9 = v5;
  v10 = v4;
  [v7 enumerateObjectsUsingBlock:v14];
  v11 = v17;
  v12 = v8;

  return v8;
}

- (void)deviceDidPair:(id)a3
{
  v4 = [(FMDNanoRegistry *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 companionRegistryDidUpdateAccessories:self];
  }
}

- (void)deviceDidUnpair:(id)a3
{
  v4 = [(FMDNanoRegistry *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 companionRegistryDidUpdateAccessories:self];
  }
}

- (FMDCompanionRegistryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end