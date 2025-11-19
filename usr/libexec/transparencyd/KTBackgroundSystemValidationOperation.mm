@interface KTBackgroundSystemValidationOperation
+ (id)lastDutyCycle:(id)a3;
+ (id)lastDutyCycleSuccess:(id)a3;
+ (id)sysdiagnoseInfo:(id)a3;
+ (void)addErrorToBackgroundOp:(id)a3 smDataStore:(id)a4 failureDataString:(id)a5 type:(id)a6 serverHint:(id)a7 failure:(id)a8;
+ (void)saveErrorToDB:(id)a3 smDataStore:(id)a4;
- (KTBackgroundSystemValidationOperation)initWithDependencies:(id)a3;
- (id)opUUIDData;
- (void)groupStart;
- (void)recordBackgroundActivity;
- (void)saveErrorToDB;
@end

@implementation KTBackgroundSystemValidationOperation

- (KTBackgroundSystemValidationOperation)initWithDependencies:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = KTBackgroundSystemValidationOperation;
  v5 = [(KTGroupOperation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(KTBackgroundSystemValidationOperation *)v5 setDeps:v4];
    v7 = +[NSUUID UUID];
    [(KTBackgroundSystemValidationOperation *)v6 setOpUUID:v7];

    v8 = v6;
  }

  return v6;
}

- (id)opUUIDData
{
  v3 = [(KTBackgroundSystemValidationOperation *)self opUUID];

  if (v3)
  {
    v7[0] = 0;
    v7[1] = 0;
    v4 = [(KTBackgroundSystemValidationOperation *)self opUUID];
    [v4 getUUIDBytes:v7];

    v5 = [NSData dataWithBytes:v7 length:16];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)recordBackgroundActivity
{
  v3 = [(KTBackgroundSystemValidationOperation *)self deps];
  v4 = [v3 smDataStore];
  v5 = [v4 getSettingsDate:off_100381AD0];

  v6 = [(KTBackgroundSystemValidationOperation *)self deps];
  v7 = [v6 smDataStore];
  v8 = [v7 getSettingsNumber:off_100381AD8];

  v9 = NSNotification_ptr;
  if (!(v5 | v8))
  {
    v12 = [(KTBackgroundSystemValidationOperation *)self deps];
    v13 = [v12 smDataStore];
    v14 = off_100381AE0;
    v15 = +[NSDate now];
    [v13 setSettingsDate:v14 date:v15];
LABEL_6:

    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  if ([v8 unsignedIntegerValue] == 1)
  {
    v10 = [(KTBackgroundSystemValidationOperation *)self deps];
    v11 = [v10 smDataStore];
    [v11 setSettingsDate:off_100381AE0 date:v5];

    v12 = [(KTBackgroundSystemValidationOperation *)self deps];
    v13 = [v12 smDataStore];
    [v13 setSettingsNumber:off_100381AF0 number:&off_10033CE70];
LABEL_7:

    goto LABEL_8;
  }

  if (![v8 unsignedIntegerValue])
  {
    v31 = [(KTBackgroundSystemValidationOperation *)self deps];
    v32 = [v31 smDataStore];
    v12 = [v32 getSettingsNumber:off_100381AF0];

    v33 = [v12 unsignedIntegerValue];
    v13 = [(KTBackgroundSystemValidationOperation *)self deps];
    v15 = [v13 smDataStore];
    v34 = off_100381AF0;
    v35 = [NSNumber numberWithUnsignedInteger:v33 + 1];
    v36 = v34;
    v9 = NSNotification_ptr;
    [v15 setSettingsNumber:v36 number:v35];

    goto LABEL_6;
  }

LABEL_8:
  v16 = TransparencyFileSupport;
  if (_os_feature_enabled_impl())
  {
    v17 = [(KTBackgroundSystemValidationOperation *)self deps];
    v18 = [v17 smDataStore];
    v19 = [v18 getSettingsDate:off_100381AE0];

    v20 = [(KTBackgroundSystemValidationOperation *)self deps];
    v21 = [v20 smDataStore];
    v22 = [v21 getSettingsNumber:off_100381AF0];

    v23 = v9[101];
    +[TransparencySettings backgroundFollowupDelayPeriod];
    v25 = [v23 dateWithTimeIntervalSinceNow:-v24];
    if ([v19 compare:v25] == -1)
    {
      v26 = [v22 unsignedIntegerValue];
      v27 = +[TransparencySettings backgroundFollowupFailureCount];

      if (v26 < v27)
      {
LABEL_34:

        v9 = NSNotification_ptr;
        v16 = TransparencyFileSupport;
        goto LABEL_35;
      }

      if (qword_10038BC70 != -1)
      {
        sub_1002480FC();
      }

      v28 = qword_10038BC78;
      if (os_log_type_enabled(qword_10038BC78, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v59 = v22;
        v60 = 2112;
        v61 = v19;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "BackgroundSystemValidation: posting followup for %@ consistent background validation failures since %@", buf, 0x16u);
      }

      v29 = [(KTBackgroundSystemValidationOperation *)self deps];
      v30 = [v29 smDataStore];
      v25 = [v30 getSettingsData:off_100381AE8];

      if (v25)
      {
        v56 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v25, "bytes")}];
      }

      else
      {
        v56 = 0;
      }

      v37 = [(KTBackgroundSystemValidationOperation *)self deps];
      v38 = [v37 cloudRecords];

      if (v38)
      {
        v39 = kKTApplicationIdentifierIDS;
        v55 = [v38 getAggregateOptInStateForApplication:kKTApplicationIdentifierIDS];
        if (!v55)
        {
          if (qword_10038BC70 != -1)
          {
            sub_100248110();
          }

          v40 = qword_10038BC78;
          if (os_log_type_enabled(qword_10038BC78, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "BackgroundSystemValidation: failed getting optin state for followup: %@", buf, 0xCu);
          }
        }

        v41 = [(KTBackgroundSystemValidationOperation *)self deps];
        v42 = [v41 followup];
        v57 = 0;
        [v42 postFollowup:v39 type:1 eventId:v56 errorCode:-388 optInState:v55 infoLink:0 additionalInfo:0 error:&v57];
        v43 = v57;

        if (v43)
        {
          if (qword_10038BC70 != -1)
          {
            sub_100248138();
          }

          v44 = qword_10038BC78;
          if (os_log_type_enabled(qword_10038BC78, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = v43;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "BackgroundSystemValidation: failed to post followup: %@", buf, 0xCu);
          }
        }
      }
    }

    goto LABEL_34;
  }

