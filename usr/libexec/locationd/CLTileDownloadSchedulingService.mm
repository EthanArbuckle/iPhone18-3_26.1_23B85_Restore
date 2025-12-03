@interface CLTileDownloadSchedulingService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
- (CLTileDownloadSchedulingService)init;
- (NSMutableArray)clients;
- (void)beginService;
- (void)dealloc;
- (void)endService;
- (void)requestForSchedulingTileDownload:(id)download;
- (void)scheduleDownloadsWithCellularConnectivity;
- (void)scheduleDownloadsWithWifiConnectivity;
- (void)stopListeningForForScheduledTileDownload:(id)download;
@end

@implementation CLTileDownloadSchedulingService

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  v5 = index + 1;
  if (index + 1 < [blocked count])
  {
    [objc_msgSend(blocked objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blocked, v5}];
  }
}

+ (id)getSilo
{
  if (qword_10265A688 != -1)
  {
    sub_101953B58();
  }

  return qword_10265A680;
}

- (CLTileDownloadSchedulingService)init
{
  v3.receiver = self;
  v3.super_class = CLTileDownloadSchedulingService;
  return [(CLTileDownloadSchedulingService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CLTileDownloadSchedulingServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CLTileDownloadSchedulingClientProtocol];
}

- (void)dealloc
{
  [(CLTileDownloadSchedulingService *)self setClients:0];
  xpc_activity_unregister("com.apple.locationd.TileDownloadWifiReachability");
  xpc_activity_unregister("com.apple.locationd.TileDownloadCellReachability");
  v3.receiver = self;
  v3.super_class = CLTileDownloadSchedulingService;
  [(CLTileDownloadSchedulingService *)&v3 dealloc];
}

- (void)beginService
{
  universe = [(CLTileDownloadSchedulingService *)self universe];

  [universe silo];
}

- (void)endService
{
  universe = [(CLTileDownloadSchedulingService *)self universe];

  [universe silo];
}

- (void)requestForSchedulingTileDownload:(id)download
{
  if (([(NSMutableArray *)[(CLTileDownloadSchedulingService *)self clients] containsObject:download]& 1) != 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101953B6C();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#tiledownloadscheduler, warning, client is re-subscribing", &v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101953C74();
    }
  }

  else
  {
    [(NSMutableArray *)[(CLTileDownloadSchedulingService *)self clients] addObject:download];
    if (qword_1025D4600 != -1)
    {
      sub_101953B6C();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134217984;
      v8 = [(NSMutableArray *)[(CLTileDownloadSchedulingService *)self clients] count];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#tiledownloadscheduler, add client, count, %ld", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101953B80();
    }
  }

  if (![(CLTileDownloadSchedulingService *)self hasRegisteredForWifiConnectivity])
  {
    [(CLTileDownloadSchedulingService *)self scheduleDownloadsWithWifiConnectivity];
  }

  if (![(CLTileDownloadSchedulingService *)self hasRegisteredForCellularConnectivity])
  {
    [(CLTileDownloadSchedulingService *)self scheduleDownloadsWithCellularConnectivity];
  }
}

- (void)stopListeningForForScheduledTileDownload:(id)download
{
  [(NSMutableArray *)[(CLTileDownloadSchedulingService *)self clients] removeObject:download];
  if (qword_1025D4600 != -1)
  {
    sub_101953B6C();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134349056;
    v6 = [(NSMutableArray *)[(CLTileDownloadSchedulingService *)self clients] count];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#tiledownloadscheduler, client unsubscribe, count, %{public}ld", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101953D78();
  }
}

- (void)scheduleDownloadsWithWifiConnectivity
{
  if (![(CLTileDownloadSchedulingService *)self hasRegisteredForWifiConnectivity])
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    sub_100844084(v3, 2);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100844184;
    handler[3] = &unk_10245EAB8;
    handler[4] = self;
    xpc_activity_register("com.apple.locationd.TileDownloadWifiReachability", v3, handler);
    xpc_release(v3);
    [(CLTileDownloadSchedulingService *)self setHasRegisteredForWifiConnectivity:1];
  }
}

- (void)scheduleDownloadsWithCellularConnectivity
{
  if (![(CLTileDownloadSchedulingService *)self hasRegisteredForCellularConnectivity])
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    sub_100844084(v3, 1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1008445B4;
    handler[3] = &unk_10245EAB8;
    handler[4] = self;
    xpc_activity_register("com.apple.locationd.TileDownloadCellReachability", v3, handler);
    xpc_release(v3);
    [(CLTileDownloadSchedulingService *)self setHasRegisteredForCellularConnectivity:1];
  }
}

- (NSMutableArray)clients
{
  result = self->_clients;
  if (!result)
  {
    result = objc_alloc_init(NSMutableArray);
    self->_clients = result;
  }

  return result;
}

@end