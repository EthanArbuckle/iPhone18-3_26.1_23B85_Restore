@interface REMAlarmDateTriggerCDIngestor_ObjC
+ (id)storageFrom:(id)from accountID:(id)d alarmID:(id)iD;
- (_TtC7remindd34REMAlarmDateTriggerCDIngestor_ObjC)init;
@end

@implementation REMAlarmDateTriggerCDIngestor_ObjC

+ (id)storageFrom:(id)from accountID:(id)d alarmID:(id)iD
{
  fromCopy = from;
  dCopy = d;
  iDCopy = iD;
  v10 = sub_1001D3E38(fromCopy, dCopy, iDCopy);

  return v10;
}

- (_TtC7remindd34REMAlarmDateTriggerCDIngestor_ObjC)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for REMAlarmDateTriggerCDIngestor_ObjC();
  return [(REMAlarmDateTriggerCDIngestor_ObjC *)&v3 init];
}

@end