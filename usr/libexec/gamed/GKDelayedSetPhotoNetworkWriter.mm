@interface GKDelayedSetPhotoNetworkWriter
+ (id)writerWithTransport:(id)transport forBagKey:(id)key;
- (GKDelayedSetPhotoNetworkWriter)initWithTransport:(id)transport forBagKey:(id)key;
- (void)uploadImageData:(id)data toURL:(id)l handler:(id)handler;
- (void)uploadProfileImageMetadata:(id)metadata fromUploadURL:(id)l handler:(id)handler;
- (void)writeResources:(id)resources handler:(id)handler;
@end

@implementation GKDelayedSetPhotoNetworkWriter

+ (id)writerWithTransport:(id)transport forBagKey:(id)key
{
  keyCopy = key;
  transportCopy = transport;
  v7 = [[GKDelayedSetPhotoNetworkWriter alloc] initWithTransport:transportCopy forBagKey:keyCopy];

  return v7;
}

- (GKDelayedSetPhotoNetworkWriter)initWithTransport:(id)transport forBagKey:(id)key
{
  transportCopy = transport;
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = GKDelayedSetPhotoNetworkWriter;
  v8 = [(GKDelayedSetPhotoNetworkWriter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKDelayedSetPhotoNetworkWriter *)v8 setTransport:transportCopy];
    [(GKDelayedSetPhotoNetworkWriter *)v9 setBagKey:keyCopy];
  }

  return v9;
}

- (void)writeResources:(id)resources handler:(id)handler
{
  resourcesCopy = resources;
  handlerCopy = handler;
  v8 = [resourcesCopy _gkValuesForKeyPath:@"resourceID"];
  if ([v8 count] >= 2)
  {
    v19 = objc_opt_class();
    bagKey = [(GKDelayedSetPhotoNetworkWriter *)self bagKey];
    v21 = [NSString stringWithFormat:@"%@ is being asked to submit a delayed request for multiple players:%@. This is not currently supported. Bag key: %@", v8, v19, bagKey];
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
  v30 = resourcesCopy;
  selfCopy = self;
  v13 = v12;
  v32 = v13;
  v14 = resourcesCopy;
  v15 = v8;
  [v13 perform:v28];
  v16 = dispatch_get_global_queue(0, 0);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100111F34;
  v24[3] = &unk_100361068;
  selfCopy2 = self;
  v27 = handlerCopy;
  v25 = v13;
  v17 = handlerCopy;
  v18 = v13;
  [v18 notifyOnQueue:v16 block:v24];
}

- (void)uploadImageData:(id)data toURL:(id)l handler:(id)handler
{
  dataCopy = data;
  lCopy = l;
  handlerCopy = handler;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKDelayedSetPhotoNetworkWriter.m", 98, "[GKDelayedSetPhotoNetworkWriter uploadImageData:toURL:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001121FC;
  v25[3] = &unk_100360F00;
  v13 = lCopy;
  v26 = v13;
  v27 = dataCopy;
  v14 = v12;
  v28 = v14;
  v15 = dataCopy;
  [v14 perform:v25];
  v16 = dispatch_get_global_queue(0, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100112830;
  v20[3] = &unk_100360F78;
  v21 = v14;
  selfCopy = self;
  v23 = v13;
  v24 = handlerCopy;
  v17 = handlerCopy;
  v18 = v13;
  v19 = v14;
  [v19 notifyOnQueue:v16 block:v20];
}

- (void)uploadProfileImageMetadata:(id)metadata fromUploadURL:(id)l handler:(id)handler
{
  metadataCopy = metadata;
  lCopy = l;
  handlerCopy = handler;
  v11 = [NSString stringWithFormat:@"%s:%d %s", "GKDelayedSetPhotoNetworkWriter.m", 164, "[GKDelayedSetPhotoNetworkWriter uploadProfileImageMetadata:fromUploadURL:handler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100112AB8;
  v20[3] = &unk_100361F90;
  v13 = lCopy;
  v21 = v13;
  v14 = metadataCopy;
  v22 = v14;
  selfCopy = self;
  v15 = v12;
  v24 = v15;
  [v15 perform:v20];
  if (handlerCopy)
  {
    v16 = dispatch_get_global_queue(0, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100112F10;
    v17[3] = &unk_100360EB0;
    v19 = handlerCopy;
    v18 = v15;
    [v18 notifyOnQueue:v16 block:v17];
  }
}

@end