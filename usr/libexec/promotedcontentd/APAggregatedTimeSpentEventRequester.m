@interface APAggregatedTimeSpentEventRequester
- (APAggregatedTimeSpentEventRequester)initWithBundleID:(id)a3 aggregatedTimeSpentEntries:(id)a4 databaseManager:(id)a5;
- (id)headers;
- (id)logMetadata;
- (id)protoBuffer;
- (void)responseReceived:(id)a3 responseProtobuf:(id)a4 error:(id)a5;
@end

@implementation APAggregatedTimeSpentEventRequester

- (APAggregatedTimeSpentEventRequester)initWithBundleID:(id)a3 aggregatedTimeSpentEntries:(id)a4 databaseManager:(id)a5
{
  v8 = a3;
  v19 = a4;
  v17 = a5;
  if (!v8)
  {
    v8 = @"com.apple.ap.promotedcontentd";
  }

  v9 = +[NSUUID UUID];
  v10 = +[NSUUID UUID];
  v11 = [v10 UUIDString];
  v12 = +[NSUUID UUID];
  v13 = [v12 UUIDString];
  v14 = +[APIDAccountProvider privateUserAccount];
  v20.receiver = self;
  v20.super_class = APAggregatedTimeSpentEventRequester;
  v15 = [(APServerRequester *)&v20 initWithBundleID:v8 requestIdentifier:v9 contextIdentifier:v11 contentIdentifier:v13 idAccount:v14];

  if (v15)
  {
    objc_storeStrong((v15 + 148), a4);
    objc_storeStrong((v15 + 156), a5);
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
  v3 = [(APServerRequester *)&v9 headers];
  v4 = [v3 mutableCopy];

  [(APAggregatedTimeSpentEventRequester *)self roundedTimestampForAggregatedTimespent];
  v6 = [NSString stringWithFormat:@"%.6f", v5];
  [v4 setValue:v6 forKey:@"timestamp"];

  v7 = [v4 copy];

  return v7;
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBLogSysEventRequest);
  v4 = [(APAggregatedTimeSpentEventRequester *)self logMetadata];
  [(APPBLogSysEventRequest *)v3 setMetaData:v4];

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
    v6 = [(APAggregatedTimeSpentEventRequester *)self timeSpentEntries];
    v7 = [_TtC15LegacyInterface28AggregatedTimeSpentUtilities retrieveComponentMetaDataFromEntries:v6];

    v8 = [v7 mutableCopy];
    [*(&self->super._eventType + 1) setComponentElements:v8];

    v9 = objc_alloc_init(APEncryptedID);
    v10 = +[NSUUID UUID];
    v11 = [v10 UUIDString];
    v12 = [(APEncryptedID *)v9 encryptStringForAdServing:v11 name:@"messageIdentifier"];
    [*(&self->super._eventType + 1) setMessageIdentifier:v12];

    v3 = *(&self->super._eventType + 1);
  }

  return v3;
}

- (void)responseReceived:(id)a3 responseProtobuf:(id)a4 error:(id)a5
{
  v14.receiver = self;
  v14.super_class = APAggregatedTimeSpentEventRequester;
  [(APLegacyMetricRequester *)&v14 responseReceived:a3 responseProtobuf:a4 error:a5];
  v6 = [_TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase alloc];
  v7 = [(APAggregatedTimeSpentEventRequester *)self databaseManager];
  v8 = [(AggregatedTimeSpentStoreDatabase *)v6 initWithDatabase:v7];

  v9 = [(APAggregatedTimeSpentEventRequester *)self timeSpentEntries];
  v10 = [(AggregatedTimeSpentStoreDatabase *)v8 removeEntries:v9];

  if ((v10 & 1) == 0)
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(APAggregatedTimeSpentEventRequester *)self timeSpentEntries];
      v13 = [v12 debugDescription];
      *buf = 138543362;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[APAggregatedTimeSpentEventRequester] Failed to remove entries %{public}@", buf, 0xCu);
    }
  }
}

@end