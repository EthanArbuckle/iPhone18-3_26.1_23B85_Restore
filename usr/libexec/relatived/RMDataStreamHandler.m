@interface RMDataStreamHandler
- (BOOL)endpoint:(id)a3 shouldStartStreamingDataToReceiver:(id)a4;
- (RMDataStreamHandler)initWithEndpoint:(id)a3 isInternal:(BOOL)a4;
- (void)dealloc;
- (void)endpoint:(id)a3 didReceiveMessage:(id)a4 withData:(id)a5 replyBlock:(id)a6;
- (void)endpoint:(id)a3 didReceiveStreamingRequest:(id)a4 withData:(id)a5;
- (void)endpointShouldStopStreamingData:(id)a3;
@end

@implementation RMDataStreamHandler

- (RMDataStreamHandler)initWithEndpoint:(id)a3 isInternal:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RMDataStreamHandler;
  v8 = [(RMDataStreamHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endpoint, a3);
    sub_10001541C(v7, v9);
    v9->_isInternal = a4;
    v9->_dataProviderStreaming = 0;
  }

  return v9;
}

- (void)dealloc
{
  if (self)
  {
    [(RBSProcessMonitor *)self->_processMonitor invalidate];
    sub_10000FA48(self, 0);
    endpoint = self->_endpoint;
  }

  else
  {
    [0 invalidate];
    sub_10000FA48(0, 0);
    endpoint = 0;
  }

  sub_10001541C(&endpoint->super.isa, 0);
  sub_10000FA04(self, 0);
  v4.receiver = self;
  v4.super_class = RMDataStreamHandler;
  [(RMDataStreamHandler *)&v4 dealloc];
}

- (void)endpoint:(id)a3 didReceiveMessage:(id)a4 withData:(id)a5 replyBlock:(id)a6
{
  v26 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!self)
  {
    goto LABEL_14;
  }

  for (i = self->_endpoint; i != v26; i = 0)
  {
    v14 = sub_10000942C();
    v11 = "self.endpoint == endpoint";
    if (sub_1000086B4(v14))
    {
      sub_10000861C();
      sub_100009B60(&_mh_execute_header, v15, v16, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v27);
    }

    v10 = sub_10000942C();
    if (os_signpost_enabled(v10))
    {
      sub_10000861C();
      sub_100009B50();
      sub_100009B98(v17, v18, v19, v20, v21, v22, v27);
    }

    v23 = sub_10000942C();
    if (sub_1000086CC(v23))
    {
      sub_10000861C();
      sub_100009B7C(&_mh_execute_header, v24, v25, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v27);
    }

    sub_100009BD8();
    v12 = abort_report_np();
LABEL_14:
    ;
  }
}

