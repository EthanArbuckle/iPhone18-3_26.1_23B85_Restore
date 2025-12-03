@interface RDLocationManager
- (_TtC7remindd17RDLocationManager)init;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didEnterRegion:(id)region;
- (void)locationManager:(id)manager didExitRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation RDLocationManager

- (_TtC7remindd17RDLocationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)manager didEnterRegion:(id)region
{
  selfCopy = self;
  regionCopy = region;
  sub_100509E84(0x7265746E45646964, 0xEE006E6F69676552, selfCopy, regionCopy, "didEnterRegion: %@", 0x7265746E45646964, 0xEE006E6F69676552, sub_100509B0C);
}

- (void)locationManager:(id)manager didExitRegion:(id)region
{
  selfCopy = self;
  regionCopy = region;
  sub_100509E84(0x5274697845646964, 0xED00006E6F696765, selfCopy, regionCopy, "didExitRegion: %@", 0x5274697845646964, 0xED00006E6F696765, sub_100509CC8);
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  managerCopy = manager;
  regionCopy = region;
  selfCopy = self;
  sub_10050A684(state, regionCopy);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_10050A90C();
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  managerCopy = manager;
  regionCopy = region;
  errorCopy = error;
  selfCopy = self;
  sub_10050AB54(region);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  selfCopy = self;
  authorizationCopy = authorization;
  sub_10050A2C0(0xD000000000000016, 0x80000001007FB8E0, selfCopy, authorizationCopy);
}

@end