@interface WAGeoServicesMessageSubmitter
- (WAGeoServicesMessageSubmitter)initWithMessageGroupType:(int64_t)type;
- (id)submitMessage:(id)message;
@end

@implementation WAGeoServicesMessageSubmitter

- (WAGeoServicesMessageSubmitter)initWithMessageGroupType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = WAGeoServicesMessageSubmitter;
  result = [(WAGeoServicesMessageSubmitter *)&v5 init];
  result->_groupTypeForThisSubmitter = type;
  return result;
}

- (id)submitMessage:(id)message
{
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = WAGeoServicesMessageSubmitter;
  v5 = [(WAProtobufMessageSubmitter *)&v12 instantiateAWDProtobufAndPopulateValues:messageCopy];
  if (v5)
  {
    if (objc_opt_class())
    {
      [GEOWiFiConnectionQualityReporter reportWiFiConnectionQuality:v5];
      v6 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = [messageCopy key];
        *buf = 136446722;
        v14 = "[WAGeoServicesMessageSubmitter submitMessage:]";
        v15 = 1024;
        v16 = 48;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Successfully submitted GeoServices message with key: %@", buf, 0x1Cu);
      }
    }

    else
    {
      v6 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v14 = "[WAGeoServicesMessageSubmitter submitMessage:]";
        v15 = 1024;
        v16 = 45;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:No GEOWiFiConnectionQualityReporter to report WiFiConnectionQuality with", buf, 0x12u);
      }
    }

    v8 = 0;
  }

  else
  {
    v19 = NSLocalizedFailureReasonErrorKey;
    v20 = @"WAErrorCodeSubmissionModelFailure";
    v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9007 userInfo:v6];
  }

  submissionDelegate = [(WAMessageAWDSubmitter *)self submissionDelegate];
  uuid = [messageCopy uuid];
  [submissionDelegate messsageWasSubmittedWithUUID:uuid];

  return v8;
}

@end