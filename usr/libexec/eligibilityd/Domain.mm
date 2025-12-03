@interface Domain
- (Domain)init;
- (NSArray)contextKeys;
- (NSDictionary)status;
- (unint64_t)answer;
@end

@implementation Domain

- (NSArray)contextKeys
{
  v2 = *(self + OBJC_IVAR___Domain_contextKeys);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (unint64_t)answer
{
  selfCopy = self;
  v3 = sub_10000D58C();

  return v3;
}

- (NSDictionary)status
{
  selfCopy = self;
  v3 = sub_10000D94C();

  if (v3)
  {
    sub_10000FAF0(0, &qword_10005BE10, NSNumber_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (Domain)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end