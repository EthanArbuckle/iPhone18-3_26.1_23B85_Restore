@interface KTBackgroundSystemValidationOperation
+ (id)lastDutyCycle:(id)cycle;
+ (id)lastDutyCycleSuccess:(id)success;
+ (id)sysdiagnoseInfo:(id)info;
+ (void)addErrorToBackgroundOp:(id)op smDataStore:(id)store failureDataString:(id)string type:(id)type serverHint:(id)hint failure:(id)failure;
+ (void)saveErrorToDB:(id)b smDataStore:(id)store;
- (KTBackgroundSystemValidationOperation)initWithDependencies:(id)dependencies;
- (id)opUUIDData;
- (void)groupStart;
- (void)recordBackgroundActivity;
- (void)saveErrorToDB;
@end

@implementation KTBackgroundSystemValidationOperation

- (KTBackgroundSystemValidationOperation)initWithDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  v10.receiver = self;
  v10.super_class = KTBackgroundSystemValidationOperation;
  v5 = [(KTGroupOperation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(KTBackgroundSystemValidationOperation *)v5 setDeps:dependenciesCopy];
    v7 = +[NSUUID UUID];
    [(KTBackgroundSystemValidationOperation *)v6 setOpUUID:v7];

    v8 = v6;
  }

  return v6;
}