- (void)endpoint:(id)a3 didReceiveStreamingRequest:(id)a4 withData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (self)
  {
    endpoint = self->_endpoint;
  }

  else
  {
    endpoint = 0;
  }

  if (endpoint == v8)
  {
    if (!v10)
    {
      sub_100009BE4();
      if (v13)
      {
        goto LABEL_7;
      }

      goto LABEL_48;
    }

    if (qword_10002C560 != -1)
    {
      dispatch_once(&qword_10002C560, &stru_100024E80);
    }

    v61 = 0;
    v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:qword_10002C558 fromData:v11 error:&v61];
    v16 = v61;
    v17 = [NSUUID alloc];
    v18 = [v15 objectForKeyedSubscript:@"Identifier"];
    v60 = [v17 initWithUUIDString:v18];

    sub_100009BE4();
    if (!v13)
    {
      dispatch_once(&qword_10002C0C8, &stru_100024F40);
    }

    v19 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v60;
      sub_100009BB4(&_mh_execute_header, v19, v20, "Identifier: %@", buf);
    }

    v21 = [v15 objectForKeyedSubscript:@"Interval"];
    sub_100009BE4();
    v59 = v15;
    if (!v13)
    {
      dispatch_once(&qword_10002C0C8, &stru_100024F40);
    }

    v22 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v21;
      sub_100009BB4(&_mh_execute_header, v22, v23, "Interval: %@", buf);
    }

    if (self && self->_dataProviderStreaming)
    {
      sub_100009BE4();
      if (!v13)
      {
        dispatch_once(&qword_10002C0C8, &stru_100024F40);
      }

      v22 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Received a new streaming request while the previous streaming is still active", buf, 2u);
      }

      [(RMDataStreamHandler *)self endpointShouldStopStreamingData:v8];
    }

    sub_100013E3C(self, 0);
    v24 = v59;
    if (self->_isInternal)
    {
      v25 = v16;
      if ([v9 isEqualToString:@"kRMStartStreamingDummyData"])
      {
        v26 = -[RMDummyDataProviderConfiguration initWithUniqueIdentifier:updateInterval:]([RMDummyDataProviderConfiguration alloc], "initWithUniqueIdentifier:updateInterval:", v60, [v21 unsignedLongLongValue]);
        v39 = [RMDummyDataProvider alloc];
        v29 = sub_100015290(v8);
        v40 = [(RMDummyDataProvider *)v39 initWithConfiguration:v26 receiverQueue:v29];
        sub_100013E3C(self, v40);

        goto LABEL_39;
      }

      if ([v9 isEqualToString:@"kRMStartStreamingAudioListenerPose"])
      {
        v26 = [v59 objectForKeyedSubscript:@"TempestOptions"];
        v27 = [v59 objectForKeyedSubscript:@"ForceSessionRestart"];
        v28 = [v27 BOOLValue];

        v29 = [[RMAudioListenerPoseProviderConfiguration alloc] initWithUniqueIdentifier:v60 tempestOptions:v26 forceSessionRestart:v28];
        v30 = [RMAudioListenerPoseProvider alloc];
        v31 = sub_100009BCC();
        v32 = sub_100015290(v31);
        v33 = [v27 initWithConfiguration:v29 receiverQueue:v32];
        sub_100013E3C(self, v33);

LABEL_39:
        v24 = v59;
      }

LABEL_40:

      goto LABEL_9;
    }

    v25 = v16;
    if ([v9 isEqualToString:@"kRMStartStreamingHeadphoneMotion"])
    {
      v41 = [v59 objectForKeyedSubscript:@"lowLatency"];
      v42 = [v41 BOOLValue];

      v43 = [RMHeadphoneMotionProvider alloc];
      v44 = sub_100009BCC();
      v26 = sub_100015290(v44);
      v38 = sub_100012A50(v41, v26, v42);
    }

    else if ([v9 isEqualToString:@"kRMStartStreamingHeadphoneActivity"])
    {
      v45 = [RMHeadphoneActivityProvider alloc];
      v46 = sub_100009BCC();
      v26 = sub_100015290(v46);
      v38 = sub_100011FEC(&v22->isa, v26);
    }

    else
    {
      if (![v9 isEqualToString:@"kRMStartStreamingHeadphoneStatus"])
      {
        goto LABEL_40;
      }

      v34 = [v59 objectForKeyedSubscript:kCMHeadphoneRequireActivitySupport];
      v35 = [v34 BOOLValue];

      v36 = [RMHeadphoneStatusProvider alloc];
      v37 = sub_100009BCC();
      v26 = sub_100015290(v37);
      v38 = [v34 initWithReceiverQueue:v26 requireActivitySupport:v35];
    }

    v29 = v38;
    sub_100013E3C(self, v38);
    goto LABEL_39;
  }

  v47 = sub_10000942C();
  v11 = "assert";
  v9 = "self.endpoint == endpoint";
  if (sub_1000086B4(v47))
  {
    sub_100009B24();
    sub_100009B60(&_mh_execute_header, v48, v49, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf);
  }

  v8 = sub_10000942C();
  if (os_signpost_enabled(v8))
  {
    sub_100009B24();
    sub_100009B50();
    sub_100009B98(v50, v51, v52, v53, v54, v55, buf);
  }

  v56 = sub_10000942C();
  if (sub_1000086CC(v56))
  {
    sub_100009B24();
    sub_100009B7C(&_mh_execute_header, v57, v58, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf);
  }

  sub_100009BD8();
  abort_report_np();
LABEL_48:
  dispatch_once(&qword_10002C0C8, &stru_100024F40);
LABEL_7:
  v14 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Configuration message doesn't contain any data", buf, 2u);
  }

LABEL_9:
}

- (BOOL)endpoint:(id)a3 shouldStartStreamingDataToReceiver:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    endpoint = self->_endpoint;
  }

  else
  {
    endpoint = 0;
  }

  if (endpoint != v6)
  {
    v34 = sub_10000942C();
    v7 = "self.endpoint == endpoint";
    if (sub_1000086B4(v34))
    {
      sub_100009ACC(1.7164e-36);
      sub_100009B60(&_mh_execute_header, v35, v36, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf);
    }

    v6 = sub_10000942C();
    if (os_signpost_enabled(v6))
    {
      sub_100009ACC(1.7164e-36);
      sub_100009B50();
      sub_100009B98(v37, v38, v39, v40, v41, v42, buf);
    }

    v43 = sub_10000942C();
    if (sub_1000086CC(v43))
    {
      sub_100009ACC(1.7164e-36);
      sub_100009B7C(&_mh_execute_header, v44, v45, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf);
    }

    sub_100009BD8();
    abort_report_np();
    goto LABEL_34;
  }

  if (!self || (v9 = self->_dataProvider) == 0)
  {
    if (qword_10002C0C8 == -1)
    {
LABEL_7:
      v10 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Streaming can't start because no dataProvider has been initialized!", buf, 2u);
      }

      v11 = 0;
      goto LABEL_10;
    }

