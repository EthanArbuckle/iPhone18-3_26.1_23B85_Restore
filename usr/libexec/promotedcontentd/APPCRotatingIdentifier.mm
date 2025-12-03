@interface APPCRotatingIdentifier
- (APPCRotatingIdentifier)init;
- (APPCRotatingIdentifier)initWithRotatingIdentifier:(id)identifier;
- (NSString)value;
- (int64_t)type;
- (void)setType:(int64_t)type;
- (void)setValue:(id)value;
@end

@implementation APPCRotatingIdentifier

- (NSString)value
{
  swift_beginAccess();

  v2 = sub_100398F28();

  return v2;
}

- (void)setValue:(id)value
{
  v4 = sub_100398F58();
  v6 = v5;
  v7 = (self + OBJC_IVAR___APPCRotatingIdentifier_value);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)type
{
  v3 = OBJC_IVAR___APPCRotatingIdentifier_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(int64_t)type
{
  v5 = OBJC_IVAR___APPCRotatingIdentifier_type;
  swift_beginAccess();
  *(self + v5) = type;
}

- (APPCRotatingIdentifier)initWithRotatingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = sub_100384890();

  return v4;
}

- (APPCRotatingIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end