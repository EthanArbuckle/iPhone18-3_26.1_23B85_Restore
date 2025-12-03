@interface WiFiUserNotRespondedHotspotInfoType
- (WiFiUserNotRespondedHotspotInfoType)initWithHotspot:(id)hotspot;
@end

@implementation WiFiUserNotRespondedHotspotInfoType

- (WiFiUserNotRespondedHotspotInfoType)initWithHotspot:(id)hotspot
{
  hotspotCopy = hotspot;
  v11.receiver = self;
  v11.super_class = WiFiUserNotRespondedHotspotInfoType;
  v6 = [(WiFiUserNotRespondedHotspotInfoType *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hotspotDevice, hotspot);
    v8 = +[NSDate date];
    lastNotifiedAt = v7->_lastNotifiedAt;
    v7->_lastNotifiedAt = v8;
  }

  return v7;
}

@end