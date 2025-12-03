@interface WiFiManagerAnalytics
+ (id)sharedInstance;
- (WiFiManagerAnalytics)init;
- (id)__copyHashOfSSID:(id)d;
- (id)_initPrivate;
- (int)_getAssociationEventIDForEventTypeString:(id)string;
- (void)_populateDPSAPInfoMessage:(__CFDictionary *)message andReply:(id)reply;
- (void)_populateDPSLinkStateChangeMessage:(id *)message andReply:(id)reply;
- (void)_populateDPSNotificationMessage:(__CFDictionary *)message andReply:(id)reply;
- (void)_populateDPSProbeResultMessage:(id *)message andReply:(id)reply;
- (void)_populateSlowWiFiNotificationMessage:(__CFDictionary *)message andReply:(id)reply;
- (void)_register;
- (void)getDeviceAnalyticsConfigurationWithCompletion:(id)completion;
- (void)setDeviceAnalyticsConfiguration:(id)configuration;
- (void)setWiFiManagerQueue:(id)queue;
- (void)submitWiFiAnalytics:(id)analytics data:(id)data;
- (void)submitWiFiAnalyticsMessage:(id)message;
- (void)triggerDatapathDiagnosticsNoReply:(id)reply;
- (void)triggerDeviceAnalyticsStoreMigrationWithCompletion:(id)completion;
@end

@implementation WiFiManagerAnalytics

+ (id)sharedInstance
{
  if (qword_100298B00 != -1)
  {
    sub_1001ABE1C();
  }

  if (([qword_100298AF8 hasRegisteredWithDaemon] & 1) == 0)
  {
    [qword_100298AF8 _register];
  }

  v2 = qword_100298AF8;

  return v2;
}

- (void)_register
{
  v3 = +[WAClient sharedClient];
  [v3 registerMessageGroup:5 andReply:&stru_100262A18];

  v4 = +[WAClient sharedClient];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010B570;
  v5[3] = &unk_100262A40;
  v5[4] = self;
  [v4 registerMessageGroup:4 andReply:v5];
}

- (void)setWiFiManagerQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:2 message:{"%s WiFiManagerQueue was set", "-[WiFiManagerAnalytics setWiFiManagerQueue:]"}];
  }

  objc_autoreleasePoolPop(v5);
  wifiManagerQueue = self->_wifiManagerQueue;
  self->_wifiManagerQueue = queueCopy;
}

- (void)submitWiFiAnalyticsMessage:(id)message
{
  messageCopy = message;
  v4 = objc_autoreleasePoolPush();
  v5 = off_100298C40;
  if (off_100298C40)
  {
    metricName = [messageCopy metricName];
    [v5 WFLog:3 message:{"%s Received call to submit WiFi Analytics message with (%@) value", "-[WiFiManagerAnalytics submitWiFiAnalyticsMessage:]", metricName}];
  }

  objc_autoreleasePoolPop(v4);
  waClient = [(WiFiManagerAnalytics *)self waClient];
  [waClient submitWiFiAnalyticsMessageAdvanced:messageCopy];
}

- (void)submitWiFiAnalytics:(id)analytics data:(id)data
{
  analyticsCopy = analytics;
  dataCopy = data;
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s Received call to submit WiFi Analytics event for %@", "-[WiFiManagerAnalytics submitWiFiAnalytics:data:]", analyticsCopy}];
  }

  objc_autoreleasePoolPop(v7);
  waClient = [(WiFiManagerAnalytics *)self waClient];
  [waClient submitWiFiAnalytics:analyticsCopy data:dataCopy];
}

- (void)triggerDatapathDiagnosticsNoReply:(id)reply
{
  replyCopy = reply;
  waClient = [(WiFiManagerAnalytics *)self waClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010B8D8;
  v7[3] = &unk_100262A40;
  v8 = replyCopy;
  v6 = replyCopy;
  [waClient triggerDatapathDiagnosticsAndCollectUpdates:0 waMessage:v6 andReply:v7];
}

- (void)setDeviceAnalyticsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_initWeak(&location, self);
  waClient = [(WiFiManagerAnalytics *)self waClient];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10010BA9C;
  v6[3] = &unk_100262A68;
  objc_copyWeak(&v7, &location);
  [waClient setDeviceAnalyticsConfiguration:configurationCopy andReply:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)getDeviceAnalyticsConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  waClient = [(WiFiManagerAnalytics *)self waClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010BC08;
  v7[3] = &unk_100262A90;
  v8 = completionCopy;
  v6 = completionCopy;
  [waClient getDeviceAnalyticsConfigurationAndReply:v7];
}

- (void)triggerDeviceAnalyticsStoreMigrationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[WAClient sharedClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010BDCC;
  v7[3] = &unk_100262AB8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 triggerDeviceAnalyticsStoreMigrationAndReply:v7];
}

