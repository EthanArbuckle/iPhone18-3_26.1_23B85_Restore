@interface NMROrigin
+ (id)_transientOriginWithEndpointRoute:(id)a3;
- (BOOL)isCompanion;
- (BOOL)isLocal;
- (MPAVRoute)route;
- (NMROrigin)init;
- (NMROrigin)initWithOrigin:(void *)a3 deviceInfo:(void *)a4;
- (NMROrigin)initWithRoute:(id)a3;
- (NSNumber)uniqueIdentifier;
- (NSString)deviceIdentifier;
- (NSString)displayName;
- (id)description;
- (id)playerPathWithBundleID:(id)a3 playerID:(id)a4;
- (int64_t)logicalDeviceCount;
- (unint64_t)connectionState;
- (unint64_t)type;
- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)a3;
- (void)_handleRouteConnectionDidConnectNotification:(id)a3;
- (void)_handleRouteConnectionDidInvalidateNotification:(id)a3;
- (void)_updateConnectionState;
- (void)dealloc;
- (void)mediaRemoteOrigin;
- (void)updateOrigin:(void *)a3 deviceInfo:(void *)a4;
- (void)updateRoute:(id)a3;
@end

@implementation NMROrigin

- (NMROrigin)init
{
  v10.receiver = self;
  v10.super_class = NMROrigin;
  v2 = [(NMROrigin *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoMediaRemote.Origin", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_handleRouteConnectionDidConnectNotification:" name:_MPAVRouteConnectionDidConnectNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_handleRouteConnectionDidInvalidateNotification:" name:_MPAVRouteConnectionDidInvalidateNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_handleExternalDeviceConnectionStateDidChangeNotification:" name:kMRExternalDeviceConnectionStateDidChangeNotification object:0];
  }

  return v2;
}

- (NMROrigin)initWithRoute:(id)a3
{
  v5 = a3;
  v6 = [(NMROrigin *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_route, a3);
    v7->_connectionState = 2;
    [(NMROrigin *)v7 _updateConnectionState];
  }

  return v7;
}

- (NMROrigin)initWithOrigin:(void *)a3 deviceInfo:(void *)a4
{
  v5 = [(NMROrigin *)self init];
  if (v5)
  {
    v5->_mediaRemoteOrigin = CFRetain(a3);
    Copy = MRPairedDeviceCreateCopy();
    v5->_connectionState = 2;
    v5->_deviceInfo = Copy;
    [(NMROrigin *)v5 _updateConnectionState];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    CFRelease(deviceInfo);
  }

  mediaRemoteOrigin = self->_mediaRemoteOrigin;
  if (mediaRemoteOrigin)
  {
    CFRelease(mediaRemoteOrigin);
  }

  v6.receiver = self;
  v6.super_class = NMROrigin;
  [(NMROrigin *)&v6 dealloc];
}

- (MPAVRoute)route
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000193E0;
  v10 = sub_1000193F0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000193F8;
  v5[3] = &unk_100048DC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)mediaRemoteOrigin
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000194B8;
  v5[3] = &unk_100048DF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)type
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000195A4;
  v5[3] = &unk_100048DF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)connectionState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 2;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019808;
  v5[3] = &unk_100048DC8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)deviceIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000193E0;
  v10 = sub_1000193F0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001990C;
  v5[3] = &unk_100048DF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)displayName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000193E0;
  v10 = sub_1000193F0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019AFC;
  v5[3] = &unk_100048DF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSNumber)uniqueIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000193E0;
  v10 = sub_1000193F0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019CE0;
  v5[3] = &unk_100048DF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isLocal
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019E00;
  v5[3] = &unk_100048DF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isCompanion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019F00;
  v5[3] = &unk_100048DF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)logicalDeviceCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019FFC;
  v5[3] = &unk_100048DF0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)updateRoute:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A124;
  v7[3] = &unk_100048C80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)updateOrigin:(void *)a3 deviceInfo:(void *)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A200;
  block[3] = &unk_100049228;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(queue, block);
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(NMROrigin *)self displayName];
  v6 = [(NMROrigin *)self deviceIdentifier];
  v7 = [(NMROrigin *)self uniqueIdentifier];
  v8 = [NSString stringWithFormat:@"<%@:%p displayName: %@, deviceIdentifier: %@, originIdentifier: %@, type: %lu>", v4, self, v5, v6, v7, [(NMROrigin *)self type]];

  return v8;
}

- (id)playerPathWithBundleID:(id)a3 playerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000193E0;
  v17 = sub_1000193F0;
  v18 = 0;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001A654;
  v12[3] = &unk_100048DC8;
  v12[4] = self;
  v12[5] = &v13;
  dispatch_sync(queue, v12);
  v9 = v14[5];
  if (v9)
  {
    v10 = [MPCPlayerPath pathWithRoute:v9 bundleID:v6 playerID:v7];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

- (void)_handleRouteConnectionDidConnectNotification:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A700;
  v7[3] = &unk_100048C80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_handleRouteConnectionDidInvalidateNotification:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A818;
  v7[3] = &unk_100048C80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A930;
  v7[3] = &unk_100048C80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

+ (id)_transientOriginWithEndpointRoute:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 initWithRoute:v4];
  }

  else
  {
    v8 = +[MPAVRoutingController systemRoute];
    v7 = [v6 initWithRoute:v8];
  }

  return v7;
}

- (void)_updateConnectionState
{
  route = self->_route;
  if (route)
  {
    v4 = [(MPAVRoute *)route connection];
    v5 = [v4 isInvalidated];

    if (v5)
    {
LABEL_3:
      v6 = 2;
      goto LABEL_11;
    }

    v7 = [(MPAVRoute *)self->_route connection];
    if ([v7 isConnected])
    {

LABEL_10:
      v6 = 1;
      goto LABEL_11;
    }

    v8 = [(MPAVRoute *)self->_route isDeviceRoute];

    if (v8)
    {
      goto LABEL_10;
    }

    v13 = [(MPAVRoute *)self->_route connection];
    v14 = [v13 externalDevice];

    if (!v14)
    {
      goto LABEL_3;
    }

    v15 = [(MPAVRoute *)self->_route connection];
    [v15 externalDevice];
    ConnectionState = MRExternalDeviceGetConnectionState();

    if (ConnectionState == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * (ConnectionState != 1);
    }
  }

  else if (self->_mediaRemoteOrigin)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

LABEL_11:
  if (v6 != self->_connectionState)
  {
    v9 = sub_10002C180(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_route;
      mediaRemoteOrigin = self->_mediaRemoteOrigin;
      v12 = self->_connectionState;
      *buf = 138413058;
      v19 = v10;
      v20 = 2112;
      v21 = mediaRemoteOrigin;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Origin] Updating connection state for route: %@ origin: %@ from: %lu to: %lu", buf, 0x2Au);
    }

    self->_connectionState = v6;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AC5C;
    block[3] = &unk_100048CD0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

@end