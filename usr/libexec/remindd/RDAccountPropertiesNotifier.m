@interface RDAccountPropertiesNotifier
+ (NSString)notificationUserInfoAccountObjectIDKey;
+ (NSString)notificationUserInfoAccountTypeKey;
+ (NSString)notificationUserInfoPropertyNameKey;
+ (NSString)notificationUserInfoPropertyValueKey;
- (RDAccountPropertiesNotifier)init;
@end

@implementation RDAccountPropertiesNotifier

+ (NSString)notificationUserInfoAccountObjectIDKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)notificationUserInfoAccountTypeKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)notificationUserInfoPropertyNameKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)notificationUserInfoPropertyValueKey
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (RDAccountPropertiesNotifier)init
{
  v3 = type metadata accessor for UnfairLock.Options();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = OBJC_IVAR___RDAccountPropertiesNotifier_lock;
  v11 = _swiftEmptyArrayStorage;
  sub_10051BD00(&qword_100936E60, &type metadata accessor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v6 = type metadata accessor for UnfairLock();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(&self->super.isa + v5) = UnfairLock.init(options:)();
  *(&self->super.isa + OBJC_IVAR___RDAccountPropertiesNotifier_l_observers) = _swiftEmptyDictionarySingleton;
  *(&self->super.isa + OBJC_IVAR___RDAccountPropertiesNotifier_l_cancellables) = _swiftEmptyDictionarySingleton;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RDAccountPropertiesNotifier();
  return [(RDAccountPropertiesNotifier *)&v10 init];
}

@end