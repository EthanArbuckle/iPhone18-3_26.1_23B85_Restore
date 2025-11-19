@interface REMCDAlarmDateTrigger
- (double)generateNonce;
- (id)modelObject;
- (void)didSave;
- (void)willSave;
@end

@implementation REMCDAlarmDateTrigger

- (id)modelObject
{
  v3 = [(REMCDAlarmDateTrigger *)self account];
  v4 = [v3 remObjectID];

  v5 = [(REMCDAlarmDateTrigger *)self alarm];
  v6 = [v5 remObjectID];

  if (v4 && v6)
  {
    v7 = [_TtC7remindd34REMAlarmDateTriggerCDIngestor_ObjC storageFrom:self accountID:v4 alarmID:v6];
  }

  else
  {
    v8 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100767760(v4, v6, v8);
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
      v3 = [(REMCDAlarmDateTrigger *)self alarm];
      if (!v3)
      {
        goto LABEL_5;
      }

      v4 = v3;
      v5 = [(REMCDAlarmDateTrigger *)self alarm];
      v6 = [v5 reminder];

      if (!v6)
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
  v2 = self;
  v3 = REMCDAlarmDateTrigger.generateNonce()();

  return v3;
}

@end