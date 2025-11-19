@interface REMCDTemplate
+ (NSString)cdEntityName;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion;
+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)a3;
- (BOOL)mergeWithLocalObject:(id)a3;
- (REMCDTemplate)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (id)existingLocalObjectToMergeWithPredicate:(id)a3;
- (id)newlyCreatedRecord;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)recordType;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void).cxx_construct;
- (void)cleanUpAfterLocalObjectMerge;
- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4;
- (void)sortChildrenObjects;
- (void)willSave_Swift;
@end

@implementation REMCDTemplate

+ (id)recordTypes
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a5;
  v12 = static REMCDTemplate.existingCloudObject(for:accountID:managedObjectContext:)(v10, v7, v9, v11);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static REMCDTemplate.newCloudObject(for:account:managedObjectContext:)(v8, v9, v10);

  return v11;
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)sortChildrenObjects
{
  v2 = self;
  _s7remindd13REMCDTemplateC19sortChildrenObjectsyyF_0();
}

- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDTemplate.mergeData(from:accountID:)(v9, v11);
}

- (id)newlyCreatedRecord
{
  v2 = self;
  v3 = REMCDTemplate.newlyCreatedRecord()();

  return v3;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s7remindd13REMCDTemplateC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = _s7remindd13REMCDTemplateC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  v2 = self;
  REMCDTemplate.cleanUpAfterLocalObjectMerge()();
}

- (id)objectsToBeDeletedBeforeThisObject
{
  v2 = self;
  v3 = [(REMCDTemplate *)v2 savedReminders];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for REMCDSavedReminder();
    sub_10027D940(&qword_100944240, type metadata accessor for REMCDSavedReminder);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_100278454(v5);

    v7 = sub_100270E28(v6, type metadata accessor for REMCDSavedReminder);

    sub_100271468(v7);
  }

  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

+ (NSString)cdEntityName
{
  v2 = [objc_opt_self() cdEntityName];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();

    v2 = v3;
  }

  return v2;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  v2 = self;
  v3 = [(REMCDTemplate *)v2 parentAccount];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 effectiveMinimumSupportedVersion];
  }

  else
  {
    v5 = kREMSupportedVersionUnset;
  }

  return v5;
}

+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion
{
  sub_1001A5660(&off_1008E35C0);
  sub_100034610(&unk_1008E35E0);
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (BOOL)isConnectedToAccountObject:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = REMCDTemplate.isConnected(toAccountObject:)(v4);

  return self & 1;
}

- (REMCDTemplate)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for REMCDTemplate();
  return [(REMCDTemplate *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void).cxx_construct
{
  *(&self->super.super.super.isa + OBJC_IVAR___REMCDTemplate_didCleanUpManualSortHintOnMarkingForDeletion) = 0;
  v2 = (&self->super.super.super.isa + OBJC_IVAR___REMCDTemplate_defaultPublicLinkURLHostname);
  *v2 = 0x632E64756F6C6369;
  v2[1] = 0xEA00000000006D6FLL;
}

- (void)willSave_Swift
{
  if ((*(&self->super.super.super.isa + OBJC_IVAR___REMCDTemplate_didCleanUpManualSortHintOnMarkingForDeletion) & 1) == 0)
  {
    *(&self->super.super.super.isa + OBJC_IVAR___REMCDTemplate_didCleanUpManualSortHintOnMarkingForDeletion) = 1;
    v3 = self;
    sub_10043ACE0();
  }
}

@end