LABEL_34:
    dispatch_once(&qword_10002C0C8, &stru_100024F40);
    goto LABEL_7;
  }

  v13 = v9;
  v14 = sub_100012944(&v6->isa);
  objc_setProperty_nonatomic_copy(self, v15, v14, 24);

  if (!self->_endpointName)
  {
    objc_setProperty_nonatomic_copy(self, v16, @"unknown", 24);
    if (qword_10002C0C8 != -1)
    {
      dispatch_once(&qword_10002C0C8, &stru_100024F40);
    }

    v17 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_FAULT))
    {
      *buf = 138477827;
      v55 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Failed to determine the endpoint name for endpoint: %{private}@", buf, 0xCu);
    }
  }

  self->_startTime = sub_1000087A8();
  if (qword_10002C0C8 != -1)
  {
    dispatch_once(&qword_10002C0C8, &stru_100024F40);
  }

  v18 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    endpointName = self->_endpointName;
    *buf = 138543362;
    v55 = endpointName;
    v20 = v18;
    sub_100009BB4(&_mh_execute_header, v20, v21, "Data stream started on endpoint: %{public}@", buf);
  }

  isInternal = self->_isInternal;
  v23 = self->_endpointName;
  v52[0] = @"client";
  v52[1] = @"tracking";
  v53[0] = v23;
  v53[1] = &__kCFBooleanTrue;
  v52[2] = @"eventType";
  v24 = v23;
  v25 = [NSNumber numberWithLong:!isInternal];
  v53[2] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];

  if (qword_10002C0C8 != -1)
  {
    dispatch_once(&qword_10002C0C8, &stru_100024F40);
  }

  v27 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v55 = v26;
    sub_100009BB4(&_mh_execute_header, v27, v28, "Sending PowerLog event: %{private}@", buf);
  }

  PLLogRegisteredEvent();
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100009560;
  v48[3] = &unk_100024ED0;
  v49 = v6;
  v29 = v13;
  v50 = v29;
  v30 = v7;
  v51 = v30;
  v31 = [RBSProcessMonitor monitorWithConfiguration:v48];
  sub_10000FA48(self, v31);

  dataProvider = self->_dataProvider;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100009A1C;
  v46[3] = &unk_100024EF8;
  v47 = v30;
  v33 = [(RMDataProvider *)dataProvider startProducingDataWithCallback:v46];
  v11 = v33 == 0;
  if (!v33)
  {
    self->_dataProviderStreaming = 1;
  }

LABEL_10:
  return v11;
}

- (void)endpointShouldStopStreamingData:(id)a3
{
  v5 = a3;
  p_super = &v5->super;
  if (self)
  {
    endpoint = self->_endpoint;
  }

  else
  {
    endpoint = 0;
  }

  if (endpoint == v5)
  {
    p_info = RMFacePoseCaptureContext.info;
    if (qword_10002C0C8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = sub_10000942C();
    self = "self.endpoint == endpoint";
    if (sub_1000086B4(v20))
    {
      sub_100009AF8();
      sub_100009B60(&_mh_execute_header, v21, v22, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &v34);
    }

    p_super = sub_10000942C();
    if (os_signpost_enabled(p_super))
    {
      sub_100009AF8();
      sub_100009B50();
      sub_100009B98(v23, v24, v25, v26, v27, v28, &v34);
    }

    v29 = sub_10000942C();
    if (sub_1000086CC(v29))
    {
      sub_100009AF8();
      sub_100009B7C(&_mh_execute_header, v30, v31, "{msg%{public}.0s:Endpoint must be same as the initially passed endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &v34);
    }

    sub_100009BD8();
    abort_report_np();
  }

  dispatch_once(&qword_10002C0C8, &stru_100024F40);
LABEL_5:
  v8 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      endpointName = self->_endpointName;
    }

    else
    {
      endpointName = 0;
    }

    v34 = 138543362;
    v35 = endpointName;
    v10 = v8;
    sub_100009BB4(&_mh_execute_header, v10, v11, "Data stream stopped on endpoint: %{public}@", &v34);
  }

  if (self)
  {
    v12 = !self->_isInternal;
    v13 = self->_endpointName;
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  v32[0] = @"client";
  v32[1] = @"tracking";
  v33[0] = v13;
  v33[1] = &__kCFBooleanFalse;
  v32[2] = @"eventType";
  v14 = v13;
  v15 = [NSNumber numberWithLong:v12];
  v33[2] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:3];

  if (p_info[25] != -1)
  {
    dispatch_once(&qword_10002C0C8, &stru_100024F40);
  }

  v17 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138477827;
    v35 = v16;
    sub_100009BB4(&_mh_execute_header, v17, v18, "Sending PowerLog event: %{private}@", &v34);
  }

  PLLogRegisteredEvent();
  if (self && self->_isInternal || (AnalyticsSendEventLazy(), self))
  {
    [(RBSProcessMonitor *)self->_processMonitor invalidate];
    sub_10000FA48(self, 0);
    dataProvider = self->_dataProvider;
  }

  else
  {
    [0 invalidate];
    sub_10000FA48(0, 0);
    dataProvider = 0;
  }

  [(RMDataProvider *)dataProvider stopProducingData];
  if (self)
  {
    self->_dataProviderStreaming = 0;
  }
}

@end