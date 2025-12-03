@interface REMCDSavedAttachment
+ (NSString)cdEntityName;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion;
+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)object;
- (BOOL)mergeWithLocalObject:(id)object;
- (REMCDSavedAttachment)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (id)existingLocalObjectToMergeWithPredicate:(id)predicate;
- (id)newlyCreatedRecord;
- (id)parentCloudObject;
- (id)recordType;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)cleanUpAfterLocalObjectMerge;
- (void)fixBrokenReferences;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
- (void)prepareForDeletion;
@end

@implementation REMCDSavedAttachment

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
  v12 = static REMCDSavedAttachment.existingCloudObject(for:accountID:managedObjectContext:)(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  recordCopy = record;
  accountCopy = account;
  contextCopy = context;
  v11 = static REMCDSavedAttachment.newCloudObject(for:account:managedObjectContext:)(recordCopy, accountCopy, contextCopy);

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
  REMCDSavedAttachment.mergeData(from:accountID:)(recordCopy, v11);
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = REMCDSavedAttachment.newlyCreatedRecord()();

  return v3;
}

- (id)parentCloudObject
{
  reminder = [(REMCDSavedAttachment *)self reminder];

  return reminder;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  v6 = _s7remindd20REMCDSavedAttachmentC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = _s7remindd20REMCDSavedAttachmentC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  selfCopy = self;
  REMCDSavedAttachment.cleanUpAfterLocalObjectMerge()();
}

- (void)fixBrokenReferences
{
  selfCopy = self;
  REMCDSavedAttachment.fixBrokenReferences()();
}

+ (NSString)cdEntityName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)prepareForDeletion
{
  selfCopy = self;
  REMCDSavedAttachment.prepareForDeletion()();
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  selfCopy = self;
  reminder = [(REMCDSavedAttachment *)selfCopy reminder];
  if (reminder)
  {
    v4 = reminder;
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
  sub_1001A5660(&off_1008E4320);
  sub_100034610(&unk_1008E4340);
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = REMCDSavedAttachment.isConnected(toAccountObject:)(objectCopy);

  return self & 1;
}

- (REMCDSavedAttachment)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(REMCDSavedAttachment *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end