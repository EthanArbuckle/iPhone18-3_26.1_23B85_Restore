@interface APAggregatedTimeSpentEventRequester
- (APAggregatedTimeSpentEventRequester)initWithBundleID:(id)d aggregatedTimeSpentEntries:(id)entries databaseManager:(id)manager;
- (id)headers;
- (id)logMetadata;
- (id)protoBuffer;
- (void)responseReceived:(id)received responseProtobuf:(id)protobuf error:(id)error;
@end

@implementation APAggregatedTimeSpentEventRequester

- (APAggregatedTimeSpentEventRequester)initWithBundleID:(id)d aggregatedTimeSpentEntries:(id)entries databaseManager:(id)manager
{
  dCopy = d;
  entriesCopy = entries;
  managerCopy = manager;
  if (!dCopy)
  {
    dCopy = @"com.apple.ap.promotedcontentd";
  }

  v9 = +[NSUUID UUID];
  v10 = +[NSUUID UUID];
  uUIDString = [v10 UUIDString];
  v12 = +[NSUUID UUID];
  uUIDString2 = [v12 UUIDString];
  v14 = +[APIDAccountProvider privateUserAccount];
  v20.receiver = self;
  v20.super_class = APAggregatedTimeSpentEventRequester;
  v15 = [(APServerRequester *)&v20 initWithBundleID:dCopy requestIdentifier:v9 contextIdentifier:uUIDString contentIdentifier:uUIDString2 idAccount:v14];

  if (v15)
  {
    objc_storeStrong((v15 + 148), entries);
    objc_storeStrong((v15 + 156), manager);
    +[APTimestampUtilities midnightUTCOfCurrentDay];
    [APTimestampUtilities roundedTimestampFromInterval:?];
    [v15 setRoundedTimestampForAggregatedTimespent:?];
  }

  return v15;
}

- (id)headers
{
  v9.receiver = self;
  v9.super_class = APAggregatedTimeSpentEventRequester;
  headers = [(APServerRequester *)&v9 headers];
  v4 = [headers mutableCopy];

  [(APAggregatedTimeSpentEventRequester *)self roundedTimestampForAggregatedTimespent];
  v6 = [NSString stringWithFormat:@"%.6f", v5];
  [v4 setValue:v6 forKey:@"timestamp"];

  v7 = [v4 copy];

  return v7;
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBLogSysEventRequest);
  logMetadata = [(APAggregatedTimeSpentEventRequester *)self logMetadata];
  [(APPBLogSysEventRequest *)v3 setMetaData:logMetadata];

  [(APPBLogSysEventRequest *)v3 setEventType:910];

  return v3;
}

- (id)logMetadata
{
  v3 = *(&self->super._eventType + 1);
  if (!v3)
  {
    v4 = objc_alloc_init(APPBLogMetaData);
    v5 = *(&self->super._eventType + 1);
    *(&self->super._eventType + 1) = v4;

    [(APAggregatedTimeSpentEventRequester *)self roundedTimestampForAggregatedTimespent];
    [*(&self->super._eventType + 1) setTimeStamp:?];
    timeSpentEntries = [(APAggregatedTimeSpentEventRequester *)self timeSpentEntries];
    v7 = [_TtC15LegacyInterface28AggregatedTimeSpentUtilities retrieveComponentMetaDataFromEntries:timeSpentEntries];

    v8 = [v7 mutableCopy];
    [*(&self->super._eventType + 1) setComponentElements:v8];

    v9 = objc_alloc_init(APEncryptedID);
    v10 = +[NSUUID UUID];
    uUIDString = [v10 UUIDString];
    v12 = [(APEncryptedID *)v9 encryptStringForAdServing:uUIDString name:@"messageIdentifier"];
    [*(&self->super._eventType + 1) setMessageIdentifier:v12];

    v3 = *(&self->super._eventType + 1);
  }

  return v3;
}

- (void)responseReceived:(id)received responseProtobuf:(id)protobuf error:(id)error
{
  v14.receiver = self;
  v14.super_class = APAggregatedTimeSpentEventRequester;
  [(APLegacyMetricRequester *)&v14 responseReceived:received responseProtobuf:protobuf error:error];
  v6 = [_TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase alloc];
  databaseManager = [(APAggregatedTimeSpentEventRequester *)self databaseManager];
  v8 = [(AggregatedTimeSpentStoreDatabase *)v6 initWithDatabase:databaseManager];

  timeSpentEntries = [(APAggregatedTimeSpentEventRequester *)self timeSpentEntries];
  v10 = [(AggregatedTimeSpentStoreDatabase *)v8 removeEntries:timeSpentEntries];

  if ((v10 & 1) == 0)
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      timeSpentEntries2 = [(APAggregatedTimeSpentEventRequester *)self timeSpentEntries];
      v13 = [timeSpentEntries2 debugDescription];
      *buf = 138543362;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[APAggregatedTimeSpentEventRequester] Failed to remove entries %{public}@", buf, 0xCu);
    }
  }
}

@end