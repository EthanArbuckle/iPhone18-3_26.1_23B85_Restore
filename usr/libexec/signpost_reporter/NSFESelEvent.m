@interface NSFESelEvent
+ (BOOL)handle:(id)a3;
- (NSFESelEvent)init;
- (NSString)description;
@end

@implementation NSFESelEvent

- (NSString)description
{
  v2 = self;
  sub_100009008();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

+ (BOOL)handle:(id)a3
{
  v3 = a3;
  v4 = sub_10000B8A4(v3);

  return v4;
}

- (NSFESelEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end