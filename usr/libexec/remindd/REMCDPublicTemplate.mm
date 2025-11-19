@interface REMCDPublicTemplate
+ (NSString)cdEntityName;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
- (REMCDPublicTemplate)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (REMObjectID)remObjectID;
@end

@implementation REMCDPublicTemplate

+ (NSString)cdEntityName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (REMObjectID)remObjectID
{
  v2 = self;
  v3 = sub_1006E8E28();

  return v3;
}

+ (id)newObjectID
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v7 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 initWithUUID:isa entityName:v9];

  (*(v3 + 8))(v6, v2);
  return v10;
}

+ (id)objectIDWithUUID:(id)a3
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 initWithUUID:isa entityName:v10];

  (*(v4 + 8))(v7, v3);

  return v11;
}

- (REMCDPublicTemplate)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(REMCDPublicTemplate *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end