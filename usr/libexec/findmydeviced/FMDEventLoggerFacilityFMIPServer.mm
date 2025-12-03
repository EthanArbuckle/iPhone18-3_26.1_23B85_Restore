@interface FMDEventLoggerFacilityFMIPServer
- (FMDURLSession)defaultSession;
- (id)splunkifyDictionary:(id)dictionary;
- (id)splunkifyObject:(id)object eventName:(id)name;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)logEvent:(id)event;
@end

@implementation FMDEventLoggerFacilityFMIPServer

- (void)logEvent:(id)event
{
  eventCopy = event;
  v5 = +[FMSystemInfo sharedInstance];
  v6 = +[NSMutableDictionary dictionary];
  osVersion = [v5 osVersion];
  [(__CFString *)v6 fm_safelyMapKey:@"osVersion" toObject:osVersion];

  serialNumber = [v5 serialNumber];
  [(__CFString *)v6 fm_safelyMapKey:@"serialNumber" toObject:serialNumber];

  deviceUDID = [v5 deviceUDID];
  [(__CFString *)v6 fm_safelyMapKey:@"UDID" toObject:deviceUDID];

  osBuildVersion = [v5 osBuildVersion];
  [(__CFString *)v6 fm_safelyMapKey:@"buildVersion" toObject:osBuildVersion];

  productType = [v5 productType];
  [(__CFString *)v6 fm_safelyMapKey:@"productVersion" toObject:productType];

  v12 = +[NSDate date];
  v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 fm_epoch]);
  [(__CFString *)v6 fm_safelyMapKey:@"timestamp" toObject:v13];

  eventName = [eventCopy eventName];
  [(__CFString *)v6 fm_safelyMapKey:@"eventName" toObject:eventName];

  userInfo = [eventCopy userInfo];
  eventName2 = [eventCopy eventName];

  v17 = [(FMDEventLoggerFacilityFMIPServer *)self splunkifyObject:userInfo eventName:eventName2];
  [(__CFString *)v6 fm_safelyMapKey:@"info" toObject:v17];

  v18 = sub_100002880();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Logging event %@", buf, 0xCu);
  }

  if ([(FMDEventLoggerFacilityFMIPServer *)self shouldLog])
  {
    v25 = 0;
    v19 = [NSJSONSerialization dataWithJSONObject:v6 options:0 error:&v25];
    if (!v25)
    {
      v20 = [NSURL URLWithString:@"https://fmip.icloud.com/fmipservice/stats/infoRequest"];
      v21 = [NSMutableURLRequest requestWithURL:v20];

      [v21 setHTTPBody:v19];
      v22 = sub_100002880();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = @"https://fmip.icloud.com/fmipservice/stats/infoRequest";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending logs %@", buf, 0xCu);
      }

      [v21 setAllHTTPHeaderFields:&off_1002E8E08];
      [v21 setHTTPMethod:@"POST"];
      defaultSession = [(FMDEventLoggerFacilityFMIPServer *)self defaultSession];
      v24 = [defaultSession dataTaskWithRequest:v21];

      [v24 resume];
    }
  }
}

- (FMDURLSession)defaultSession
{
  defaultSession = self->_defaultSession;
  if (!defaultSession)
  {
    v4 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v4 setURLCache:0];
    [v4 setRequestCachePolicy:1];
    [v4 setHTTPCookieStorage:0];
    v5 = [FMDURLSessionFactory sessionWithConfiguration:v4 delegate:self delegateQueue:0];
    v6 = self->_defaultSession;
    self->_defaultSession = v5;

    defaultSession = self->_defaultSession;
  }

  return defaultSession;
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  errorCopy = error;
  v6 = sub_100002880();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10022EA5C(errorCopy, v6);
  }

  defaultSession = self->_defaultSession;
  self->_defaultSession = 0;
}

- (id)splunkifyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10000AB64;
  v12 = sub_100002B7C;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D4A54;
  v7[3] = &unk_1002D1120;
  v7[4] = self;
  v7[5] = &v8;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)splunkifyObject:(id)object eventName:(id)name
{
  objectCopy = object;
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [objectCopy stringValue];
LABEL_7:
    v9 = stringValue;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = objectCopy;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [(FMDEventLoggerFacilityFMIPServer *)self splunkifyDictionary:objectCopy];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_10000AB64;
    v18 = sub_100002B7C;
    v19 = &stru_1002DCE08;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001D4D74;
    v13[3] = &unk_1002D1148;
    v13[4] = self;
    v13[5] = &v14;
    [objectCopy enumerateObjectsUsingBlock:v13];
    v9 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = 0;
  }

LABEL_8:
  v10 = nameCopy;
  if (([nameCopy isEqualToString:&stru_1002DCE08] & 1) == 0)
  {
    v10 = [nameCopy stringByAppendingString:{@", "}];
  }

  if (v9)
  {
    v11 = [v10 stringByAppendingString:v9];

    v10 = v11;
  }

  return v10;
}

@end