@interface HIDTimestampSyncErrorHandler
- (HIDTimestampSyncErrorHandler)initWithSubType:(id)a3;
- (void)reportFailure:(id)a3;
@end

@implementation HIDTimestampSyncErrorHandler

- (HIDTimestampSyncErrorHandler)initWithSubType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HIDTimestampSyncErrorHandler;
  v6 = [(HIDTimestampSyncErrorHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subType, a3);
    v7->_consecutiveErrors = 0;
  }

  return v7;
}

- (void)reportFailure:(id)a3
{
  v4 = a3;
  v5 = self->_consecutiveErrors + 1;
  self->_consecutiveErrors = v5;
  if (v5 > 0x1D)
  {
    if (v5 == 30)
    {
      if (qword_1000DDAF8 != -1)
      {
        sub_100075F40();
      }

      v6 = qword_1000DDAF0;
      subType = self->_subType;
      v8 = +[NSProcessInfo processInfo];
      v9 = [v8 processName];
      v10 = [v6 signatureWithDomain:@"MobileBluetoothServices" type:@"HIDTimestampSync" subType:subType subtypeContext:0 detectedProcess:v9 triggerThresholdValues:0];

      v11 = [qword_1000DDAF0 snapshotWithSignature:v10 duration:0 events:0 payload:0 actions:&stru_1000BDF90 reply:0.0];
      v12 = qword_1000DDBC8;
      if (v11)
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sent ABC snapshot for signature %@", &v13, 0xCu);
        }
      }

      else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100075F54();
      }

      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100075FC8();
      }

      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_10007603C();
      }
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100075FC8();
  }
}

@end