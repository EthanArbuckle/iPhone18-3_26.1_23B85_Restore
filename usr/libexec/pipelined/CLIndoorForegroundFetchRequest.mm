@interface CLIndoorForegroundFetchRequest
- (BOOL)isRequestValid:(id)valid;
- (CLIndoorForegroundFetchRequest)init;
- (CLIndoorForegroundFetchRequest)initWithFloorRequests:(id)requests forAction:(unsigned __int8)action;
- (unint64_t)numExpectedFloors;
- (void)requestDidComplete:(id)complete;
- (void)requestDidComplete:(id)complete withError:(id)error;
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

- (CLIndoorForegroundFetchRequest)initWithFloorRequests:(id)requests forAction:(unsigned __int8)action
{
  requestsCopy = requests;
  v8 = [(CLIndoorForegroundFetchRequest *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_floorRequests, requests);
    v9->_action = action;
  }

  return v9;
}

- (unint64_t)numExpectedFloors
{
  floorRequests = [(CLIndoorForegroundFetchRequest *)self floorRequests];
  v3 = [floorRequests count];

  return v3;
}

- (BOOL)isRequestValid:(id)valid
{
  validCopy = valid;
  uuid = [(CLIndoorForegroundFetchRequest *)self uuid];
  if (!uuid)
  {
    sub_1000474A4(buf, "");
    sub_100383A74(__p, buf);
    sub_10003F5D0(__p);
  }

  if (!validCopy)
  {
    sub_1000474A4(buf, "");
    sub_100383A74(__p, buf);
    sub_1000BC6D8(__p);
  }

  requestUUID = [validCopy requestUUID];
  uuid2 = [(CLIndoorForegroundFetchRequest *)self uuid];
  v8 = [requestUUID isEqual:uuid2];

  if ((v8 & 1) == 0)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v9 = qword_10045B078;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      requestUUID2 = [validCopy requestUUID];
      uUIDString = [requestUUID2 UUIDString];
      v12 = uUIDString;
      uTF8String = [uUIDString UTF8String];
      uuid3 = [(CLIndoorForegroundFetchRequest *)self uuid];
      uUIDString2 = [uuid3 UUIDString];
      v16 = uUIDString2;
      *buf = 136315394;
      v20 = uTF8String;
      v21 = 2080;
      uTF8String2 = [uUIDString2 UTF8String];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Got request complete for an outdated request. Received %s but expecting %s. Ignoring", buf, 0x16u);
    }
  }

  return v8;
}

- (void)requestDidComplete:(id)complete withError:(id)error
{
  completeCopy = complete;
  errorCopy = error;
  if ([(CLIndoorForegroundFetchRequest *)self isRequestValid:completeCopy])
  {
    if (qword_10045B070 != -1)
    {
      sub_100387BC0();
    }

    v8 = qword_10045B078;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      venueUuid = [completeCopy venueUuid];
      uTF8String = [venueUuid UTF8String];
      floorUuid = [completeCopy floorUuid];
      v11 = uTF8String;
      uTF8String2 = [floorUuid UTF8String];
      v13 = [errorCopy description];
      *buf = 136381699;
      v16 = v11;
      v17 = 2081;
      v18 = uTF8String2;
      v19 = 2080;
      uTF8String3 = [v13 UTF8String];
      v21 = 2048;
      numFloorsSuccessfullyDownloaded = [(CLIndoorForegroundFetchRequest *)self numFloorsSuccessfullyDownloaded];
      v23 = 2048;
      numExpectedFloors = [(CLIndoorForegroundFetchRequest *)self numExpectedFloors];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get a floor for venue ID %{private}s|%{private}s because %s\nHave %lu of %lu floors", buf, 0x34u);
    }
  }
}

- (void)requestDidComplete:(id)complete
{
  completeCopy = complete;
  if ([(CLIndoorForegroundFetchRequest *)self isRequestValid:completeCopy])
  {
    [(CLIndoorForegroundFetchRequest *)self setNumFloorsSuccessfullyDownloaded:[(CLIndoorForegroundFetchRequest *)self numFloorsSuccessfullyDownloaded]+ 1];
    if (qword_10045B070 != -1)
    {
      sub_100387BC0();
    }

    v5 = qword_10045B078;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      numFloorsSuccessfullyDownloaded = [(CLIndoorForegroundFetchRequest *)self numFloorsSuccessfullyDownloaded];
      numExpectedFloors = [(CLIndoorForegroundFetchRequest *)self numExpectedFloors];
      venueUuid = [completeCopy venueUuid];
      uTF8String = [venueUuid UTF8String];
      floorUuid = [completeCopy floorUuid];
      v11 = 134218755;
      v12 = numFloorsSuccessfullyDownloaded;
      v13 = 2048;
      v14 = numExpectedFloors;
      v15 = 2081;
      v16 = uTF8String;
      v17 = 2081;
      uTF8String2 = [floorUuid UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received floor %lu of %lu for venue ID %{private}s|%{private}s", &v11, 0x2Au);
    }
  }
}

@end