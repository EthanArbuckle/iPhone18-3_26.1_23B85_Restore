@interface REMCDRecurrenceRule
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)object;
- (BOOL)mergeWithLocalObject:(id)object;
- (id)existingLocalObjectToMergeWithPredicate:(id)predicate;
- (id)newlyCreatedRecord;
- (id)parentCloudObject;
- (id)recordType;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)cleanUpAfterLocalObjectMerge;
- (void)fixBrokenReferences;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
@end

@implementation REMCDRecurrenceRule

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  reminder = [(REMCDRecurrenceRule *)self reminder];
  v6 = [reminder isConnectedToAccountObject:objectCopy];

  return v6;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  reminder = [(REMCDRecurrenceRule *)self reminder];
  if (reminder)
  {
    reminder2 = [(REMCDRecurrenceRule *)self reminder];
    effectiveMinimumSupportedVersion = [reminder2 effectiveMinimumSupportedVersion];
  }

  else
  {
    effectiveMinimumSupportedVersion = kREMSupportedVersionUnset;
  }

  return effectiveMinimumSupportedVersion;
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
  v12 = static REMCDRecurrenceRule.existingCloudObject(for:accountID:managedObjectContext:)(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  recordCopy = record;
  accountCopy = account;
  contextCopy = context;
  v11 = static REMCDRecurrenceRule.newCloudObject(for:account:managedObjectContext:)(recordCopy, accountCopy, contextCopy);

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
  REMCDRecurrenceRule.mergeData(from:accountID:)(recordCopy, v11);
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = REMCDRecurrenceRule.newlyCreatedRecord()();

  return v3;
}

- (id)parentCloudObject
{
  reminder = [(REMCDRecurrenceRule *)self reminder];

  return reminder;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  v6 = _sSo19REMCDRecurrenceRuleC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = _sSo19REMCDRecurrenceRuleC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  selfCopy = self;
  REMCDRecurrenceRule.cleanUpAfterLocalObjectMerge()();
}

- (void)fixBrokenReferences
{
  selfCopy = self;
  REMCDRecurrenceRule.fixBrokenReferences()();
}

@end