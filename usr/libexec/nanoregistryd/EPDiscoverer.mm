@interface EPDiscoverer
- (EPDiscoverer)initWithManager:(id)a3 withDelegate:(id)a4;
- (NSDictionary)devices;
- (NSMutableSet)displayableDevices;
- (NSMutableSet)proximateDevices;
- (id)initBase;
- (void)collection:(id)a3 deviceDidAppear:(id)a4;
- (void)collection:(id)a3 deviceDidBecomeDisplayable:(id)a4;
- (void)collection:(id)a3 deviceDidBecomeProximate:(id)a4;
- (void)collection:(id)a3 deviceDidBecomeUndisplayable:(id)a4;
- (void)collection:(id)a3 deviceDidBecomeUnproximate:(id)a4;
- (void)collection:(id)a3 deviceDidDisappear:(id)a4;
- (void)collection:(id)a3 deviceDidUpdate:(id)a4;
- (void)dealloc;
- (void)discovererBluetoothIsWorking:(id)a3;
- (void)discovererBluetoothMayHaveFailed:(id)a3;
@end

@implementation EPDiscoverer

- (id)initBase
{
  v3.receiver = self;
  v3.super_class = EPDiscoverer;
  return [(EPDiscoverer *)&v3 init];
}

- (void)dealloc
{
  [(EPDiscovererManager *)self->_manager removeDiscoverer:self];
  v3.receiver = self;
  v3.super_class = EPDiscoverer;
  [(EPDiscoverer *)&v3 dealloc];
}

- (EPDiscoverer)initWithManager:(id)a3 withDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(EPDiscoverer *)self initBase];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(v9 + 2, v8);
    objc_storeStrong(&v10->_manager, a3);
  }

  return v10;
}

- (NSDictionary)devices
{
  v2 = [(EPDiscovererManager *)self->_manager deviceCollection];
  v3 = [v2 devicesDictionary];
  v4 = [v3 copy];

  return v4;
}

- (NSMutableSet)displayableDevices
{
  v2 = [(EPDiscovererManager *)self->_manager deviceCollection];
  v3 = [v2 displayableDevices];
  v4 = [v3 copy];

  return v4;
}

- (NSMutableSet)proximateDevices
{
  v2 = [(EPDiscovererManager *)self->_manager deviceCollection];
  v3 = [v2 proximateDevices];
  v4 = [v3 copy];

  return v4;
}

- (void)collection:(id)a3 deviceDidAppear:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 discoverer:self deviceDidAppear:v8];
  }
}

- (void)collection:(id)a3 deviceDidBecomeDisplayable:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = sub_1000A98C0();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = sub_1000A98C0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_loadWeakRetained(&self->_delegate);
        v16 = 138412802;
        v17 = v5;
        v18 = 2112;
        v19 = v13;
        v20 = 2048;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling discoverer:deviceDidBecomeDisplayable: with device %@ on object %@[%p]", &v16, 0x20u);
      }
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 discoverer:self deviceDidBecomeDisplayable:v5];
  }
}

- (void)collection:(id)a3 deviceDidBecomeProximate:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = sub_1000A98C0();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = sub_1000A98C0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_loadWeakRetained(&self->_delegate);
        v16 = 138412802;
        v17 = v5;
        v18 = 2112;
        v19 = v13;
        v20 = 2048;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling discoverer:deviceDidBecomeProximate: with device %@ on object %@[%p]", &v16, 0x20u);
      }
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 discoverer:self deviceDidBecomeProximate:v5];
  }
}

- (void)collection:(id)a3 deviceDidUpdate:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = sub_1000A98C0();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = sub_1000A98C0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_loadWeakRetained(&self->_delegate);
        v16 = 138412802;
        v17 = v5;
        v18 = 2112;
        v19 = v13;
        v20 = 2048;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling discoverer:deviceDidUpdate: with device %@ on object %@[%p]", &v16, 0x20u);
      }
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 discoverer:self deviceDidUpdate:v5];
  }
}

- (void)collection:(id)a3 deviceDidDisappear:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 discoverer:self deviceDidDisappear:v8];
  }
}

- (void)collection:(id)a3 deviceDidBecomeUndisplayable:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = sub_1000A98C0();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = sub_1000A98C0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_loadWeakRetained(&self->_delegate);
        v16 = 138412802;
        v17 = v5;
        v18 = 2112;
        v19 = v13;
        v20 = 2048;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling discoverer:deviceDidBecomeUndisplayable: with device %@ on object %@[%p]", &v16, 0x20u);
      }
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 discoverer:self deviceDidBecomeUndisplayable:v5];
  }
}

- (void)collection:(id)a3 deviceDidBecomeUnproximate:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = sub_1000A98C0();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = sub_1000A98C0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained(&self->_delegate);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_loadWeakRetained(&self->_delegate);
        v16 = 138412802;
        v17 = v5;
        v18 = 2112;
        v19 = v13;
        v20 = 2048;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling discoverer:deviceDidBecomeUnproximate: with device %@ on object %@[%p]", &v16, 0x20u);
      }
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 discoverer:self deviceDidBecomeUnproximate:v5];
  }
}

- (void)discovererBluetoothMayHaveFailed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = sub_1000A98C0();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = sub_1000A98C0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_loadWeakRetained(&self->_delegate);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = objc_loadWeakRetained(&self->_delegate);
        v14 = 138412546;
        v15 = v11;
        v16 = 2048;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling discovererBluetoothMayHaveFailed: on object %@[%p]", &v14, 0x16u);
      }
    }

    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 discovererBluetoothMayHaveFailed:self];
  }
}

- (void)discovererBluetoothIsWorking:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = sub_1000A98C0();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = sub_1000A98C0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_loadWeakRetained(&self->_delegate);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = objc_loadWeakRetained(&self->_delegate);
        v14 = 138412546;
        v15 = v11;
        v16 = 2048;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling discovererBluetoothIsWorking: on object %@[%p]", &v14, 0x16u);
      }
    }

    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 discovererBluetoothIsWorking:self];
  }
}

@end