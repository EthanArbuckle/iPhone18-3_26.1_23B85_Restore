@interface REMCDAlarmTrigger
+ (NSString)alarmReferenceCKRecordType;
+ (id)cdEntityName;
+ (id)ckRecordType;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)a3;
- (BOOL)mergeWithLocalObject:(id)a3;
- (id)existingLocalObjectToMergeWithPredicate:(id)a3;
- (id)modelObject;
- (id)newlyCreatedRecord;
- (id)parentCloudObject;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)cleanUpAfterLocalObjectMerge;
- (void)fixBrokenReferences;
- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4;
- (void)setAlarm:(id)a3;
@end

@implementation REMCDAlarmTrigger

+ (id)ckRecordType
{
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

+ (id)cdEntityName
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(a1);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    sub_1007653A0();
  }

  v7 = +[REMAlarmTrigger cdEntityName];

  return v7;
}

- (void)setAlarm:(id)a3
{
  v4 = a3;
  [(REMCDObject *)self willChangeValueForKey:@"alarm"];
  [(REMCDAlarmTrigger *)self setPrimitiveValue:v4 forKey:@"alarm"];
  [(REMCDObject *)self didChangeValueForKey:@"alarm"];
  v6 = [(REMCDAlarmTrigger *)self alarm];
  v5 = [v6 reminder];
  [v5 updateDisplayDateWithAlarm:v4];
}

- (id)modelObject
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Abstract method called [%@ %@]", v3, v4];

  return 0;
}

- (BOOL)isConnectedToAccountObject:(id)a3
{
  v4 = a3;
  v5 = [(REMCDAlarmTrigger *)self alarm];
  v6 = [v5 isConnectedToAccountObject:v4];

  return v6;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  v3 = [(REMCDAlarmTrigger *)self alarm];
  if (v3)
  {
    v4 = [(REMCDAlarmTrigger *)self alarm];
    v5 = [v4 effectiveMinimumSupportedVersion];
  }

  else
  {
    v5 = kREMSupportedVersionUnset;
  }

  return v5;
}

+ (NSString)alarmReferenceCKRecordType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
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
  v12 = static REMCDAlarmTrigger.existingCloudObject(for:accountID:managedObjectContext:)(v10, v7, v9, v11);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static REMCDAlarmTrigger.newCloudObject(for:account:managedObjectContext:)(v8, v9, v10);

  return v11;
}

- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDAlarmTrigger.mergeData(from:accountID:)(v9, v11);
}

- (id)newlyCreatedRecord
{
  v2 = self;
  v3 = REMCDAlarmTrigger.newlyCreatedRecord()();

  return v3;
}

- (id)parentCloudObject
{
  v2 = [(REMCDAlarmTrigger *)self alarm];

  return v2;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo17REMCDAlarmTriggerC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = _sSo17REMCDAlarmTriggerC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  v2 = self;
  REMCDAlarmTrigger.cleanUpAfterLocalObjectMerge()();
}

- (void)fixBrokenReferences
{
  v2 = self;
  REMCDAlarmTrigger.fixBrokenReferences()();
}

@end