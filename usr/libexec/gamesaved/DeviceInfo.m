@interface DeviceInfo
- (DeviceInfo)init;
- (DeviceInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DeviceInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000FF7C(v4);
}

- (DeviceInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_100010F58();

  return v4;
}

- (DeviceInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end