- (WiFiManagerAnalytics)init
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"[WAClient init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (id)__copyHashOfSSID:(id)d
{
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  deviceIdentifierForVendor = [v5 deviceIdentifierForVendor];

  if (deviceIdentifierForVendor)
  {
    uUIDString = [deviceIdentifierForVendor UUIDString];
    v8 = [uUIDString cStringUsingEncoding:4];

    v9 = [dCopy cStringUsingEncoding:4];
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    macOut[0] = v10;
    macOut[1] = v10;
    v11 = strlen(v8);
    v12 = strlen(v9);
    CCHmac(2u, v8, v11, v9, v12, macOut);
    v13 = [[NSMutableString alloc] initWithCapacity:64];
    for (i = 0; i != 32; ++i)
    {
      [v13 appendFormat:@"%02x", *(macOut + i)];
    }
  }

  else
  {
    sub_1001ABF34();
    v13 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v13;
}

- (void)_populateDPSNotificationMessage:(__CFDictionary *)message andReply:(id)reply
{
  replyCopy = reply;
  v6 = +[WAClient sharedClient];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010C774;
  v8[3] = &unk_100262B58;
  v9 = replyCopy;
  messageCopy = message;
  v7 = replyCopy;
  [v6 getNewMessageForKey:@"DPSN" groupType:4 andReply:v8];
}

- (void)_populateDPSProbeResultMessage:(id *)message andReply:(id)reply
{
  replyCopy = reply;
  v6 = +[WAClient sharedClient];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010CC08;
  v8[3] = &unk_100262B58;
  v9 = replyCopy;
  messageCopy = message;
  v7 = replyCopy;
  [v6 getNewMessageForKey:@"DPSAPS" groupType:4 andReply:v8];
}

- (void)_populateDPSLinkStateChangeMessage:(id *)message andReply:(id)reply
{
  replyCopy = reply;
  v6 = +[WAClient sharedClient];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010CEB4;
  v8[3] = &unk_100262B58;
  v9 = replyCopy;
  messageCopy = message;
  v7 = replyCopy;
  [v6 getNewMessageForKey:@"WFAAWDWADAAD" groupType:4 andReply:v8];
}

- (void)_populateDPSAPInfoMessage:(__CFDictionary *)message andReply:(id)reply
{
  replyCopy = reply;
  v6 = +[WAClient sharedClient];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010D170;
  v8[3] = &unk_100262B58;
  v9 = replyCopy;
  messageCopy = message;
  v7 = replyCopy;
  [v6 getNewMessageForKey:@"WFAAWDWAAAPI" groupType:4 andReply:v8];
}

- (void)_populateSlowWiFiNotificationMessage:(__CFDictionary *)message andReply:(id)reply
{
  replyCopy = reply;
  v6 = +[WAClient sharedClient];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010D434;
  v8[3] = &unk_100262B58;
  v9 = replyCopy;
  messageCopy = message;
  v7 = replyCopy;
  [v6 getNewMessageForKey:@"WFAAWDSWFN" groupType:4 andReply:v8];
}

- (id)_initPrivate
{
  v9.receiver = self;
  v9.super_class = WiFiManagerAnalytics;
  v2 = [(WiFiManagerAnalytics *)&v9 init];
  if (v2)
  {
    v3 = [WAClient sharedClientWithIdentifier:@"wifid"];
    waClient = v2->_waClient;
    v2->_waClient = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.wifid.wifimanageranalytics.serialQ", v5);
    serialQ = v2->_serialQ;
    v2->_serialQ = v6;
  }

  return v2;
}

- (int)_getAssociationEventIDForEventTypeString:(id)string
{
  v3 = 6;
  if (string)
  {
    stringCopy = string;
    if ([stringCopy isEqualToString:@"AUTH"])
    {
      v5 = 0;
    }

    else
    {
      v5 = 6;
    }

    if ([stringCopy isEqualToString:@"ASSOC"])
    {
      v5 = 1;
    }

    if ([stringCopy isEqualToString:@"ASSOC_DONE"])
    {
      v5 = 2;
    }

    if ([stringCopy isEqualToString:@"LINK STATUS EVENT"])
    {
      v5 = 3;
    }

    if ([stringCopy isEqualToString:@"LINK CHANGED"])
    {
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }

    v7 = [stringCopy isEqualToString:@"SSID CHANGED"];

    if (v7)
    {
      return 5;
    }

    else
    {
      return v6;
    }
  }

  return v3;
}

@end