@interface REMCDAlarmDateTrigger
- (double)generateNonce;
- (id)modelObject;
- (void)didSave;
- (void)willSave;
@end

@implementation REMCDAlarmDateTrigger

- (id)modelObject
{
  account = [(REMCDAlarmDateTrigger *)self account];
  remObjectID = [account remObjectID];

  alarm = [(REMCDAlarmDateTrigger *)self alarm];
  remObjectID2 = [alarm remObjectID];

  if (remObjectID && remObjectID2)
  {
    v7 = [_TtC7remindd34REMAlarmDateTriggerCDIngestor_ObjC storageFrom:self accountID:remObjectID alarmID:remObjectID2];
  }

  else
  {
    v8 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100767760(remObjectID, remObjectID2, v8);
    }

    v7 = 0;
  }

  return v7;
}

- (void)willSave
{
  if (![(REMCDAlarmDateTrigger *)self didHandleMarkingExtraneousAlarmDuringWillSave])
  {
    [(REMCDAlarmDateTrigger *)self setDidHandleMarkingExtraneousAlarmDuringWillSave:1];
    if ([(REMCDAlarmDateTrigger *)self markedForDeletion])
    {
      alarm = [(REMCDAlarmDateTrigger *)self alarm];
      if (!alarm)
      {
        goto LABEL_5;
      }

      v4 = alarm;
      alarm2 = [(REMCDAlarmDateTrigger *)self alarm];
      reminder = [alarm2 reminder];

      if (!reminder)
      {
LABEL_5:
        [(REMCDAlarmDateTrigger *)self setIsExtraneous:1];
      }
    }
  }

  v7.receiver = self;
  v7.super_class = REMCDAlarmDateTrigger;
  [(REMCDObject *)&v7 willSave];
}

- (void)didSave
{
  v3.receiver = self;
  v3.super_class = REMCDAlarmDateTrigger;
  [(REMCDObject *)&v3 didSave];
  [(REMCDAlarmDateTrigger *)self setDidHandleMarkingExtraneousAlarmDuringWillSave:0];
}

- (double)generateNonce
{
  selfCopy = self;
  v3 = REMCDAlarmDateTrigger.generateNonce()();

  return v3;
}

@end