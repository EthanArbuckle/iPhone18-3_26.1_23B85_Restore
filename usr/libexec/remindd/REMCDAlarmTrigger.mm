@interface REMCDAlarmTrigger
+ (NSString)alarmReferenceCKRecordType;
+ (id)cdEntityName;
+ (id)ckRecordType;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)object;
- (BOOL)mergeWithLocalObject:(id)object;
- (id)existingLocalObjectToMergeWithPredicate:(id)predicate;
- (id)modelObject;
- (id)newlyCreatedRecord;
- (id)parentCloudObject;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)cleanUpAfterLocalObjectMerge;
- (void)fixBrokenReferences;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
- (void)setAlarm:(id)alarm;
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
  v5 = NSStringFromClass(self);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    sub_1007653A0();
  }

  v7 = +[REMAlarmTrigger cdEntityName];

  return v7;
}

- (void)setAlarm:(id)alarm
{
  alarmCopy = alarm;
  [(REMCDObject *)self willChangeValueForKey:@"alarm"];
  [(REMCDAlarmTrigger *)self setPrimitiveValue:alarmCopy forKey:@"alarm"];
  [(REMCDObject *)self didChangeValueForKey:@"alarm"];
  alarm = [(REMCDAlarmTrigger *)self alarm];
  reminder = [alarm reminder];
  [reminder updateDisplayDateWithAlarm:alarmCopy];
}

- (id)modelObject
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Abstract method called [%@ %@]", v3, v4];

  return 0;
}

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  alarm = [(REMCDAlarmTrigger *)self alarm];
  v6 = [alarm isConnectedToAccountObject:objectCopy];

  return v6;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  alarm = [(REMCDAlarmTrigger *)self alarm];
  if (alarm)
  {
    alarm2 = [(REMCDAlarmTrigger *)self alarm];
    effectiveMinimumSupportedVersion = [alarm2 effectiveMinimumSupportedVersion];
  }

  else
  {
    effectiveMinimumSupportedVersion = kREMSupportedVersionUnset;
  }

  return effectiveMinimumSupportedVersion;
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

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  dCopy = d;
  contextCopy = context;
  v12 = static REMCDAlarmTrigger.existingCloudObject(for:accountID:managedObjectContext:)(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  recordCopy = record;
  accountCopy = account;
  contextCopy = context;
  v11 = static REMCDAlarmTrigger.newCloudObject(for:account:managedObjectContext:)(recordCopy, accountCopy, contextCopy);

  return v11;
}

- (void)mergeDataFromRecord:(id)record accountID:(id)d
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  recordCopy = record;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  REMCDAlarmTrigger.mergeData(from:accountID:)(recordCopy, v11);
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = REMCDAlarmTrigger.newlyCreatedRecord()();

  return v3;
}

- (id)parentCloudObject
{
  alarm = [(REMCDAlarmTrigger *)self alarm];

  return alarm;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  v6 = _sSo17REMCDAlarmTriggerC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = _sSo17REMCDAlarmTriggerC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  selfCopy = self;
  REMCDAlarmTrigger.cleanUpAfterLocalObjectMerge()();
}

- (void)fixBrokenReferences
{
  selfCopy = self;
  REMCDAlarmTrigger.fixBrokenReferences()();
}

@end