- (id)opUUIDData
{
  opUUID = [(KTBackgroundSystemValidationOperation *)self opUUID];

  if (opUUID)
  {
    v7[0] = 0;
    v7[1] = 0;
    opUUID2 = [(KTBackgroundSystemValidationOperation *)self opUUID];
    [opUUID2 getUUIDBytes:v7];

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
  deps = [(KTBackgroundSystemValidationOperation *)self deps];
  smDataStore = [deps smDataStore];
  v5 = [smDataStore getSettingsDate:off_100381AD0];

  deps2 = [(KTBackgroundSystemValidationOperation *)self deps];
  smDataStore2 = [deps2 smDataStore];
  v8 = [smDataStore2 getSettingsNumber:off_100381AD8];

  v9 = NSNotification_ptr;
  if (!(v5 | v8))
  {
    deps3 = [(KTBackgroundSystemValidationOperation *)self deps];
    smDataStore3 = [deps3 smDataStore];
    v14 = off_100381AE0;
    v13SmDataStore = +[NSDate now];
    [smDataStore3 setSettingsDate:v14 date:v13SmDataStore];
LABEL_6:

    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  if ([v8 unsignedIntegerValue] == 1)
  {
    deps4 = [(KTBackgroundSystemValidationOperation *)self deps];
    smDataStore4 = [deps4 smDataStore];
    [smDataStore4 setSettingsDate:off_100381AE0 date:v5];

    deps3 = [(KTBackgroundSystemValidationOperation *)self deps];
    smDataStore3 = [deps3 smDataStore];
    [smDataStore3 setSettingsNumber:off_100381AF0 number:&off_10033CE70];
LABEL_7:

    goto LABEL_8;
  }

  if (![v8 unsignedIntegerValue])
  {
    deps5 = [(KTBackgroundSystemValidationOperation *)self deps];
    smDataStore5 = [deps5 smDataStore];
    deps3 = [smDataStore5 getSettingsNumber:off_100381AF0];

    unsignedIntegerValue = [deps3 unsignedIntegerValue];
    smDataStore3 = [(KTBackgroundSystemValidationOperation *)self deps];
    v13SmDataStore = [smDataStore3 smDataStore];
    v34 = off_100381AF0;
    v35 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
    v36 = v34;
    v9 = NSNotification_ptr;
    [v13SmDataStore setSettingsNumber:v36 number:v35];

    goto LABEL_6;
  }

LABEL_8:
  v16 = TransparencyFileSupport;
  if (_os_feature_enabled_impl())
  {
    deps6 = [(KTBackgroundSystemValidationOperation *)self deps];
    smDataStore6 = [deps6 smDataStore];
    v19 = [smDataStore6 getSettingsDate:off_100381AE0];

    deps7 = [(KTBackgroundSystemValidationOperation *)self deps];
    smDataStore7 = [deps7 smDataStore];
    v22 = [smDataStore7 getSettingsNumber:off_100381AF0];

    v23 = v9[101];
    +[TransparencySettings backgroundFollowupDelayPeriod];
    v25 = [v23 dateWithTimeIntervalSinceNow:-v24];
    if ([v19 compare:v25] == -1)
    {
      unsignedIntegerValue2 = [v22 unsignedIntegerValue];
      v27 = +[TransparencySettings backgroundFollowupFailureCount];

      if (unsignedIntegerValue2 < v27)
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

      deps8 = [(KTBackgroundSystemValidationOperation *)self deps];
      smDataStore8 = [deps8 smDataStore];
      v25 = [smDataStore8 getSettingsData:off_100381AE8];

      if (v25)
      {
        v56 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v25, "bytes")}];
      }

      else
      {
        v56 = 0;
      }

      deps9 = [(KTBackgroundSystemValidationOperation *)self deps];
      cloudRecords = [deps9 cloudRecords];

      if (cloudRecords)
      {
        v39 = kKTApplicationIdentifierIDS;
        v55 = [cloudRecords getAggregateOptInStateForApplication:kKTApplicationIdentifierIDS];
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

        deps10 = [(KTBackgroundSystemValidationOperation *)self deps];
        followup = [deps10 followup];
        v57 = 0;
        [followup postFollowup:v39 type:1 eventId:v56 errorCode:-388 optInState:v55 infoLink:0 additionalInfo:0 error:&v57];
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
  deps11 = [(KTBackgroundSystemValidationOperation *)self deps];
  smDataStore9 = [deps11 smDataStore];
  [smDataStore9 setSettingsNumber:off_100381AD8 number:&off_10033CE88];

  deps12 = [(KTBackgroundSystemValidationOperation *)self deps];
  smDataStore10 = [deps12 smDataStore];
  info = v16[69].info;
  opUUIDData = [(KTBackgroundSystemValidationOperation *)self opUUIDData];
  [smDataStore10 setSettingsData:info data:opUUIDData];

  deps13 = [(KTBackgroundSystemValidationOperation *)self deps];
  smDataStore11 = [deps13 smDataStore];
  v53 = off_100381AD0;
  v54 = [v9[101] now];
  [smDataStore11 setSettingsDate:v53 date:v54];
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
    opUUID = [(KTBackgroundSystemValidationOperation *)self opUUID];
    *buf = 138543362;
    v61 = opUUID;
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

  finishedOp = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  v9 = [KTVerifyPendingSignaturesOperation alloc];
  deps = [(KTBackgroundSystemValidationOperation *)self deps];
  opUUID2 = [(KTBackgroundSystemValidationOperation *)self opUUID];
  v12 = [(KTVerifyPendingSignaturesOperation *)v9 initWithDependencies:deps opId:opUUID2];

  v13 = [KTVerifyMapHeadMMDOperation alloc];
  deps2 = [(KTBackgroundSystemValidationOperation *)self deps];
  opUUID3 = [(KTBackgroundSystemValidationOperation *)self opUUID];
  v16 = [(KTVerifyMapHeadMMDOperation *)v13 initWithDependencies:deps2 opId:opUUID3];

  finishedOp2 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [finishedOp2 addSuccessDependency:v12];

  finishedOp3 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [finishedOp3 addSuccessDependency:v16];

  operationQueue = [(KTGroupOperation *)self operationQueue];
  [operationQueue addOperation:v12];

  operationQueue2 = [(KTGroupOperation *)self operationQueue];
  [operationQueue2 addOperation:v16];

  v21 = [KTValidatePendingURIsOperation alloc];
  opUUID4 = [(KTBackgroundSystemValidationOperation *)self opUUID];
  deps3 = [(KTBackgroundSystemValidationOperation *)self deps];
  v24 = kKTApplicationIdentifierIDS;
  v25 = [(KTValidatePendingURIsOperation *)v21 initWithApplication:kKTApplicationIdentifierIDS opId:opUUID4 dependencies:deps3];

  v26 = [KTValidatePendingRequestsOperation alloc];
  deps4 = [(KTBackgroundSystemValidationOperation *)self deps];
  opUUID5 = [(KTBackgroundSystemValidationOperation *)self opUUID];
  v29 = [(KTValidatePendingRequestsOperation *)v26 initWithApplication:v24 dependencies:deps4 opId:opUUID5];

  [(KTValidatePendingURIsOperation *)v25 addNullableDependency:v12];
  [(KTValidatePendingRequestsOperation *)v29 addNullableDependency:v12];
  [(KTValidatePendingURIsOperation *)v25 addNullableDependency:v16];
  [(KTValidatePendingRequestsOperation *)v29 addNullableDependency:v16];
  finishedOp4 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [finishedOp4 addSuccessDependency:v25];

  finishedOp5 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [finishedOp5 addSuccessDependency:v29];

  operationQueue3 = [(KTGroupOperation *)self operationQueue];
  [operationQueue3 addOperation:v25];

  operationQueue4 = [(KTGroupOperation *)self operationQueue];
  [operationQueue4 addOperation:v29];

  v34 = [KTVerifyConsistencyOperation alloc];
  deps5 = [(KTBackgroundSystemValidationOperation *)self deps];
  opUUID6 = [(KTBackgroundSystemValidationOperation *)self opUUID];
  v37 = [(KTVerifyConsistencyOperation *)v34 initWithDependencies:deps5 opId:opUUID6];

  v38 = [KTVerifyRevisionInclusionOperation alloc];
  deps6 = [(KTBackgroundSystemValidationOperation *)self deps];
  opUUID7 = [(KTBackgroundSystemValidationOperation *)self opUUID];
  v41 = [(KTVerifyRevisionInclusionOperation *)v38 initWithDependencies:deps6 opId:opUUID7];

  [(KTVerifyConsistencyOperation *)v37 addNullableDependency:v25];
  [(KTVerifyConsistencyOperation *)v37 addNullableDependency:v29];
  [(KTVerifyRevisionInclusionOperation *)v41 addNullableDependency:v25];
  [(KTVerifyRevisionInclusionOperation *)v41 addNullableDependency:v29];
  finishedOp6 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [finishedOp6 addSuccessDependency:v37];

  finishedOp7 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [finishedOp7 addSuccessDependency:v41];

  operationQueue5 = [(KTGroupOperation *)self operationQueue];
  [operationQueue5 addOperation:v37];

  operationQueue6 = [(KTGroupOperation *)self operationQueue];
  [operationQueue6 addOperation:v41];

  v46 = [KTGarbageCollectDBOperation alloc];
  deps7 = [(KTBackgroundSystemValidationOperation *)self deps];
  v48 = [(KTGarbageCollectDBOperation *)v46 initWithDependencies:deps7];

  v49 = [KTReportDBMetricsOperation alloc];
  deps8 = [(KTBackgroundSystemValidationOperation *)self deps];
  v51 = [(KTReportDBMetricsOperation *)v49 initWithDependencies:deps8];

  [(KTGarbageCollectDBOperation *)v48 addNullableDependency:v37];
  [(KTGarbageCollectDBOperation *)v48 addNullableDependency:v41];
  [(KTReportDBMetricsOperation *)v51 addNullableDependency:v48];
  finishedOp8 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [finishedOp8 addNullableDependency:v48];

  finishedOp9 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [finishedOp9 addNullableDependency:v51];

  operationQueue7 = [(KTGroupOperation *)self operationQueue];
  [operationQueue7 addOperation:v48];

  operationQueue8 = [(KTGroupOperation *)self operationQueue];
  [operationQueue8 addOperation:v51];

  operationQueue9 = [(KTGroupOperation *)self operationQueue];
  finishedOp10 = [(KTBackgroundSystemValidationOperation *)self finishedOp];
  [operationQueue9 addOperation:finishedOp10];

  objc_destroyWeak(&v59);
  objc_destroyWeak(buf);
}

+ (id)lastDutyCycle:(id)cycle
{
  smDataStore = [cycle smDataStore];
  v4 = [smDataStore getSettingsDate:off_100381AD0];

  return v4;
}

+ (id)lastDutyCycleSuccess:(id)success
{
  smDataStore = [success smDataStore];
  v4 = [smDataStore getSettingsDate:off_100381AE0];

  return v4;
}

+ (id)sysdiagnoseInfo:(id)info
{
  infoCopy = info;
  smDataStore = [infoCopy smDataStore];
  v5 = [smDataStore getSettingsDate:off_100381AD0];

  smDataStore2 = [infoCopy smDataStore];
  v36 = [smDataStore2 getSettingsDate:off_100381AE0];

  smDataStore3 = [infoCopy smDataStore];
  v35 = [smDataStore3 getSettingsNumber:off_100381AD8];

  smDataStore4 = [infoCopy smDataStore];
  v34 = [smDataStore4 getSettingsNumber:off_100381AF0];

  smDataStore5 = [infoCopy smDataStore];
  v10 = [smDataStore5 getSettingsData:off_100381AE8];

  smDataStore6 = [infoCopy smDataStore];
  v12 = [smDataStore6 getSettingsData:off_100381B10];

  smDataStore7 = [infoCopy smDataStore];
  v14 = [smDataStore7 getSettingsData:off_100381B08];

  smDataStore8 = [infoCopy smDataStore];
  v16 = [smDataStore8 getSettingsData:off_100381B00];

  v32 = v10;
  if (v10)
  {
    v33 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v10, "bytes")}];
  }

  else
  {
    v33 = 0;
  }

  smDataStore9 = [infoCopy smDataStore];
  v18 = [smDataStore9 getSettingsData:off_100381AF8];

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
  kt_toISO_8601_UTCString = [v5 kt_toISO_8601_UTCString];
  [v23 setObject:kt_toISO_8601_UTCString forKeyedSubscript:@"lastDutyCycle"];

  kt_toISO_8601_UTCString2 = [v36 kt_toISO_8601_UTCString];
  [v23 setObject:kt_toISO_8601_UTCString2 forKeyedSubscript:@"lastSuccess"];

  [v23 setObject:v35 forKeyedSubscript:@"lastResult"];
  [v23 setObject:v34 forKeyedSubscript:@"numSuccessiveFails"];
  uUIDString = [v33 UUIDString];
  [v23 setObject:uUIDString forKeyedSubscript:@"lastUUID"];

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

