@interface REMCDSmartListSection
+ (NSString)cdEntityName;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)keyPathsForValuesAffectingEffectiveMinimumSupportedVersion;
+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context;
+ (id)recordTypes;
- (BOOL)mergeWithLocalObject:(id)object;
- (REMCDObject)parentCDObject;
- (REMCDSmartListSection)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (id)existingLocalObjectToMergeWithPredicate:(id)predicate;
- (id)newlyCreatedRecord;
- (id)parentCloudObject;
- (id)recordType;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)cleanUpAfterLocalObjectMerge;
- (void)fixBrokenReferences;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
@end

@implementation REMCDSmartListSection

- (REMCDObject)parentCDObject
{
  smartList = [(REMCDSmartListSection *)self smartList];

  return smartList;
}

+ (NSString)cdEntityName
{
  sub_100238948();
  cdEntityName = [swift_getObjCClassFromMetadata() cdEntityName];
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
  smartList = [(REMCDSmartListSection *)selfCopy smartList];
  if (smartList)
  {
    v4 = smartList;
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
  sub_1001A5660(&off_1008E27C0);
  sub_100034610(&unk_1008E27E0);
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (REMCDSmartListSection)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for REMCDSmartListSection();
  return [(REMCDBaseSection *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
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
  v12 = static REMCDSmartListSection.existingCloudObject(for:accountID:managedObjectContext:)(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  recordCopy = record;
  accountCopy = account;
  contextCopy = context;
  v11 = static REMCDSmartListSection.newCloudObject(for:account:managedObjectContext:)(recordCopy, accountCopy, contextCopy);

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
  REMCDSmartListSection.mergeData(from:accountID:)(recordCopy, v11);
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = REMCDSmartListSection.newlyCreatedRecord()();

  return v3;
}

- (id)parentCloudObject
{
  smartList = [(REMCDSmartListSection *)self smartList];

  return smartList;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  v6 = _s7remindd21REMCDSmartListSectionC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = _s7remindd21REMCDSmartListSectionC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  selfCopy = self;
  REMCDSmartListSection.cleanUpAfterLocalObjectMerge()();
}

- (void)fixBrokenReferences
{
  selfCopy = self;
  REMCDSmartListSection.fixBrokenReferences()();
}

@end