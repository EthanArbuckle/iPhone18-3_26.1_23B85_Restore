@interface WiFiUserNotRespondedHotspotInfoType
- (WiFiUserNotRespondedHotspotInfoType)initWithHotspot:(id)a3;
@end

@implementation WiFiUserNotRespondedHotspotInfoType

- (WiFiUserNotRespondedHotspotInfoType)initWithHotspot:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = WiFiUserNotRespondedHotspotInfoType;
  v6 = [(WiFiUserNotRespondedHotspotInfoType *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hotspotDevice, a3);
    v8 = +[NSDate date];
    lastNotifiedAt = v7->_lastNotifiedAt;
    v7->_lastNotifiedAt = v8;
  }

  return v7;
}

@end