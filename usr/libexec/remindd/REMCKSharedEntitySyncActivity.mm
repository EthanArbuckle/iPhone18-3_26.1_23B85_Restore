@interface REMCKSharedEntitySyncActivity
+ (NSString)cdEntityName;
- (REMCKSharedEntitySyncActivity)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (id)remChangedObjectID;
- (void)willSave;
@end

@implementation REMCKSharedEntitySyncActivity

+ (NSString)cdEntityName
{
  swift_getObjCClassMetadata();
  sub_1000F5104(&unk_10093E750, qword_10079FC30);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)willSave
{
  v2 = self;
  sub_1002A0464();
}

- (REMCKSharedEntitySyncActivity)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(REMCKSharedEntitySyncActivity *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (id)remChangedObjectID
{
  v2 = self;
  v3 = sub_1002A0758();

  return v3;
}

@end