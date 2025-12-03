@interface REMCDTemplate
+ (NSString)cdEntityName;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion;
+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)object;
- (BOOL)mergeWithLocalObject:(id)object;
- (REMCDTemplate)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (id)existingLocalObjectToMergeWithPredicate:(id)predicate;
- (id)newlyCreatedRecord;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)recordType;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void).cxx_construct;
- (void)cleanUpAfterLocalObjectMerge;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
- (void)sortChildrenObjects;
- (void)willSave_Swift;
@end

@implementation REMCDTemplate

+ (id)recordTypes
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  dCopy = d;
  contextCopy = context;
  v12 = static REMCDTemplate.existingCloudObject(for:accountID:managedObjectContext:)(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  recordCopy = record;
  accountCopy = account;
  contextCopy = context;
  v11 = static REMCDTemplate.newCloudObject(for:account:managedObjectContext:)(recordCopy, accountCopy, contextCopy);

  return v11;
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)sortChildrenObjects
{
  selfCopy = self;
  _s7remindd13REMCDTemplateC19sortChildrenObjectsyyF_0();
}

- (void)mergeDataFromRecord:(id)record accountID:(id)d
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  recordCopy = record;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDTemplate.mergeData(from:accountID:)(recordCopy, v11);
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = REMCDTemplate.newlyCreatedRecord()();

  return v3;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  v6 = _s7remindd13REMCDTemplateC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = _s7remindd13REMCDTemplateC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  selfCopy = self;
  REMCDTemplate.cleanUpAfterLocalObjectMerge()();
}

- (id)objectsToBeDeletedBeforeThisObject
{
  selfCopy = self;
  savedReminders = [(REMCDTemplate *)selfCopy savedReminders];
  if (savedReminders)
  {
    v4 = savedReminders;
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
  cdEntityName = [objc_opt_self() cdEntityName];
  if (!cdEntityName)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();

    cdEntityName = v3;
  }

  return cdEntityName;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  selfCopy = self;
  parentAccount = [(REMCDTemplate *)selfCopy parentAccount];
  if (parentAccount)
  {
    v4 = parentAccount;
    effectiveMinimumSupportedVersion = [v4 effectiveMinimumSupportedVersion];
  }

  else
  {
    effectiveMinimumSupportedVersion = kREMSupportedVersionUnset;
  }

  return effectiveMinimumSupportedVersion;
}

+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion
{
  sub_1001A5660(&off_1008E35C0);
  sub_100034610(&unk_1008E35E0);
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = REMCDTemplate.isConnected(toAccountObject:)(objectCopy);

  return self & 1;
}

- (REMCDTemplate)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for REMCDTemplate();
  return [(REMCDTemplate *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
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
    selfCopy = self;
    sub_10043ACE0();
  }
}

@end