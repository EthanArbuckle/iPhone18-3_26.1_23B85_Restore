@interface NPTOSyncServiceController
- (NPTOSyncServiceController)initWithService:(id)service relationship:(int64_t)relationship requiresConnectedDevice:(BOOL)device deviceControllerClass:(Class)class;
- (NSString)description;
- (void)_updateDeviceControllers;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service linkedDevicesChanged:(id)changed;
@end

@implementation NPTOSyncServiceController

- (void)_updateDeviceControllers
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    selfCopy = "[NPTOSyncServiceController _updateDeviceControllers]";
    v23 = 2080;
    v24 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Daemon Controllers/NPTOSyncServiceController.m";
    v25 = 1024;
    LODWORD(v26) = 81;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
  }

  dispatch_assert_queue_V2(self->_queue);
  v4 = +[NSMapTable strongToStrongObjectsMapTable];
  v5 = +[NSHashTable weakObjectsHashTable];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(IDSService *)self->_service linkedDevicesWithRelationship:self->_relationship, 0];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [(NSMapTable *)self->_deviceControllers objectForKey:v11];
        if (!v12)
        {
          v12 = [objc_alloc(self->_deviceControllerClass) initWithDevice:v11 service:self->_service];
        }

        if (self->_requiresConnectedDevice && ![v11 isConnected])
        {
          if ([(NSHashTable *)self->_activeDeviceControllers containsObject:v12])
          {
            [v12 pause];
          }
        }

        else
        {
          if (![(NSHashTable *)self->_activeDeviceControllers containsObject:v12])
          {
            [v12 resume];
          }

          [v5 addObject:v12];
        }

        if (v12)
        {
          [v4 setObject:v12 forKey:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v13 = [v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
      v8 = v13;
    }

    while (v13);
  }

  objc_storeStrong(&self->_deviceControllers, v4);
  objc_storeStrong(&self->_activeDeviceControllers, v5);
  v14 = sub_10000268C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    deviceControllers = self->_deviceControllers;
    activeDeviceControllers = self->_activeDeviceControllers;
    *buf = 138412802;
    selfCopy = self;
    v23 = 2112;
    v24 = deviceControllers;
    v25 = 2112;
    v26 = activeDeviceControllers;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: Updated device controllers: %@ active device controllers: %@", buf, 0x20u);
  }
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = NPTOSyncServiceController;
  v3 = [(NPTOSyncServiceController *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" service: %@", self->_serviceIdentifier];

  return v4;
}

- (NPTOSyncServiceController)initWithService:(id)service relationship:(int64_t)relationship requiresConnectedDevice:(BOOL)device deviceControllerClass:(Class)class
{
  serviceCopy = service;
  v32.receiver = self;
  v32.super_class = NPTOSyncServiceController;
  v12 = [(NPTOSyncServiceController *)&v32 init];
  if (v12)
  {
    v13 = sub_10000268C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v34 = "[NPTOSyncServiceController initWithService:relationship:requiresConnectedDevice:deviceControllerClass:]";
      v35 = 2080;
      v36 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Daemon Controllers/NPTOSyncServiceController.m";
      v37 = 1024;
      v38 = 36;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", buf, 0x1Cu);
    }

    objc_storeStrong(&v12->_serviceIdentifier, service);
    v12->_requiresConnectedDevice = device;
    v12->_deviceControllerClass = class;
    v12->_relationship = relationship;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [NSString stringWithFormat:@"%@.%@", v15, @"queue"];
    v17 = dispatch_queue_create([v16 UTF8String], 0);
    queue = v12->_queue;
    v12->_queue = v17;

    v19 = [[IDSService alloc] initWithService:v12->_serviceIdentifier];
    service = v12->_service;
    v12->_service = v19;

    [(IDSService *)v12->_service addDelegate:v12 queue:v12->_queue];
    v21 = [NPTOTransaction alloc];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [NSString stringWithFormat:@"%@.%@", v23, @"_updateDeviceControllers"];
    v25 = [(NPTOTransaction *)v21 initWithDescription:v24];

    v26 = v12->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100061710;
    block[3] = &unk_10008B1E8;
    v30 = v25;
    v31 = v12;
    v27 = v25;
    dispatch_async(v26, block);
  }

  return v12;
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v5 = sub_10000268C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[NPTOSyncServiceController service:devicesChanged:]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Daemon Controllers/NPTOSyncServiceController.m";
    v10 = 1024;
    v11 = 67;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  [(NPTOSyncServiceController *)self _updateDeviceControllers];
}

- (void)service:(id)service linkedDevicesChanged:(id)changed
{
  v5 = sub_10000268C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[NPTOSyncServiceController service:linkedDevicesChanged:]";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Daemon Controllers/NPTOSyncServiceController.m";
    v10 = 1024;
    v11 = 73;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v6, 0x1Cu);
  }

  [(NPTOSyncServiceController *)self _updateDeviceControllers];
}

@end