LABEL_35:
  v45 = [(KTBackgroundSystemValidationOperation *)self deps];
  v46 = [v45 smDataStore];
  [v46 setSettingsNumber:off_100381AD8 number:&off_10033CE88];

  v47 = [(KTBackgroundSystemValidationOperation *)self deps];
  v48 = [v47 smDataStore];
  info = v16[69].info;
  v50 = [(KTBackgroundSystemValidationOperation *)self opUUIDData];
  [v48 setSettingsData:info data:v50];

  v51 = [(KTBackgroundSystemValidationOperation *)self deps];
  v52 = [v51 smDataStore];
  v53 = off_100381AD0;
  v54 = [v9[101] now];
  [v52 setSettingsDate:v53 date:v54];
}

- (void)groupStart
{
  v3 = os_transaction_create();
  [(KTBackgroundSystemValidationOperation *)self setTransaction:v3];

  if (qword_10038BC70 != -1)
  {
    sub_100248160();
  }

  v4 = qword_10038BC78;
  if (os_log_type_enabled(qword_10038BC78, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    v6 = [(KTBackgroundSystemValidationOperation *)self opUUID];
    *buf = 138543362;
    v61 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "BackgroundSystemValidation: start %{public}@", buf, 0xCu);
  }

  [(KTBackgroundSystemValidationOperation *)self recordBackgroundActivity];
  objc_initWeak(buf, self);
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_10002BACC;
  v58[3] = &unk_100318990;
  objc_copyWeak(&v59, buf);
  v7 = [KTResultOperation named:@"background-finished" withBlockTakingSelf:v58];
  [(KTBackgroundSystemValidationOperation *)self setFinishedOp:v7];

  v8 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:v8];

  v9 = [KTVerifyPendingSignaturesOperation alloc];
  v10 = [(KTBackgroundSystemValidationOperation *)self deps];
  v11 = [(KTBackgroundSystemValidationOperation *)self opUUID];
  v12 = [(KTVerifyPendingSignaturesOperation *)v9 initWithDependencies:v10 opId:v11];

  v13 = [KTVerifyMapHeadMMDOperation alloc];
  v14 = [(KTBackgroundSystemValidationOperation *)self deps];
  v15 = [(KTBackgroundSystemValidationOperation *)self opUUID];
  v16 = [(KTVerifyMapHeadMMDOperation *)v13 initWithDependencies:v14 opId:v15];

  v17 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [v17 addSuccessDependency:v12];

  v18 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [v18 addSuccessDependency:v16];

  v19 = [(KTGroupOperation *)self operationQueue];
  [v19 addOperation:v12];

  v20 = [(KTGroupOperation *)self operationQueue];
  [v20 addOperation:v16];

  v21 = [KTValidatePendingURIsOperation alloc];
  v22 = [(KTBackgroundSystemValidationOperation *)self opUUID];
  v23 = [(KTBackgroundSystemValidationOperation *)self deps];
  v24 = kKTApplicationIdentifierIDS;
  v25 = [(KTValidatePendingURIsOperation *)v21 initWithApplication:kKTApplicationIdentifierIDS opId:v22 dependencies:v23];

  v26 = [KTValidatePendingRequestsOperation alloc];
  v27 = [(KTBackgroundSystemValidationOperation *)self deps];
  v28 = [(KTBackgroundSystemValidationOperation *)self opUUID];
  v29 = [(KTValidatePendingRequestsOperation *)v26 initWithApplication:v24 dependencies:v27 opId:v28];

  [(KTValidatePendingURIsOperation *)v25 addNullableDependency:v12];
  [(KTValidatePendingRequestsOperation *)v29 addNullableDependency:v12];
  [(KTValidatePendingURIsOperation *)v25 addNullableDependency:v16];
  [(KTValidatePendingRequestsOperation *)v29 addNullableDependency:v16];
  v30 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [v30 addSuccessDependency:v25];

  v31 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [v31 addSuccessDependency:v29];

  v32 = [(KTGroupOperation *)self operationQueue];
  [v32 addOperation:v25];

  v33 = [(KTGroupOperation *)self operationQueue];
  [v33 addOperation:v29];

  v34 = [KTVerifyConsistencyOperation alloc];
  v35 = [(KTBackgroundSystemValidationOperation *)self deps];
  v36 = [(KTBackgroundSystemValidationOperation *)self opUUID];
  v37 = [(KTVerifyConsistencyOperation *)v34 initWithDependencies:v35 opId:v36];

  v38 = [KTVerifyRevisionInclusionOperation alloc];
  v39 = [(KTBackgroundSystemValidationOperation *)self deps];
  v40 = [(KTBackgroundSystemValidationOperation *)self opUUID];
  v41 = [(KTVerifyRevisionInclusionOperation *)v38 initWithDependencies:v39 opId:v40];

  [(KTVerifyConsistencyOperation *)v37 addNullableDependency:v25];
  [(KTVerifyConsistencyOperation *)v37 addNullableDependency:v29];
  [(KTVerifyRevisionInclusionOperation *)v41 addNullableDependency:v25];
  [(KTVerifyRevisionInclusionOperation *)v41 addNullableDependency:v29];
  v42 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [v42 addSuccessDependency:v37];

  v43 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [v43 addSuccessDependency:v41];

  v44 = [(KTGroupOperation *)self operationQueue];
  [v44 addOperation:v37];

  v45 = [(KTGroupOperation *)self operationQueue];
  [v45 addOperation:v41];

  v46 = [KTGarbageCollectDBOperation alloc];
  v47 = [(KTBackgroundSystemValidationOperation *)self deps];
  v48 = [(KTGarbageCollectDBOperation *)v46 initWithDependencies:v47];

  v49 = [KTReportDBMetricsOperation alloc];
  v50 = [(KTBackgroundSystemValidationOperation *)self deps];
  v51 = [(KTReportDBMetricsOperation *)v49 initWithDependencies:v50];

  [(KTGarbageCollectDBOperation *)v48 addNullableDependency:v37];
  [(KTGarbageCollectDBOperation *)v48 addNullableDependency:v41];
  [(KTReportDBMetricsOperation *)v51 addNullableDependency:v48];
  v52 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [v52 addNullableDependency:v48];

  v53 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [v53 addNullableDependency:v51];

  v54 = [(KTGroupOperation *)self operationQueue];
  [v54 addOperation:v48];

  v55 = [(KTGroupOperation *)self operationQueue];
  [v55 addOperation:v51];

  v56 = [(KTGroupOperation *)self operationQueue];
  v57 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [v56 addOperation:v57];

  objc_destroyWeak(&v59);
  objc_destroyWeak(buf);
}

