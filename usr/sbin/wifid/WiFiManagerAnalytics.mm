@interface WiFiManagerAnalytics
+ (id)sharedInstance;
- (WiFiManagerAnalytics)init;
- (id)__copyHashOfSSID:(id)a3;
- (id)_initPrivate;
- (int)_getAssociationEventIDForEventTypeString:(id)a3;
- (void)_populateDPSAPInfoMessage:(__CFDictionary *)a3 andReply:(id)a4;
- (void)_populateDPSLinkStateChangeMessage:(id *)a3 andReply:(id)a4;
- (void)_populateDPSNotificationMessage:(__CFDictionary *)a3 andReply:(id)a4;
- (void)_populateDPSProbeResultMessage:(id *)a3 andReply:(id)a4;
- (void)_populateSlowWiFiNotificationMessage:(__CFDictionary *)a3 andReply:(id)a4;
- (void)_register;
- (void)getDeviceAnalyticsConfigurationWithCompletion:(id)a3;
- (void)setDeviceAnalyticsConfiguration:(id)a3;
- (void)setWiFiManagerQueue:(id)a3;
- (void)submitWiFiAnalytics:(id)a3 data:(id)a4;
- (void)submitWiFiAnalyticsMessage:(id)a3;
- (void)triggerDatapathDiagnosticsNoReply:(id)a3;
- (void)triggerDeviceAnalyticsStoreMigrationWithCompletion:(id)a3;
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

- (void)setWiFiManagerQueue:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:2 message:{"%s WiFiManagerQueue was set", "-[WiFiManagerAnalytics setWiFiManagerQueue:]"}];
  }

  objc_autoreleasePoolPop(v5);
  wifiManagerQueue = self->_wifiManagerQueue;
  self->_wifiManagerQueue = v4;
}

- (void)submitWiFiAnalyticsMessage:(id)a3
{
  v8 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = off_100298C40;
  if (off_100298C40)
  {
    v6 = [v8 metricName];
    [v5 WFLog:3 message:{"%s Received call to submit WiFi Analytics message with (%@) value", "-[WiFiManagerAnalytics submitWiFiAnalyticsMessage:]", v6}];
  }

  objc_autoreleasePoolPop(v4);
  v7 = [(WiFiManagerAnalytics *)self waClient];
  [v7 submitWiFiAnalyticsMessageAdvanced:v8];
}

- (void)submitWiFiAnalytics:(id)a3 data:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s Received call to submit WiFi Analytics event for %@", "-[WiFiManagerAnalytics submitWiFiAnalytics:data:]", v9}];
  }

  objc_autoreleasePoolPop(v7);
  v8 = [(WiFiManagerAnalytics *)self waClient];
  [v8 submitWiFiAnalytics:v9 data:v6];
}

- (void)triggerDatapathDiagnosticsNoReply:(id)a3
{
  v4 = a3;
  v5 = [(WiFiManagerAnalytics *)self waClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010B8D8;
  v7[3] = &unk_100262A40;
  v8 = v4;
  v6 = v4;
  [v5 triggerDatapathDiagnosticsAndCollectUpdates:0 waMessage:v6 andReply:v7];
}

- (void)setDeviceAnalyticsConfiguration:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(WiFiManagerAnalytics *)self waClient];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10010BA9C;
  v6[3] = &unk_100262A68;
  objc_copyWeak(&v7, &location);
  [v5 setDeviceAnalyticsConfiguration:v4 andReply:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)getDeviceAnalyticsConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WiFiManagerAnalytics *)self waClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010BC08;
  v7[3] = &unk_100262A90;
  v8 = v4;
  v6 = v4;
  [v5 getDeviceAnalyticsConfigurationAndReply:v7];
}

- (void)triggerDeviceAnalyticsStoreMigrationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[WAClient sharedClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010BDCC;
  v7[3] = &unk_100262AB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 triggerDeviceAnalyticsStoreMigrationAndReply:v7];
}

- (WiFiManagerAnalytics)init
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"[WAClient init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (id)__copyHashOfSSID:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v6 = [v5 deviceIdentifierForVendor];

  if (v6)
  {
    v7 = [v6 UUIDString];
    v8 = [v7 cStringUsingEncoding:4];

    v9 = [v3 cStringUsingEncoding:4];
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

- (void)_populateDPSNotificationMessage:(__CFDictionary *)a3 andReply:(id)a4
{
  v5 = a4;
  v6 = +[WAClient sharedClient];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010C774;
  v8[3] = &unk_100262B58;
  v9 = v5;
  v10 = a3;
  v7 = v5;
  [v6 getNewMessageForKey:@"DPSN" groupType:4 andReply:v8];
}

- (void)_populateDPSProbeResultMessage:(id *)a3 andReply:(id)a4
{
  v5 = a4;
  v6 = +[WAClient sharedClient];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010CC08;
  v8[3] = &unk_100262B58;
  v9 = v5;
  v10 = a3;
  v7 = v5;
  [v6 getNewMessageForKey:@"DPSAPS" groupType:4 andReply:v8];
}

- (void)_populateDPSLinkStateChangeMessage:(id *)a3 andReply:(id)a4
{
  v5 = a4;
  v6 = +[WAClient sharedClient];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010CEB4;
  v8[3] = &unk_100262B58;
  v9 = v5;
  v10 = a3;
  v7 = v5;
  [v6 getNewMessageForKey:@"WFAAWDWADAAD" groupType:4 andReply:v8];
}

- (void)_populateDPSAPInfoMessage:(__CFDictionary *)a3 andReply:(id)a4
{
  v5 = a4;
  v6 = +[WAClient sharedClient];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010D170;
  v8[3] = &unk_100262B58;
  v9 = v5;
  v10 = a3;
  v7 = v5;
  [v6 getNewMessageForKey:@"WFAAWDWAAAPI" groupType:4 andReply:v8];
}

- (void)_populateSlowWiFiNotificationMessage:(__CFDictionary *)a3 andReply:(id)a4
{
  v5 = a4;
  v6 = +[WAClient sharedClient];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010D434;
  v8[3] = &unk_100262B58;
  v9 = v5;
  v10 = a3;
  v7 = v5;
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

- (int)_getAssociationEventIDForEventTypeString:(id)a3
{
  v3 = 6;
  if (a3)
  {
    v4 = a3;
    if ([v4 isEqualToString:@"AUTH"])
    {
      v5 = 0;
    }

    else
    {
      v5 = 6;
    }

    if ([v4 isEqualToString:@"ASSOC"])
    {
      v5 = 1;
    }

    if ([v4 isEqualToString:@"ASSOC_DONE"])
    {
      v5 = 2;
    }

    if ([v4 isEqualToString:@"LINK STATUS EVENT"])
    {
      v5 = 3;
    }

    if ([v4 isEqualToString:@"LINK CHANGED"])
    {
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 isEqualToString:@"SSID CHANGED"];

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