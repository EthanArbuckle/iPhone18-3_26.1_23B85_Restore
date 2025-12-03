@interface REMCDAlarm
+ (id)ckRecordType;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context;
+ (id)recordTypes;
- (BOOL)isConnectedToAccountObject:(id)object;
- (BOOL)isSnooze;
- (BOOL)mergeWithLocalObject:(id)object;
- (id)existingLocalObjectToMergeWithPredicate:(id)predicate;
- (id)modelObject;
- (id)newlyCreatedRecord;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)parentCloudObject;
- (int64_t)parentEffectiveMinimumSupportedVersion;
- (void)cleanUpAfterLocalObjectMerge;
- (void)didSave;
- (void)fixBrokenReferences;
- (void)mergeDataFromRecord:(id)record accountID:(id)d;
- (void)setReminder:(id)reminder;
- (void)willSave;
@end

@implementation REMCDAlarm

+ (id)ckRecordType
{
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

- (BOOL)isConnectedToAccountObject:(id)object
{
  objectCopy = object;
  reminder = [(REMCDAlarm *)self reminder];
  v6 = [reminder isConnectedToAccountObject:objectCopy];

  return v6;
}

- (id)modelObject
{
  trigger = [(REMCDAlarm *)self trigger];
  modelObject = [trigger modelObject];

  identifier = [(REMCDAlarm *)self identifier];
  v6 = [REMAlarm alloc];
  v7 = [REMAlarm objectIDWithUUID:identifier];
  v8 = [v6 initWithTrigger:modelObject objectID:v7];

  return v8;
}

- (int64_t)parentEffectiveMinimumSupportedVersion
{
  reminder = [(REMCDAlarm *)self reminder];
  if (reminder)
  {
    reminder2 = [(REMCDAlarm *)self reminder];
    effectiveMinimumSupportedVersion = [reminder2 effectiveMinimumSupportedVersion];
  }

  else
  {
    effectiveMinimumSupportedVersion = kREMSupportedVersionUnset;
  }

  return effectiveMinimumSupportedVersion;
}

- (BOOL)isSnooze
{
  originalAlarmUID = [(REMCDAlarm *)self originalAlarmUID];
  v3 = originalAlarmUID != 0;

  return v3;
}

- (void)setReminder:(id)reminder
{
  reminderCopy = reminder;
  [(REMCDObject *)self willChangeValueForKey:@"reminder"];
  [(REMCDAlarm *)self setPrimitiveValue:reminderCopy forKey:@"reminder"];

  reminder = [(REMCDAlarm *)self reminder];
  [reminder updateDisplayDateWithAlarm:self];

  [(REMCDObject *)self didChangeValueForKey:@"reminder"];
}

- (void)willSave
{
  if (![(REMCDAlarm *)self didHandleMarkingExtraneousAlarmDuringWillSave])
  {
    [(REMCDAlarm *)self setDidHandleMarkingExtraneousAlarmDuringWillSave:1];
    if ([(REMCDAlarm *)self markedForDeletion])
    {
      reminder = [(REMCDAlarm *)self reminder];
      if (reminder)
      {
      }

      else
      {
        trigger = [(REMCDAlarm *)self trigger];
        if (trigger)
        {
          v5 = trigger;
          trigger2 = [(REMCDAlarm *)self trigger];
          if ([trigger2 markedForDeletion])
          {
            trigger3 = [(REMCDAlarm *)self trigger];
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

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  swift_getObjCClassMetadata();
  dCopy = d;
  contextCopy = context;
  v12 = static REMCDAlarm.existingCloudObject(for:accountID:managedObjectContext:)(dCopy, v7, v9, contextCopy);

  return v12;
}

+ (id)newCloudObjectForRecord:(id)record account:(id)account context:(id)context
{
  swift_getObjCClassMetadata();
  recordCopy = record;
  accountCopy = account;
  contextCopy = context;
  v11 = static REMCDAlarm.newCloudObject(for:account:managedObjectContext:)(recordCopy, accountCopy, contextCopy);

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
  REMCDAlarm.mergeData(from:accountID:)(recordCopy, v11);
}

- (id)newlyCreatedRecord
{
  selfCopy = self;
  v3 = REMCDAlarm.newlyCreatedRecord()();

  return v3;
}

- (id)parentCloudObject
{
  reminder = [(REMCDAlarm *)self reminder];

  return reminder;
}

- (id)existingLocalObjectToMergeWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  v6 = _sSo10REMCDAlarmC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0();

  return v6;
}

- (BOOL)mergeWithLocalObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  LOBYTE(self) = _sSo10REMCDAlarmC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0();

  return self & 1;
}

- (void)cleanUpAfterLocalObjectMerge
{
  selfCopy = self;
  REMCDAlarm.cleanUpAfterLocalObjectMerge()();
}

- (id)objectsToBeDeletedBeforeThisObject
{
  selfCopy = self;
  trigger = [(REMCDAlarm *)selfCopy trigger];
  if (trigger)
  {
    v4 = trigger;
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
  selfCopy = self;
  REMCDAlarm.fixBrokenReferences()();
}

@end