+ (id)lastDutyCycle:(id)a3
{
  v3 = [a3 smDataStore];
  v4 = [v3 getSettingsDate:off_100381AD0];

  return v4;
}

+ (id)lastDutyCycleSuccess:(id)a3
{
  v3 = [a3 smDataStore];
  v4 = [v3 getSettingsDate:off_100381AE0];

  return v4;
}

+ (id)sysdiagnoseInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 smDataStore];
  v5 = [v4 getSettingsDate:off_100381AD0];

  v6 = [v3 smDataStore];
  v36 = [v6 getSettingsDate:off_100381AE0];

  v7 = [v3 smDataStore];
  v35 = [v7 getSettingsNumber:off_100381AD8];

  v8 = [v3 smDataStore];
  v34 = [v8 getSettingsNumber:off_100381AF0];

  v9 = [v3 smDataStore];
  v10 = [v9 getSettingsData:off_100381AE8];

  v11 = [v3 smDataStore];
  v12 = [v11 getSettingsData:off_100381B10];

  v13 = [v3 smDataStore];
  v14 = [v13 getSettingsData:off_100381B08];

  v15 = [v3 smDataStore];
  v16 = [v15 getSettingsData:off_100381B00];

  v32 = v10;
  if (v10)
  {
    v33 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v10, "bytes")}];
  }

  else
  {
    v33 = 0;
  }

  v17 = [v3 smDataStore];
  v18 = [v17 getSettingsData:off_100381AF8];

  if (v18)
  {
    v19 = objc_alloc_init(KTNSErrorValueTransformer);
    v20 = [v19 transformedValue:v18];
  }

  else
  {
    v20 = 0;
  }

  if (v12)
  {
    v21 = [[NSString alloc] initWithData:v12 encoding:4];
  }

  else
  {
    v21 = 0;
  }

  v30 = v14;
  if (v14)
  {
    v14 = [[NSString alloc] initWithData:v14 encoding:4];
  }

  v31 = v12;
  if (v16)
  {
    v22 = [[NSString alloc] initWithData:v16 encoding:4];
  }

  else
  {
    v22 = 0;
  }

  v23 = +[NSMutableDictionary dictionary];
  v24 = v5;
  v25 = [v5 kt_toISO_8601_UTCString];
  [v23 setObject:v25 forKeyedSubscript:@"lastDutyCycle"];

  v26 = [v36 kt_toISO_8601_UTCString];
  [v23 setObject:v26 forKeyedSubscript:@"lastSuccess"];

  [v23 setObject:v35 forKeyedSubscript:@"lastResult"];
  [v23 setObject:v34 forKeyedSubscript:@"numSuccessiveFails"];
  v27 = [v33 UUIDString];
  [v23 setObject:v27 forKeyedSubscript:@"lastUUID"];

  if (v20)
  {
    v28 = [TransparencyError diagnosticError:v20 depth:0];
    [v23 setObject:v28 forKeyedSubscript:@"lastError"];
  }

  [v23 setObject:v21 forKeyedSubscript:@"failureServerHints"];
  [v23 setObject:v14 forKeyedSubscript:@"failureType"];
  [v23 setObject:v22 forKeyedSubscript:@"failureData"];

  return v23;
}

