@interface REMCDHashtag
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)a3;
- (BOOL)mergeWithLocalObject:(id)a3;
- (id)existingLocalObjectToMergeWithPredicate:(id)a3;
- (id)newlyCreatedRecord;
- (id)recordType;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)cleanUpAfterLocalObjectMerge;
- (void)fixBrokenReferences;
- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4;
- (void)setReminderIdentifier:(id)a3;
@end

@implementation REMCDHashtag

- (void)setReminderIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(REMCDHashtag *)self reminderIdentifier];
  v6 = v5;
  if (!v4 && v5)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100765464(self, v7);
    }
  }

  [(REMCDObject *)self willChangeValueForKey:@"reminderIdentifier"];
  [(REMCDHashtag *)self setPrimitiveValue:v4 forKey:@"reminderIdentifier"];

  [(REMCDObject *)self didChangeValueForKey:@"reminderIdentifier"];
}

- (BOOL)isConnectedToAccountObject:(id)a3
{
  v4 = a3;
  v5 = [(REMCDHashtag *)self reminder];
  v6 = [v5 isConnectedToAccountObject:v4];

  return v6;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  v3 = [(REMCDHashtag *)self reminder];
  if (v3)
  {
    v4 = [(REMCDHashtag *)self reminder];
    v5 = [v4 effectiveMinimumSupportedVersion];
  }

  else
  {
    v5 = kREMSupportedVersionUnset;
  }

  return v5;
}

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
  v12 = static REMCDHashtag.existingCloudObject(for:accountID:managedObjectContext:)(v10, v7, v9, v11);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static REMCDHashtag.newCloudObject(for:account:managedObjectContext:)(v8, v9, v10);

  return v11;
}

- (id)recordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDHashtag.mergeData(from:accountID:)(v9, v11);
}

- (id)newlyCreatedRecord
{
  v2 = self;
  v3 = REMCDHashtag.newlyCreatedRecord()();

  return v3;
}

- (void)fixBrokenReferences
{
  v2 = self;
  REMCDHashtag.fixBrokenReferences()();
}

- (id)existingLocalObjectToMergeWithPredicate:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo12REMCDHashtagC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = _sSo12REMCDHashtagC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  v2 = self;
  REMCDHashtag.cleanUpAfterLocalObjectMerge()();
}

@end