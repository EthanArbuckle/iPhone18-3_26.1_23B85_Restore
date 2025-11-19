@interface REMCDAlarm
+ (id)ckRecordType;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)a3;
- (BOOL)isSnooze;
- (BOOL)mergeWithLocalObject:(id)a3;
- (id)existingLocalObjectToMergeWithPredicate:(id)a3;
- (id)modelObject;
- (id)newlyCreatedRecord;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)parentCloudObject;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)cleanUpAfterLocalObjectMerge;
- (void)didSave;
- (void)fixBrokenReferences;
- (void)mergeDataFromRecord:(id)a3 accountID:(id)a4;
- (void)setReminder:(id)a3;
- (void)willSave;
@end

@implementation REMCDAlarm

+ (id)ckRecordType
{
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

- (BOOL)isConnectedToAccountObject:(id)a3
{
  v4 = a3;
  v5 = [(REMCDAlarm *)self reminder];
  v6 = [v5 isConnectedToAccountObject:v4];

  return v6;
}

- (id)modelObject
{
  v3 = [(REMCDAlarm *)self trigger];
  v4 = [v3 modelObject];

  v5 = [(REMCDAlarm *)self identifier];
  v6 = [REMAlarm alloc];
  v7 = [REMAlarm objectIDWithUUID:v5];
  v8 = [v6 initWithTrigger:v4 objectID:v7];

  return v8;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  v3 = [(REMCDAlarm *)self reminder];
  if (v3)
  {
    v4 = [(REMCDAlarm *)self reminder];
    v5 = [v4 effectiveMinimumSupportedVersion];
  }

  else
  {
    v5 = kREMSupportedVersionUnset;
  }

  return v5;
}

- (BOOL)isSnooze
{
  v2 = [(REMCDAlarm *)self originalAlarmUID];
  v3 = v2 != 0;

  return v3;
}

- (void)setReminder:(id)a3
{
  v4 = a3;
  [(REMCDObject *)self willChangeValueForKey:@"reminder"];
  [(REMCDAlarm *)self setPrimitiveValue:v4 forKey:@"reminder"];

  v5 = [(REMCDAlarm *)self reminder];
  [v5 updateDisplayDateWithAlarm:self];

  [(REMCDObject *)self didChangeValueForKey:@"reminder"];
}

- (void)willSave
{
  if (![(REMCDAlarm *)self didHandleMarkingExtraneousAlarmDuringWillSave])
  {
    [(REMCDAlarm *)self setDidHandleMarkingExtraneousAlarmDuringWillSave:1];
    if ([(REMCDAlarm *)self markedForDeletion])
    {
      v3 = [(REMCDAlarm *)self reminder];
      if (v3)
      {
      }

      else
      {
        v4 = [(REMCDAlarm *)self trigger];
        if (v4)
        {
          v5 = v4;
          v6 = [(REMCDAlarm *)self trigger];
          if ([v6 markedForDeletion])
          {
            v7 = [(REMCDAlarm *)self trigger];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [(REMCDAlarm *)self setIsExtraneous:1];
            }
          }

          else
          {
          }
        }
      }
    }
  }

  v9.receiver = self;
  v9.super_class = REMCDAlarm;
  [(REMCDObject *)&v9 willSave];
}

- (void)didSave
{
  v3.receiver = self;
  v3.super_class = REMCDAlarm;
  [(REMCDObject *)&v3 didSave];
  [(REMCDAlarm *)self setDidHandleMarkingExtraneousAlarmDuringWillSave:0];
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
  v12 = static REMCDAlarm.existingCloudObject(for:accountID:managedObjectContext:)(v10, v7, v9, v11);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)a3 account:(id)a4 context:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static REMCDAlarm.newCloudObject(for:account:managedObjectContext:)(v8, v9, v10);

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
  REMCDAlarm.mergeData(from:accountID:)(v9, v11);
}

- (id)newlyCreatedRecord
{
  v2 = self;
  v3 = REMCDAlarm.newlyCreatedRecord()();

  return v3;
}

- (id)parentCloudObject
{
  v2 = [(REMCDAlarm *)self reminder];

  return v2;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _sSo10REMCDAlarmC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = _sSo10REMCDAlarmC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  v2 = self;
  REMCDAlarm.cleanUpAfterLocalObjectMerge()();
}

- (id)objectsToBeDeletedBeforeThisObject
{
  v2 = self;
  v3 = [(REMCDAlarm *)v2 trigger];
  if (v3)
  {
    v4 = v3;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100791300;
    *(v5 + 56) = sub_1000060C8(0, &unk_100940330, off_1008D4148);
    *(v5 + 32) = v4;
  }

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)fixBrokenReferences
{
  v2 = self;
  REMCDAlarm.fixBrokenReferences()();
}

@end