+ (void)saveErrorToDB:(id)a3 smDataStore:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v9 = v5;
    v6 = a3;
    v7 = objc_alloc_init(KTNSErrorValueTransformer);
    v8 = [v7 reverseTransformedValue:v6];

    if (v8)
    {
      [v9 setSettingsData:off_100381AF8 data:v8];
    }

    v5 = v9;
  }
}

- (void)saveErrorToDB
{
  v5 = [(KTResultOperation *)self error];
  v3 = [(KTBackgroundSystemValidationOperation *)self deps];
  v4 = [v3 smDataStore];
  [KTBackgroundSystemValidationOperation saveErrorToDB:v5 smDataStore:v4];
}

+ (void)addErrorToBackgroundOp:(id)a3 smDataStore:(id)a4 failureDataString:(id)a5 type:(id)a6 serverHint:(id)a7 failure:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v13)
  {
    v19 = [v14 getSettingsData:off_100381AE8];
    if (v19)
    {
      v20 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v19, "bytes")}];
      if ([v13 isEqual:v20])
      {
        [v14 setSettingsNumber:off_100381AD8 number:&off_10033CEA0];
        [KTBackgroundSystemValidationOperation saveErrorToDB:v18 smDataStore:v14];
        v21 = off_100381B00;
        v22 = [v15 dataUsingEncoding:4];
        [v14 setSettingsData:v21 data:v22];

        v23 = off_100381B08;
        v24 = [v16 dataUsingEncoding:4];
        [v14 setSettingsData:v23 data:v24];

        v25 = off_100381B10;
        v26 = [v17 dataUsingEncoding:4];
        [v14 setSettingsData:v25 data:v26];

        if (qword_10038BC70 != -1)
        {
          sub_100248174();
        }

        v27 = qword_10038BC78;
        if (os_log_type_enabled(qword_10038BC78, OS_LOG_TYPE_ERROR))
        {
          v29 = 138543362;
          v30 = v13;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "BackgroundSystemValidation: failed %{public}@", &v29, 0xCu);
        }
      }
    }

    else
    {
      if (qword_10038BC70 != -1)
      {
        sub_100248188();
      }

      v28 = qword_10038BC78;
      if (os_log_type_enabled(qword_10038BC78, OS_LOG_TYPE_ERROR))
      {
        v29 = 138543362;
        v30 = v13;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "No saved background op UUID, but serverRPC has %{public}@", &v29, 0xCu);
      }
    }
  }
}

@end