@interface REMCDHashtag
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)object;
- (BOOL)mergeWithLocalObject:(id)object;
- (id)existingLocalObjectToMergeWithPredicate:(id)predicate;
- (id)newlyCreatedRecord;
- (id)recordType;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)cleanUpAfterLocalObjectMerge;
- (void)fixBrokenReferences;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
- (void)setReminderIdentifier:(id)identifier;
@end

@implementation REMCDHashtag

- (void)setReminderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  reminderIdentifier = [(REMCDHashtag *)self reminderIdentifier];
  v6 = reminderIdentifier;
  if (!identifierCopy && reminderIdentifier)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100765464(self, v7);
    }
  }

  [(REMCDObject *)self willChangeValueForKey:@"reminderIdentifier"];
  [(REMCDHashtag *)self setPrimitiveValue:identifierCopy forKey:@"reminderIdentifier"];

  [(REMCDObject *)self didChangeValueForKey:@"reminderIdentifier"];
}

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  reminder = [(REMCDHashtag *)self reminder];
  v6 = [reminder isConnectedToAccountObject:objectCopy];

  return v6;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  reminder = [(REMCDHashtag *)self reminder];
  if (reminder)
  {
    reminder2 = [(REMCDHashtag *)self reminder];
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
  v12 = static REMCDHashtag.existingCloudObject(for:accountID:managedObjectContext:)(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  recordCopy = record;
  accountCopy = account;
  contextCopy = context;
  v11 = static REMCDHashtag.newCloudObject(for:account:managedObjectContext:)(recordCopy, accountCopy, contextCopy);

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
  REMCDHashtag.mergeData(from:accountID:)(recordCopy, v11);
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = REMCDHashtag.newlyCreatedRecord()();

  return v3;
}

- (void)fixBrokenReferences
{
  selfCopy = self;
  REMCDHashtag.fixBrokenReferences()();
}

- (id)existingLocalObjectToMergeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  v6 = _sSo12REMCDHashtagC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = _sSo12REMCDHashtagC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  selfCopy = self;
  REMCDHashtag.cleanUpAfterLocalObjectMerge()();
}

@end