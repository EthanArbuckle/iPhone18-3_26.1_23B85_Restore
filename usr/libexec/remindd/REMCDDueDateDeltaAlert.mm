@interface REMCDDueDateDeltaAlert
+ (NSString)cdEntityName;
+ (id)objectIDWithUUID:(id)d;
- (REMCDDueDateDeltaAlert)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (REMObjectID)remObjectID;
- (id)remChangedObjectID;
- (id)remObjectIDWithError:(id *)error;
@end

@implementation REMCDDueDateDeltaAlert

- (REMCDDueDateDeltaAlert)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(REMCDDueDateDeltaAlert *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

+ (NSString)cdEntityName
{
  swift_getObjCClassMetadata();
  sub_1000F5104(&unk_100950F40, &qword_1007AE990);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)remChangedObjectID
{
  selfCopy = self;
  v3 = REMCDDueDateDeltaAlert.remChangedObjectID()();

  return v3;
}

- (REMObjectID)remObjectID
{
  selfCopy = self;
  v3 = REMCDDueDateDeltaAlert.remObjectID.getter();

  return v3;
}

- (id)remObjectIDWithError:(id *)error
{
  selfCopy = self;
  REMCDDueDateDeltaAlert.checkedREMObjectID()();
  v5 = v4;

  return v5;
}

+ (id)objectIDWithUUID:(id)d
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14[1] = ObjCClassMetadata;
  sub_1000F5104(&unk_100950F40, &qword_1007AE990);
  String.init<A>(describing:)();
  v9 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = String._bridgeToObjectiveC()();

  v12 = [v9 initWithUUID:isa entityName:v11];

  (*(v5 + 8))(v8, v4);

  return v12;
}

@end