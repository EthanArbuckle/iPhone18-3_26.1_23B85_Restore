@interface RDAccountPersonIDSaltObserver
- (NSString)description;
- (NSString)propertyName;
- (NSUUID)uuid;
- (RDAccountPersonIDSaltObserver)init;
- (RDAccountPersonIDSaltObserver)initWithAccountObjectID:(id)a3 accountType:(int64_t)a4 initialSaltValue:(id)a5 callbackQueue:(id)a6 successHandler:(id)a7 errorHandler:(id)a8;
- (_TtP7remindd20ObservingAccountInfo_)account;
- (void)dealloc;
- (void)notify:(id)a3;
- (void)setPropertyName:(id)a3;
@end

@implementation RDAccountPersonIDSaltObserver

- (NSUUID)uuid
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, self + OBJC_IVAR___RDAccountPersonIDSaltObserver_uuid, v3, v6);
  v9.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v8, v3);

  return v9.super.isa;
}

- (_TtP7remindd20ObservingAccountInfo_)account
{
  v2 = *(self + OBJC_IVAR___RDAccountPersonIDSaltObserver_account);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (RDAccountPersonIDSaltObserver)initWithAccountObjectID:(id)a3 accountType:(int64_t)a4 initialSaltValue:(id)a5 callbackQueue:(id)a6 successHandler:(id)a7 errorHandler:(id)a8
{
  v13 = _Block_copy(a7);
  v14 = _Block_copy(a8);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = a3;
  v18 = a5;
  return sub_10059CA8C(v17, a4, a5, a6, sub_1002A8A6C, v15, sub_10059EB0C, v16);
}

- (NSString)propertyName
{
  v2 = *(self + OBJC_IVAR___RDAccountPersonIDSaltObserver_propertyName);
  v3 = *(self + OBJC_IVAR___RDAccountPersonIDSaltObserver_propertyName + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setPropertyName:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR___RDAccountPersonIDSaltObserver_propertyName);
  v6 = *(self + OBJC_IVAR___RDAccountPersonIDSaltObserver_propertyName + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (void)notify:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10059DBB4(v6);

  sub_1000050A4(v6, &qword_100939ED0, &qword_100791B10);
}

- (NSString)description
{
  v2 = self;
  sub_10059DEAC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(self + OBJC_IVAR___RDAccountPersonIDSaltObserver_currentValueSubject);
  v7 = 1;
  v5 = self;

  CurrentValueSubject.send(completion:)();

  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(RDAccountPersonIDSaltObserver *)&v6 dealloc];
}

- (RDAccountPersonIDSaltObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end