+ (void)saveErrorToDB:(id)b smDataStore:(id)store
{
  storeCopy = store;
  if (b)
  {
    v9 = storeCopy;
    bCopy = b;
    v7 = objc_alloc_init(KTNSErrorValueTransformer);
    v8 = [v7 reverseTransformedValue:bCopy];

    if (v8)
    {
      [v9 setSettingsData:off_100381AF8 data:v8];
    }

    storeCopy = v9;
  }
}

- (void)saveErrorToDB
{
  error = [(KTResultOperation *)self error];
  deps = [(KTBackgroundSystemValidationOperation *)self deps];
  smDataStore = [deps smDataStore];
  [KTBackgroundSystemValidationOperation saveErrorToDB:error smDataStore:smDataStore];
}

+ (void)addErrorToBackgroundOp:(id)op smDataStore:(id)store failureDataString:(id)string type:(id)type serverHint:(id)hint failure:(id)failure
{
  opCopy = op;
  storeCopy = store;
  stringCopy = string;
  typeCopy = type;
  hintCopy = hint;
  failureCopy = failure;
  if (opCopy)
  {
    v19 = [storeCopy getSettingsData:off_100381AE8];
    if (v19)
    {
      v20 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v19, "bytes")}];
      if ([opCopy isEqual:v20])
      {
        [storeCopy setSettingsNumber:off_100381AD8 number:&off_10033CEA0];
        [KTBackgroundSystemValidationOperation saveErrorToDB:failureCopy smDataStore:storeCopy];
        v21 = off_100381B00;
        v22 = [stringCopy dataUsingEncoding:4];
        [storeCopy setSettingsData:v21 data:v22];

        v23 = off_100381B08;
        v24 = [typeCopy dataUsingEncoding:4];
        [storeCopy setSettingsData:v23 data:v24];

        v25 = off_100381B10;
        v26 = [hintCopy dataUsingEncoding:4];
        [storeCopy setSettingsData:v25 data:v26];

        if (qword_10038BC70 != -1)
        {
          sub_100248174();
        }

        v27 = qword_10038BC78;
        if (os_log_type_enabled(qword_10038BC78, OS_LOG_TYPE_ERROR))
        {
          v29 = 138543362;
          v30 = opCopy;
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
        v30 = opCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "No saved background op UUID, but serverRPC has %{public}@", &v29, 0xCu);
      }
    }
  }
}

@end