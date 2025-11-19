@interface ObservabilitySignalMonitor
- (void)batchClosedWithBatchLifetime:(double)a3 eventsCount:(int64_t)a4;
- (void)batchDequeuedWithWaitingTime:(double)a3 queueLength:(int64_t)a4 batchID:(id)a5;
- (void)batchExpiredWithBatchID:(id)a3;
- (void)eventCreatedWithCreationDate:(id)a3;
- (void)eventSavedWithCreatedToSavedTimeInterval:(double)a3;
- (void)uploadFailureWithType:(int64_t)a3 code:(int64_t)a4 batchIDs:(id)a5;
- (void)uploadSuccess;
@end

@implementation ObservabilitySignalMonitor

- (void)eventSavedWithCreatedToSavedTimeInterval:(double)a3
{
  v4 = type metadata accessor for ObservabilitySignal();
  __chkstk_darwin(v4);
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a3;
  swift_storeEnumTagMultiPayload();

  sub_100007F58(v6);

  sub_10000E4F0(v6, type metadata accessor for ObservabilitySignal);
}

- (void)batchClosedWithBatchLifetime:(double)a3 eventsCount:(int64_t)a4
{
  v6 = type metadata accessor for ObservabilitySignal();
  __chkstk_darwin(v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = a3;
  *(v8 + 1) = a4;
  swift_storeEnumTagMultiPayload();

  sub_100007F58(v8);

  sub_10000E4F0(v8, type metadata accessor for ObservabilitySignal);
}

- (void)batchDequeuedWithWaitingTime:(double)a3 queueLength:(int64_t)a4 batchID:(id)a5
{
  v7 = sub_100398F58();
  v9 = v8;

  sub_100344B60(a4, v7, v9, a3);
}

- (void)batchExpiredWithBatchID:(id)a3
{
  v3 = sub_100398F58();
  v5 = v4;

  sub_100344EE4(v3, v5);
}

- (void)eventCreatedWithCreationDate:(id)a3
{
  v3 = type metadata accessor for ObservabilitySignal();
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100397748();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100397708();
  (*(v7 + 16))(v5, v9, v6);
  swift_storeEnumTagMultiPayload();

  sub_100007F58(v5);

  sub_10000E4F0(v5, type metadata accessor for ObservabilitySignal);
  (*(v7 + 8))(v9, v6);
}

- (void)uploadFailureWithType:(int64_t)a3 code:(int64_t)a4 batchIDs:(id)a5
{
  v7 = sub_100399198();

  sub_1003453A4(a3, a4, v7);
}

- (void)uploadSuccess
{
  v2 = type metadata accessor for ObservabilitySignal();
  __chkstk_darwin(v2);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();

  sub_100007F58(v4);

  sub_10000E4F0(v4, type metadata accessor for ObservabilitySignal);
}

@end