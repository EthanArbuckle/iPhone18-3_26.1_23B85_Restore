@interface REMCDSavedReminder
+ (NSString)cdEntityName;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion;
+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)object;
- (BOOL)mergeWithLocalObject:(id)object;
- (REMCDSavedReminder)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (id)existingLocalObjectToMergeWithPredicate:(id)predicate;
- (id)newlyCreatedRecord;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)recordType;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)cleanUpAfterLocalObjectMerge;
- (void)fixBrokenReferences;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
@end

@implementation REMCDSavedReminder

+ (NSString)cdEntityName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  selfCopy = self;
  template = [(REMCDSavedReminder *)selfCopy template];
  if (template)
  {
    v4 = template;
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
  sub_1001A5660(&off_1008E2A58);
  sub_100034610(&unk_1008E2A78);
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = REMCDSavedReminder.isConnected(toAccountObject:)(objectCopy);

  return self & 1;
}

- (REMCDSavedReminder)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for REMCDSavedReminder();
  return [(REMCDSavedReminder *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

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
  v12 = static REMCDSavedReminder.existingCloudObject(for:accountID:managedObjectContext:)(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  recordCopy = record;
  accountCopy = account;
  contextCopy = context;
  v11 = static REMCDSavedReminder.newCloudObject(for:account:managedObjectContext:)(recordCopy, accountCopy, contextCopy);

  return v11;
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)mergeDataFromRecord:(id)record accountID:(id)d
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  recordCopy = record;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDSavedReminder.mergeData(from:accountID:)(recordCopy, v11);
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = REMCDSavedReminder.newlyCreatedRecord()();

  return v3;
}

- (void)fixBrokenReferences
{
  selfCopy = self;
  REMCDSavedReminder.fixBrokenReferences()();
}

- (id)existingLocalObjectToMergeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  v6 = _s7remindd18REMCDSavedReminderC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = _s7remindd18REMCDSavedReminderC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  selfCopy = self;
  REMCDSavedReminder.cleanUpAfterLocalObjectMerge()();
}

- (id)objectsToBeDeletedBeforeThisObject
{
  selfCopy = self;
  attachments = [(REMCDSavedReminder *)selfCopy attachments];
  if (attachments)
  {
    v4 = attachments;
    type metadata accessor for REMCDSavedAttachment();
    sub_1003B37A8(&unk_10093F780, type metadata accessor for REMCDSavedAttachment);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_100278AE4(v5);

    v7 = sub_100271294(v6);

    sub_100271468(v7);
  }

  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

@end