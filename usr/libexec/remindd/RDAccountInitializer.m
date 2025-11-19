@interface RDAccountInitializer
+ (NSString)DidCompleteInitializeAllAccountsNotification;
- (_TtC7remindd20RDAccountInitializer)init;
@end

@implementation RDAccountInitializer

+ (NSString)DidCompleteInitializeAllAccountsNotification
{
  if (qword_1009361C0 != -1)
  {
    swift_once();
  }

  v3 = qword_100974E90;

  return v3;
}

- (_TtC7remindd20RDAccountInitializer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end