@interface HRCClassifier
+ (void)classifyArbitratedHeartRate:(id)rate publisherBlock:(id)block clientBlock:(id)clientBlock;
+ (void)classifyUnarbitratedHeartRate:(id)rate algorithmsInputBlock:(id)block publisherBlock:(id)publisherBlock clientBlock:(id)clientBlock;
@end

@implementation HRCClassifier

+ (void)classifyUnarbitratedHeartRate:(id)rate algorithmsInputBlock:(id)block publisherBlock:(id)publisherBlock clientBlock:(id)clientBlock
{
  rateCopy = rate;
  blockCopy = block;
  publisherBlockCopy = publisherBlock;
  clientBlockCopy = clientBlock;
  sourceType = [rateCopy sourceType];
  if (sourceType - 1 < 2)
  {
    if (([rateCopy hrContext] != 2 || objc_msgSend(rateCopy, "arbitrationStatus")) && (objc_msgSend(rateCopy, "hrContext") == 2 || !objc_msgSend(rateCopy, "arbitrationStatus")))
    {
      if ([rateCopy hrContext] == 2 && objc_msgSend(rateCopy, "arbitrationStatus") == 1)
      {
        v16 = sub_10000132C();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          uuid = [rateCopy uuid];
          v28 = 138543618;
          v29 = uuid;
          v30 = 1026;
          sourceType2 = [rateCopy sourceType];
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "classifier sending hr to algs :: uuid : %{public}@ , sourceType : %{public}d", &v28, 0x12u);
        }

        v22 = blockCopy;
        goto LABEL_30;
      }

      if ([rateCopy confidenceLevel] == 2 && objc_msgSend(rateCopy, "streamingThrottleStatus") != 2)
      {
        v24 = sub_10000132C();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          uuid2 = [rateCopy uuid];
          v28 = 138543618;
          v29 = uuid2;
          v30 = 1026;
          sourceType2 = [rateCopy sourceType];
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "classifier sending hr to publisher :: uuid : %{public}@ , sourceType : %{public}d", &v28, 0x12u);
        }

        publisherBlockCopy[2](publisherBlockCopy, rateCopy);
      }

      v16 = sub_10000132C();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
LABEL_29:
        v22 = clientBlockCopy;
LABEL_30:

        v22[2](v22, rateCopy);
        goto LABEL_31;
      }

LABEL_28:
      uuid3 = [rateCopy uuid];
      sourceType3 = [rateCopy sourceType];
      v28 = 138543618;
      v29 = uuid3;
      v30 = 1026;
      sourceType2 = sourceType3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "classifier sending hr to clients :: uuid : %{public}@ , sourceType : %{public}d", &v28, 0x12u);

      goto LABEL_29;
    }

    v17 = sub_10000132C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      hrContext = [rateCopy hrContext];
      arbitrationStatus = [rateCopy arbitrationStatus];
      uuid4 = [rateCopy uuid];
      v28 = 134218498;
      v29 = hrContext;
      v30 = 1024;
      sourceType2 = arbitrationStatus;
      v32 = 2114;
      v33 = uuid4;
      _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "ignoring hr in classifier with context : %ld and arbitration status : %d with uuid : %{public}@", &v28, 0x1Cu);
    }

    goto LABEL_21;
  }

  if (!sourceType)
  {
    v17 = sub_10000132C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      uuid5 = [rateCopy uuid];
      sub_1000118E4(uuid5, &v28, v17);
    }

LABEL_21:

    goto LABEL_31;
  }

  if (sourceType == 3)
  {
    v14 = sub_10000132C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      uuid6 = [rateCopy uuid];
      v28 = 138543618;
      v29 = uuid6;
      v30 = 1026;
      sourceType2 = [rateCopy sourceType];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "classifier sending hr to publisher :: uuid : %{public}@ , sourceType : %{public}d", &v28, 0x12u);
    }

    publisherBlockCopy[2](publisherBlockCopy, rateCopy);
    v16 = sub_10000132C();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_31:
}

+ (void)classifyArbitratedHeartRate:(id)rate publisherBlock:(id)block clientBlock:(id)clientBlock
{
  rateCopy = rate;
  blockCopy = block;
  clientBlockCopy = clientBlock;
  if ([rateCopy hrContext] != 2 || objc_msgSend(rateCopy, "arbitrationStatus") != 2)
  {
    v10 = sub_10000132C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      uuid = [rateCopy uuid];
      v18 = 138543874;
      v19 = uuid;
      v20 = 2050;
      hrContext = [rateCopy hrContext];
      v22 = 1026;
      arbitrationStatus = [rateCopy arbitrationStatus];
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "unexpected hr received with uuid : %{public}@ , context : %{public}ld , arbitrationStatus : %{public}d", &v18, 0x1Cu);
    }
  }

  if ([rateCopy confidenceLevel] == 2 && objc_msgSend(rateCopy, "streamingThrottleStatus") != 2)
  {
    v11 = sub_10000132C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      uuid2 = [rateCopy uuid];
      sourceType = [rateCopy sourceType];
      v18 = 138543618;
      v19 = uuid2;
      v20 = 1026;
      LODWORD(hrContext) = sourceType;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "classifier sending hr to publisher :: uuid : %{public}@ , sourceType : %{public}d", &v18, 0x12u);
    }

    blockCopy[2](blockCopy, rateCopy);
  }

  v14 = sub_10000132C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    uuid3 = [rateCopy uuid];
    sourceType2 = [rateCopy sourceType];
    v18 = 138543618;
    v19 = uuid3;
    v20 = 1026;
    LODWORD(hrContext) = sourceType2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "classifier sending hr to clients :: uuid : %{public}@ , sourceType : %{public}d", &v18, 0x12u);
  }

  clientBlockCopy[2](clientBlockCopy, rateCopy);
}

@end