@interface CLIndoorForegroundFetchRequest
- (BOOL)isRequestValid:(id)a3;
- (CLIndoorForegroundFetchRequest)init;
- (CLIndoorForegroundFetchRequest)initWithFloorRequests:(id)a3 forAction:(unsigned __int8)a4;
- (unint64_t)numExpectedFloors;
- (void)requestDidComplete:(id)a3;
- (void)requestDidComplete:(id)a3 withError:(id)a4;
@end

@implementation CLIndoorForegroundFetchRequest

- (CLIndoorForegroundFetchRequest)init
{
  v6.receiver = self;
  v6.super_class = CLIndoorForegroundFetchRequest;
  v2 = [(CLIndoorForegroundFetchRequest *)&v6 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

- (CLIndoorForegroundFetchRequest)initWithFloorRequests:(id)a3 forAction:(unsigned __int8)a4
{
  v7 = a3;
  v8 = [(CLIndoorForegroundFetchRequest *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_floorRequests, a3);
    v9->_action = a4;
  }

  return v9;
}

- (unint64_t)numExpectedFloors
{
  v2 = [(CLIndoorForegroundFetchRequest *)self floorRequests];
  v3 = [v2 count];

  return v3;
}

- (BOOL)isRequestValid:(id)a3
{
  v4 = a3;
  v5 = [(CLIndoorForegroundFetchRequest *)self uuid];
  if (!v5)
  {
    sub_1000474A4(buf, "");
    sub_100383A74(__p, buf);
    sub_10003F5D0(__p);
  }

  if (!v4)
  {
    sub_1000474A4(buf, "");
    sub_100383A74(__p, buf);
    sub_1000BC6D8(__p);
  }

  v6 = [v4 requestUUID];
  v7 = [(CLIndoorForegroundFetchRequest *)self uuid];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v9 = qword_10045B078;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v4 requestUUID];
      v11 = [v10 UUIDString];
      v12 = v11;
      v13 = [v11 UTF8String];
      v14 = [(CLIndoorForegroundFetchRequest *)self uuid];
      v15 = [v14 UUIDString];
      v16 = v15;
      *buf = 136315394;
      v20 = v13;
      v21 = 2080;
      v22 = [v15 UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got request complete for an outdated request. Received %s but expecting %s. Ignoring", buf, 0x16u);
    }
  }

  return v8;
}

- (void)requestDidComplete:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CLIndoorForegroundFetchRequest *)self isRequestValid:v6])
  {
    if (qword_10045B070 != -1)
    {
      sub_100387BC0();
    }

    v8 = qword_10045B078;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = [v6 venueUuid];
      v9 = [v14 UTF8String];
      v10 = [v6 floorUuid];
      v11 = v9;
      v12 = [v10 UTF8String];
      v13 = [v7 description];
      *buf = 136381699;
      v16 = v11;
      v17 = 2081;
      v18 = v12;
      v19 = 2080;
      v20 = [v13 UTF8String];
      v21 = 2048;
      v22 = [(CLIndoorForegroundFetchRequest *)self numFloorsSuccessfullyDownloaded];
      v23 = 2048;
      v24 = [(CLIndoorForegroundFetchRequest *)self numExpectedFloors];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get a floor for venue ID %{private}s|%{private}s because %s\nHave %lu of %lu floors", buf, 0x34u);
    }
  }
}

- (void)requestDidComplete:(id)a3
{
  v4 = a3;
  if ([(CLIndoorForegroundFetchRequest *)self isRequestValid:v4])
  {
    [(CLIndoorForegroundFetchRequest *)self setNumFloorsSuccessfullyDownloaded:[(CLIndoorForegroundFetchRequest *)self numFloorsSuccessfullyDownloaded]+ 1];
    if (qword_10045B070 != -1)
    {
      sub_100387BC0();
    }

    v5 = qword_10045B078;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(CLIndoorForegroundFetchRequest *)self numFloorsSuccessfullyDownloaded];
      v7 = [(CLIndoorForegroundFetchRequest *)self numExpectedFloors];
      v8 = [v4 venueUuid];
      v9 = [v8 UTF8String];
      v10 = [v4 floorUuid];
      v11 = 134218755;
      v12 = v6;
      v13 = 2048;
      v14 = v7;
      v15 = 2081;
      v16 = v9;
      v17 = 2081;
      v18 = [v10 UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received floor %lu of %lu for venue ID %{private}s|%{private}s", &v11, 0x2Au);
    }
  }
}

@end