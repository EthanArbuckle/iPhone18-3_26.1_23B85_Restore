@interface DeviceInfo
- (DeviceInfo)init;
- (DeviceInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DeviceInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_10000FF7C(coderCopy);
}

- (DeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
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