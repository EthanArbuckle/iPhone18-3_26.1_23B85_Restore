@interface GKDelayedSetPhotoNetworkWriter
+ (id)writerWithTransport:(id)a3 forBagKey:(id)a4;
- (GKDelayedSetPhotoNetworkWriter)initWithTransport:(id)a3 forBagKey:(id)a4;
- (void)uploadImageData:(id)a3 toURL:(id)a4 handler:(id)a5;
- (void)uploadProfileImageMetadata:(id)a3 fromUploadURL:(id)a4 handler:(id)a5;
- (void)writeResources:(id)a3 handler:(id)a4;
@end

@implementation GKDelayedSetPhotoNetworkWriter

+ (id)writerWithTransport:(id)a3 forBagKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[GKDelayedSetPhotoNetworkWriter alloc] initWithTransport:v6 forBagKey:v5];

  return v7;
}

- (GKDelayedSetPhotoNetworkWriter)initWithTransport:(id)a3 forBagKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GKDelayedSetPhotoNetworkWriter;
  v8 = [(GKDelayedSetPhotoNetworkWriter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKDelayedSetPhotoNetworkWriter *)v8 setTransport:v6];
    [(GKDelayedSetPhotoNetworkWriter *)v9 setBagKey:v7];
  }

  return v9;
}

- (void)writeResources:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 _gkValuesForKeyPath:@"resourceID"];
  if ([v8 count] >= 2)
  {
    v19 = objc_opt_class();
    v20 = [(GKDelayedSetPhotoNetworkWriter *)self bagKey];
    v21 = [NSString stringWithFormat:@"%@ is being asked to submit a delayed request for multiple players:%@. This is not currently supported. Bag key: %@", v8, v19, v20];
    v22 = [NSException exceptionWithName:NSInvalidArgumentException reason:v21 userInfo:0];
    v23 = v22;

    objc_exception_throw(v22);
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKDelayedSetPhotoNetworkWriter: starting avatar image upload process.", buf, 2u);
  }

  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKDelayedSetPhotoNetworkWriter.m", 58, "[GKDelayedSetPhotoNetworkWriter writeResources:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100111C34;
  v28[3] = &unk_100361F90;
  v29 = v8;
  v30 = v6;
  v31 = self;
  v13 = v12;
  v32 = v13;
  v14 = v6;
  v15 = v8;
  [v13 perform:v28];
  v16 = dispatch_get_global_queue(0, 0);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100111F34;
  v24[3] = &unk_100361068;
  v26 = self;
  v27 = v7;
  v25 = v13;
  v17 = v7;
  v18 = v13;
  [v18 notifyOnQueue:v16 block:v24];
}

- (void)uploadImageData:(id)a3 toURL:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKDelayedSetPhotoNetworkWriter.m", 98, "[GKDelayedSetPhotoNetworkWriter uploadImageData:toURL:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001121FC;
  v25[3] = &unk_100360F00;
  v13 = v9;
  v26 = v13;
  v27 = v8;
  v14 = v12;
  v28 = v14;
  v15 = v8;
  [v14 perform:v25];
  v16 = dispatch_get_global_queue(0, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100112830;
  v20[3] = &unk_100360F78;
  v21 = v14;
  v22 = self;
  v23 = v13;
  v24 = v10;
  v17 = v10;
  v18 = v13;
  v19 = v14;
  [v19 notifyOnQueue:v16 block:v20];
}

- (void)uploadProfileImageMetadata:(id)a3 fromUploadURL:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKDelayedSetPhotoNetworkWriter.m", 164, "[GKDelayedSetPhotoNetworkWriter uploadProfileImageMetadata:fromUploadURL:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100112AB8;
  v20[3] = &unk_100361F90;
  v13 = v9;
  v21 = v13;
  v14 = v8;
  v22 = v14;
  v23 = self;
  v15 = v12;
  v24 = v15;
  [v15 perform:v20];
  if (v10)
  {
    v16 = dispatch_get_global_queue(0, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100112F10;
    v17[3] = &unk_100360EB0;
    v19 = v10;
    v18 = v15;
    [v18 notifyOnQueue:v16 block:v17];
  }
}

@end