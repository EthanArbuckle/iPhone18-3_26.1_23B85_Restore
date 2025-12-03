@interface NSFESelEvent
+ (BOOL)handle:(id)handle;
- (NSFESelEvent)init;
- (NSString)description;
@end

@implementation NSFESelEvent

- (NSString)description
{
  selfCopy = self;
  sub_100009008();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

+ (BOOL)handle:(id)handle
{
  handleCopy = handle;
  v4 = sub_10000B8A4(handleCopy);

  return v4;
}

- (NSFESelEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end