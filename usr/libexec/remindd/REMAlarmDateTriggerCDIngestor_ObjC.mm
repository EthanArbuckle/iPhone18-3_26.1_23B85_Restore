@interface REMAlarmDateTriggerCDIngestor_ObjC
+ (id)storageFrom:(id)a3 accountID:(id)a4 alarmID:(id)a5;
- (_TtC7remindd34REMAlarmDateTriggerCDIngestor_ObjC)init;
@end

@implementation REMAlarmDateTriggerCDIngestor_ObjC

+ (id)storageFrom:(id)a3 accountID:(id)a4 alarmID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_1001D3E38(v7, v8, v9);

  return v10;
}

- (_TtC7remindd34REMAlarmDateTriggerCDIngestor_ObjC)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for REMAlarmDateTriggerCDIngestor_ObjC();
  return [(REMAlarmDateTriggerCDIngestor_ObjC *)&v3 init];
}

@end