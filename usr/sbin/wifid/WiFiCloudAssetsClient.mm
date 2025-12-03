@interface WiFiCloudAssetsClient
+ (id)sharedInstance;
- (void)initializeWithManager:(__WiFiManager *)manager queue:(id)queue;
- (void)runAssetQuery;
@end

@implementation WiFiCloudAssetsClient

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039398;
  block[3] = &unk_10025EAD8;
  block[4] = self;
  if (qword_100298468 != -1)
  {
    dispatch_once(&qword_100298468, block);
  }

  v2 = qword_100298460;

  return v2;
}

- (void)runAssetQuery
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100039448;
  v2[3] = &unk_10025EB28;
  v2[4] = self;
  [WCAFetchWiFiBehaviorParameters fetchWiFiBehaviorWithCompletion:v2];
}

- (void)initializeWithManager:(__WiFiManager *)manager queue:(id)queue
{
  queueCopy = queue;
  [(WiFiCloudAssetsClient *)self setWifiManager:manager];
  [(WiFiCloudAssetsClient *)self setQueue:queueCopy];
}

@end