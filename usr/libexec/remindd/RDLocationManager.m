@interface RDLocationManager
- (_TtC7remindd17RDLocationManager)init;
- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5;
- (void)locationManager:(id)a3 didEnterRegion:(id)a4;
- (void)locationManager:(id)a3 didExitRegion:(id)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation RDLocationManager

- (_TtC7remindd17RDLocationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)locationManager:(id)a3 didEnterRegion:(id)a4
{
  v6 = self;
  v5 = a4;
  sub_100509E84(0x7265746E45646964, 0xEE006E6F69676552, v6, v5, "didEnterRegion: %@", 0x7265746E45646964, 0xEE006E6F69676552, sub_100509B0C);
}

- (void)locationManager:(id)a3 didExitRegion:(id)a4
{
  v6 = self;
  v5 = a4;
  sub_100509E84(0x5274697845646964, 0xED00006E6F696765, v6, v5, "didExitRegion: %@", 0x5274697845646964, 0xED00006E6F696765, sub_100509CC8);
}

- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_10050A684(a4, v9);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_10050A90C();
}

- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_10050AB54(a4);
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v5 = self;
  v4 = a3;
  sub_10050A2C0(0xD000000000000016, 0x80000001007FB8E0, v5, v4);
}

@end