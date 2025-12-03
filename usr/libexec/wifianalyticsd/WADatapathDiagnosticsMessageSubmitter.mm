@interface WADatapathDiagnosticsMessageSubmitter
- (WADatapathDiagnosticsMessageSubmitter)initWithMessageGroupType:(int64_t)type;
- (id)diagnosticMessagePayload;
- (id)submitDPEMessage:(id)message;
- (id)submitDPSRMessage:(id)message;
- (id)submitMessage:(id)message;
- (id)submitSlowWiFiMessage:(id)message;
- (int)findTxCompletionFailureWithMaxCount:(id)count;
- (void)computeAggregateTxCompletionStatus:(id)status source:(id)source;
@end

@implementation WADatapathDiagnosticsMessageSubmitter

- (WADatapathDiagnosticsMessageSubmitter)initWithMessageGroupType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = WADatapathDiagnosticsMessageSubmitter;
  v4 = [(WADatapathDiagnosticsMessageSubmitter *)&v10 init];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = qword_10010DEF8;
  v15 = qword_10010DEF8;
  if (!qword_10010DEF8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100098788;
    v11[3] = &unk_1000EDA60;
    v11[4] = &v12;
    sub_100098788(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = objc_alloc_init(v5);
  ABCReporter = v4->_ABCReporter;
  v4->_ABCReporter = v7;

  v4->_groupTypeForThisSubmitter = type;
  return v4;
}

- (id)submitMessage:(id)message
{
  messageCopy = message;
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [messageCopy key];
    v16 = 136446722;
    v17 = "[WADatapathDiagnosticsMessageSubmitter submitMessage:]";
    v18 = 1024;
    v19 = 81;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Attempting to submit: %@", &v16, 0x1Cu);
  }

  v7 = [messageCopy key];
  v8 = [v7 isEqualToString:@"DPSR"];

  if (v8)
  {
    v9 = [(WADatapathDiagnosticsMessageSubmitter *)self submitDPEMessage:messageCopy];
LABEL_7:
    v12 = v9;
    goto LABEL_11;
  }

  v10 = [messageCopy key];
  v11 = [v10 isEqualToString:@"SWFR"];

  if (v11)
  {
    v9 = [(WADatapathDiagnosticsMessageSubmitter *)self submitSlowWiFiMessage:messageCopy];
    goto LABEL_7;
  }

  v13 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [messageCopy key];
    v16 = 136446722;
    v17 = "[WADatapathDiagnosticsMessageSubmitter submitMessage:]";
    v18 = 1024;
    v19 = 90;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:No Processor for key %@", &v16, 0x1Cu);
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)diagnosticMessagePayload
{
  v4 = kSymptomDiagnosticKeyPayloadDEParameters;
  v5 = &off_100102C60;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

- (id)submitSlowWiFiMessage:(id)message
{
  messageCopy = message;
  v5 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [messageCopy key];
    *buf = 136446722;
    v39 = "[WADatapathDiagnosticsMessageSubmitter submitSlowWiFiMessage:]";
    v40 = 1024;
    v41 = 111;
    v42 = 2112;
    v43 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Attempting to submit: %@", buf, 0x1Cu);
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [(WAProtobufMessageSubmitter *)self instantiateAWDProtobufAndPopulateValues:messageCopy];
  v9 = v8;
  if (!v8)
  {
    v28 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v39 = "[WADatapathDiagnosticsMessageSubmitter submitSlowWiFiMessage:]";
      v40 = 1024;
      v41 = 122;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error creating data to send to ABC", buf, 0x12u);
    }

    v36 = NSLocalizedFailureReasonErrorKey;
    v37 = @"WAErrorCodeSubmissionModelFailure";
    v16 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v26 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9007 userInfo:v16];
    slowNotice = 0;
    v18 = 0;
    v25 = 0;
    v24 = 0;
    goto LABEL_9;
  }

  v10 = v8;
  v31 = v7;
  v32 = messageCopy;
  v30 = v9;
  if (![v10 hasSlowNotice])
  {
    v29 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  slowNotice = [v10 slowNotice];
  recoveryReason = [slowNotice recoveryReason];
  if (recoveryReason <= 0x11)
  {
    v13 = recoveryReason;
    v29 = slowNotice;
LABEL_8:
    v14 = [NSString stringWithFormat:@"Slow WiFi"];
    v15 = [NSString stringWithFormat:@"recoveryReason 0x%x", v13];
    v16 = [v14 stringByReplacingOccurrencesOfString:@"%" withString:&stru_1000F04E0];
    v17 = [v15 stringByReplacingOccurrencesOfString:@"%" withString:&stru_1000F04E0];
    v18 = [(SDRDiagnosticReporter *)self->_ABCReporter signatureWithDomain:@"WiFi" type:@"Slow WiFi" subType:v16 subtypeContext:v17 detectedProcess:@"wifianalyticsd" triggerThresholdValues:0];
    diagnosticMessagePayload = [(WADatapathDiagnosticsMessageSubmitter *)self diagnosticMessagePayload];
    v20 = [NSArray alloc];
    dictionaryRepresentation = [v10 dictionaryRepresentation];
    v22 = [v20 initWithObjects:{dictionaryRepresentation, 0}];

    ABCReporter = self->_ABCReporter;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100092F4C;
    v33[3] = &unk_1000EE950;
    v24 = v14;
    v34 = v24;
    v25 = v15;
    v35 = v25;
    [(SDRDiagnosticReporter *)ABCReporter snapshotWithSignature:v18 duration:v22 events:diagnosticMessagePayload payload:0 actions:v33 reply:10.0];

    v26 = 0;
    v7 = v31;
    messageCopy = v32;
    slowNotice = v29;
    v9 = v30;
LABEL_9:

    goto LABEL_10;
  }

  v18 = 0;
  v25 = 0;
  v24 = 0;
  v26 = 0;
LABEL_10:

  objc_autoreleasePoolPop(v7);

  return v26;
}

- (void)computeAggregateTxCompletionStatus:(id)status source:(id)source
{
  sourceCopy = source;
  statusCopy = status;
  [statusCopy setDropped:{objc_msgSend(statusCopy, "dropped") + objc_msgSend(sourceCopy, "dropped")}];
  [statusCopy setNoBuf:{objc_msgSend(statusCopy, "noBuf") + objc_msgSend(sourceCopy, "noBuf")}];
  [statusCopy setNoResources:{objc_msgSend(statusCopy, "noResources") + objc_msgSend(sourceCopy, "noResources")}];
  [statusCopy setNoAck:{objc_msgSend(statusCopy, "noAck") + objc_msgSend(sourceCopy, "noAck")}];
  [statusCopy setChipModeError:{objc_msgSend(statusCopy, "chipModeError") + objc_msgSend(sourceCopy, "chipModeError")}];
  [statusCopy setExpired:{objc_msgSend(statusCopy, "expired") + objc_msgSend(sourceCopy, "expired")}];
  [statusCopy setTxFailure:{objc_msgSend(statusCopy, "txFailure") + objc_msgSend(sourceCopy, "txFailure")}];
  [statusCopy setFirmwareFreePacket:{objc_msgSend(statusCopy, "firmwareFreePacket") + objc_msgSend(sourceCopy, "firmwareFreePacket")}];
  [statusCopy setMaxRetries:{objc_msgSend(statusCopy, "maxRetries") + objc_msgSend(sourceCopy, "maxRetries")}];
  LODWORD(status) = [sourceCopy forceLifetimeExp];

  [statusCopy setForceLifetimeExp:{objc_msgSend(statusCopy, "forceLifetimeExp") + status}];
}

- (int)findTxCompletionFailureWithMaxCount:(id)count
{
  countCopy = count;
  dropped = 0;
  v5 = 0;
  for (i = 1; ; ++i)
  {
    if (i <= 5)
    {
      if (i <= 2)
      {
        if (i == 1)
        {
          if ([countCopy dropped] > dropped)
          {
            dropped = [countCopy dropped];
            v5 = 1;
          }
        }

        else if (i == 2 && [countCopy noBuf] > dropped)
        {
          dropped = [countCopy noBuf];
          v5 = 2;
        }
      }

      else if (i == 3)
      {
        if ([countCopy noResources] > dropped)
        {
          dropped = [countCopy noResources];
          v5 = 3;
        }
      }

      else if (i == 4)
      {
        if ([countCopy noAck] > dropped)
        {
          dropped = [countCopy noAck];
          v5 = 4;
        }
      }

      else if ([countCopy chipModeError] > dropped)
      {
        dropped = [countCopy chipModeError];
        v5 = 5;
      }

      continue;
    }

    if (i > 7)
    {
      break;
    }

    if (i == 6)
    {
      if ([countCopy expired] > dropped)
      {
        dropped = [countCopy expired];
        v5 = 6;
      }
    }

    else if ([countCopy txFailure] > dropped)
    {
      dropped = [countCopy txFailure];
      v5 = 7;
    }

LABEL_31:
    ;
  }

  if (i == 8)
  {
    if ([countCopy firmwareFreePacket] > dropped)
    {
      dropped = [countCopy firmwareFreePacket];
      v5 = 8;
    }

    goto LABEL_31;
  }

  if (i == 9)
  {
    if ([countCopy maxRetries] > dropped)
    {
      dropped = [countCopy maxRetries];
      v5 = 9;
    }

    goto LABEL_31;
  }

  if (i != 10)
  {
    goto LABEL_31;
  }

  if ([countCopy forceLifetimeExp] <= dropped)
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    [countCopy forceLifetimeExp];
    v7 = 10;
  }

  return v7;
}

- (id)submitDPEMessage:(id)message
{
  messageCopy = message;
  v4 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [messageCopy key];
    *buf = 136446722;
    *&buf[4] = "[WADatapathDiagnosticsMessageSubmitter submitDPEMessage:]";
    *&buf[12] = 1024;
    *&buf[14] = 260;
    *&buf[18] = 2112;
    *&buf[20] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Attempting to submit: %@", buf, 0x1Cu);
  }

  context = objc_autoreleasePoolPush();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = sub_100093EC0;
  v67 = sub_100093ED0;
  v68 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_100093EC0;
  v58 = sub_100093ED0;
  v59 = 0;
  v6 = [(WAProtobufMessageSubmitter *)self instantiateAWDProtobufAndPopulateValues:messageCopy];
  v52 = v6;
  if (v6)
  {
    v7 = v6;
    dpsEpiloge = [v7 dpsEpiloge];

    if (dpsEpiloge)
    {
      dpsEpiloge2 = [v7 dpsEpiloge];
      action = [dpsEpiloge2 action];
      if ((action & 2) != 0)
      {
        v11 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 136446466;
          v63 = "[WADatapathDiagnosticsMessageSubmitter submitDPEMessage:]";
          v64 = 1024;
          v65 = 282;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Action - Slow DPS Reset", v62, 0x12u);
        }

        v12 = 0;
        v49 = 0;
        v13 = 0;
      }

      else if (([dpsEpiloge2 action] & 4) != 0)
      {
        v11 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 136446466;
          v63 = "[WADatapathDiagnosticsMessageSubmitter submitDPEMessage:]";
          v64 = 1024;
          v65 = 285;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Action - Fast DPS Reset", v62, 0x12u);
        }

        v12 = 0;
        v49 = 0;
        v13 = 1;
      }

      else if (([dpsEpiloge2 action] & 0x40) != 0)
      {
        v11 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 136446466;
          v63 = "[WADatapathDiagnosticsMessageSubmitter submitDPEMessage:]";
          v64 = 1024;
          v65 = 288;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Action - Symptoms DNS Reset", v62, 0x12u);
        }

        v12 = 0;
        v13 = 0;
        v49 = 1;
      }

      else
      {
        action2 = [dpsEpiloge2 action];
        v16 = WALogCategoryDefaultHandle();
        v11 = v16;
        if ((action2 & 0x80) == 0)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *v62 = 136446466;
            v63 = "[WADatapathDiagnosticsMessageSubmitter submitDPEMessage:]";
            v64 = 1024;
            v65 = 293;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:No DPE Action found", v62, 0x12u);
          }

          v17 = 0;
          goto LABEL_66;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 136446466;
          v63 = "[WADatapathDiagnosticsMessageSubmitter submitDPEMessage:]";
          v64 = 1024;
          v65 = 291;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Action - Symptoms DNS Reassoc", v62, 0x12u);
        }

        v49 = 0;
        v13 = 0;
        v12 = 1;
      }

      v14 = (action >> 1) & 1;
    }

    else
    {
      v12 = 0;
      v49 = 0;
      v13 = 0;
      v14 = 0;
    }

    snapshot = [v7 snapshot];

    v19 = WALogCategoryDefaultHandle();
    snapshot2 = v19;
    if (snapshot)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 136446466;
        v63 = "[WADatapathDiagnosticsMessageSubmitter submitDPEMessage:]";
        v64 = 1024;
        v65 = 299;
        _os_log_impl(&_mh_execute_header, snapshot2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found - snapshot submessage", v62, 0x12u);
      }

      snapshot2 = [v7 snapshot];
      v21 = 0;
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = v22;
        if (v21 > 1)
        {
          if (v21 == 2)
          {
            [snapshot2 txCompletionSnapshotVI];
          }

          else
          {
            [snapshot2 txCompletionSnapshotVO];
          }
        }

        else if (v21)
        {
          [snapshot2 txCompletionSnapshotBK];
        }

        else
        {
          [snapshot2 txCompletionSnapshotBE];
        }
        v25 = ;
        v22 = v25;

        if (v22)
        {
          if (v23)
          {
            [(WADatapathDiagnosticsMessageSubmitter *)self computeAggregateTxCompletionStatus:v23 source:v22];
          }

          else
          {
            v23 = v22;
          }
        }

        ++v21;
      }

      while (v21 != 4);
      v26 = [(WADatapathDiagnosticsMessageSubmitter *)self findTxCompletionFailureWithMaxCount:v23];
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v62 = 136446466;
        v63 = "[WADatapathDiagnosticsMessageSubmitter submitDPEMessage:]";
        v64 = 1024;
        v65 = 333;
        _os_log_impl(&_mh_execute_header, snapshot2, OS_LOG_TYPE_ERROR, "%{public}s::%d:snapshot submessage not found", v62, 0x12u);
      }

      v26 = 0xFFFFFFFFLL;
    }

    if (v13)
    {
      v50 = [NSString stringWithFormat:@"fDPS"];
      if (v26 != -1)
      {
LABEL_49:
        [NSString stringWithFormat:@"TE%d", v26];
        v27 = LABEL_50:;
        v30 = v27;
LABEL_62:
        v31 = [NSString stringWithFormat:@"%@", v50];
        v32 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v31;

        if ((v13 | v14) == 1)
        {
          v33 = [NSString stringWithFormat:@"%@", v30];
          v34 = @"DPS.Stall";
        }

        else
        {
          v33 = [NSString stringWithFormat:&stru_1000F04E0];
          v34 = @"DNS.Stall";
        }

        v35 = v55[5];
        v55[5] = v33;

        dpsEpiloge2 = [NSString stringWithFormat:v34];
        v36 = [*(*&buf[8] + 40) stringByReplacingOccurrencesOfString:@"%" withString:&stru_1000F04E0];
        v37 = [v55[5] stringByReplacingOccurrencesOfString:@"%" withString:&stru_1000F04E0];
        v11 = [(SDRDiagnosticReporter *)self->_ABCReporter signatureWithDomain:@"WiFi" type:dpsEpiloge2 subType:v36 subtypeContext:v37 detectedProcess:@"wifianalyticsd" triggerThresholdValues:0];
        diagnosticMessagePayload = [(WADatapathDiagnosticsMessageSubmitter *)self diagnosticMessagePayload];
        v39 = [NSArray alloc];
        dictionaryRepresentation = [v7 dictionaryRepresentation];
        v41 = [v39 initWithObjects:{dictionaryRepresentation, 0}];

        ABCReporter = self->_ABCReporter;
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_100093ED8;
        v53[3] = &unk_1000EE978;
        v53[4] = buf;
        v53[5] = &v54;
        [(SDRDiagnosticReporter *)ABCReporter snapshotWithSignature:v11 duration:v41 events:diagnosticMessagePayload payload:0 actions:v53 reply:10.0];

        v17 = 1;
LABEL_66:

        v43 = 0;
        goto LABEL_67;
      }
    }

    else
    {
      if ((v49 | v12 | v14 ^ 1))
      {
        v28 = @"None";
        if (v12)
        {
          v28 = @"sDNS.Reassoc";
        }

        if (v49)
        {
          v29 = @"sDNS.Reset";
        }

        else
        {
          v29 = v28;
        }

        v50 = [NSString stringWithFormat:v29];
        v30 = 0;
        goto LABEL_62;
      }

      v50 = [NSString stringWithFormat:@"sDPS"];
      if (v26 != -1)
      {
        goto LABEL_49;
      }
    }

    [NSString stringWithFormat:@"NoTE"];
    goto LABEL_50;
  }

  v47 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *v62 = 136446466;
    v63 = "[WADatapathDiagnosticsMessageSubmitter submitDPEMessage:]";
    v64 = 1024;
    v65 = 275;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error creating data to send to ABC", v62, 0x12u);
  }

  v60 = NSLocalizedFailureReasonErrorKey;
  v61 = @"WAErrorCodeSubmissionModelFailure";
  dpsEpiloge2 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v43 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9007 userInfo:dpsEpiloge2];
  v17 = 0;
LABEL_67:

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(buf, 8);

  objc_autoreleasePoolPop(context);
  if (v17)
  {
    v44 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [messageCopy key];
      *buf = 136446722;
      *&buf[4] = "[WADatapathDiagnosticsMessageSubmitter submitDPEMessage:]";
      *&buf[12] = 1024;
      *&buf[14] = 388;
      *&buf[18] = 2112;
      *&buf[20] = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Submit complete: %@", buf, 0x1Cu);
    }
  }

  return v43;
}

- (id)submitDPSRMessage:(id)message
{
  selfCopy = self;
  messageCopy = message;
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [messageCopy key];
    *buf = 136446722;
    v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
    v432 = 1024;
    v433 = 396;
    v434 = 2112;
    *v435 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Attempting to submit: %@", buf, 0x1Cu);
  }

  context = objc_autoreleasePoolPush();
  v422 = 0;
  v423 = &v422;
  v424 = 0x3032000000;
  v425 = sub_100093EC0;
  v426 = sub_100093ED0;
  v427 = 0;
  v416 = 0;
  v417 = &v416;
  v418 = 0x3032000000;
  v419 = sub_100093EC0;
  v420 = sub_100093ED0;
  v421 = 0;
  v5 = [(WAProtobufMessageSubmitter *)selfCopy instantiateAWDProtobufAndPopulateValues:messageCopy];
  v370 = v5;
  if (!v5)
  {
    v349 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v349, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 485;
      _os_log_impl(&_mh_execute_header, v349, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error creating data to send to ABC", buf, 0x12u);
    }

    v447 = NSLocalizedFailureReasonErrorKey;
    v448 = @"WAErrorCodeSubmissionModelFailure";
    v364 = [NSDictionary dictionaryWithObjects:&v448 forKeys:&v447 count:1];
    v323 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9007 userInfo:v364];
    v372 = 0;
    v373 = 0;
    v374 = 0;
    goto LABEL_458;
  }

  v392 = v5;
  stallNotifications = [v392 stallNotifications];
  v367 = [stallNotifications count] != 0;

  if (v367)
  {
    v414 = 0u;
    v415 = 0u;
    v412 = 0u;
    v413 = 0u;
    stallNotifications2 = [v392 stallNotifications];
    v8 = [stallNotifications2 countByEnumeratingWithState:&v412 objects:v446 count:16];
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = *v413;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v413 != v9)
        {
          objc_enumerationMutation(stallNotifications2);
        }

        v11 = *(*(&v412 + 1) + 8 * i);
        if (![v11 symptom])
        {
          problemAC = [v11 problemAC];
          v12 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
            v432 = 1024;
            v433 = 495;
            v434 = 1024;
            *v435 = problemAC;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:**** Found first DPS on AC bitfield %x", buf, 0x18u);
          }

          v361 = 1;
LABEL_17:

          v410 = 0u;
          v411 = 0u;
          v408 = 0u;
          v409 = 0u;
          stallNotifications3 = [v392 stallNotifications];
          v14 = [stallNotifications3 countByEnumeratingWithState:&v408 objects:v445 count:16];
          if (!v14)
          {
            LOBYTE(v381) = 0;
            v385 = 0;
            v375 = 0;
            v376 = 0;
            goto LABEL_50;
          }

          LOBYTE(v381) = 0;
          v385 = 0;
          v375 = 0;
          v376 = 0;
          v15 = *v409;
          while (2)
          {
            v16 = 0;
LABEL_20:
            if (*v409 != v15)
            {
              objc_enumerationMutation(stallNotifications3);
            }

            v17 = *(*(&v408 + 1) + 8 * v16);
            v18 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              stallNotifications4 = [v392 stallNotifications];
              v20 = [stallNotifications4 indexOfObject:v17];
              stallNotifications5 = [v392 stallNotifications];
              v22 = [stallNotifications5 count];
              *buf = 136446978;
              v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
              v432 = 1024;
              v433 = 501;
              v434 = 2048;
              *v435 = v20;
              *&v435[8] = 2048;
              *v436 = v22;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:stallNotification %lu of %lu", buf, 0x26u);
            }

            v23 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
              v432 = 1024;
              v433 = 502;
              v434 = 2112;
              *v435 = v17;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WiFiAnalyticsAWDWiFiDPSNotification[]: %@", buf, 0x1Cu);
            }

            if ([v17 symptom])
            {
              if ([v17 symptom] == 2)
              {
                v24 = WALogCategoryDefaultHandle();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446466;
                  v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                  v432 = 1024;
                  v433 = 514;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:**** Found User Toggle WiFi Off", buf, 0x12u);
                }

                LOBYTE(v381) = 1;
                goto LABEL_39;
              }

              if ([v17 symptom] == 3)
              {
                v25 = WALogCategoryDefaultHandle();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446466;
                  v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                  v432 = 1024;
                  v433 = 518;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:**** Found User Toggle WiFi On", buf, 0x12u);
                }

                LOBYTE(v381) = 0;
LABEL_39:
                v385 = 1;
              }
            }

            else if ([v17 problemAC])
            {
              BYTE4(v376) = 1;
            }

            else if (([v17 problemAC] & 2) != 0)
            {
              LOBYTE(v376) = 1;
            }

            else if (([v17 problemAC] & 4) != 0)
            {
              LOBYTE(v375) = 1;
            }

            else
            {
              HIDWORD(v375) |= ([v17 problemAC] & 8) >> 3;
            }

            if (v14 == ++v16)
            {
              v14 = [stallNotifications3 countByEnumeratingWithState:&v408 objects:v445 count:16];
              if (!v14)
              {
LABEL_50:
                v353 = 0;
                goto LABEL_51;
              }

              continue;
            }

            goto LABEL_20;
          }
        }
      }

      v8 = [stallNotifications2 countByEnumeratingWithState:&v412 objects:v446 count:16];
      if (!v8)
      {
LABEL_13:
        problemAC = 0;
        v361 = 0;
        goto LABEL_17;
      }
    }
  }

  stallNotifications3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(stallNotifications3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
    v432 = 1024;
    v433 = 526;
    _os_log_impl(&_mh_execute_header, stallNotifications3, OS_LOG_TYPE_ERROR, "%{public}s::%d:Missing DPS Notificaiton", buf, 0x12u);
  }

  LOBYTE(v381) = 0;
  v385 = 0;
  v375 = 0;
  v376 = 0;
  problemAC = 0;
  v361 = 0;
  v353 = 1;
LABEL_51:

  probeResults = [v392 probeResults];
  v366 = [probeResults count] != 0;

  if (!v366)
  {
    v30 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 582;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s::%d:Missing Probe result", buf, 0x12u);
    }

    v31 = 0;
    v350 = 0;
    v359 = 0;
    v360 = 0;
    v352 = 1;
    goto LABEL_113;
  }

  v371 = [v392 probeResultAtIndex:0];
  v27 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
    v432 = 1024;
    v433 = 535;
    v434 = 2112;
    *v435 = v371;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:**** First Probe result %@", buf, 0x1Cu);
  }

  if ([v371 hasRttGatewayBE] && objc_msgSend(v371, "rttGatewayBE") && objc_msgSend(v371, "hasRttGatewayBK") && objc_msgSend(v371, "rttGatewayBK") && objc_msgSend(v371, "hasRttGatewayVO") && objc_msgSend(v371, "rttGatewayVO") && objc_msgSend(v371, "hasRttGatewayVI") && objc_msgSend(v371, "rttGatewayVI"))
  {
    v28 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 541;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:Probe results All successfull, conflicts DPS Notificaiton", buf, 0x12u);
    }

    v360 = 0;
  }

  else
  {
    if (![v371 hasRttGatewayBE] || objc_msgSend(v371, "rttGatewayBE") || !objc_msgSend(v371, "hasRttGatewayBK") || objc_msgSend(v371, "rttGatewayBK") || !objc_msgSend(v371, "hasRttGatewayVO") || objc_msgSend(v371, "rttGatewayVO") || !objc_msgSend(v371, "hasRttGatewayVI") || objc_msgSend(v371, "rttGatewayVI"))
    {
      v360 = 0;
      goto LABEL_75;
    }

    v28 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 547;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s::%d:Probe results All AC blocked, confirm DPS Notificaiton", buf, 0x12u);
    }

    v360 = 1;
  }

LABEL_75:
  if ([v371 hasRttGatewayBE] && ((objc_msgSend(v371, "rttGatewayBE") == 0) & BYTE4(v376)) != 0 || objc_msgSend(v371, "hasRttGatewayBE") && ((objc_msgSend(v371, "rttGatewayBK") == 0) & v376) != 0 || objc_msgSend(v371, "hasRttGatewayBE") && ((objc_msgSend(v371, "rttGatewayVO") == 0) & v375) != 0 || objc_msgSend(v371, "hasRttGatewayBE") && ((objc_msgSend(v371, "rttGatewayVI") == 0) & BYTE4(v375)) == 1)
  {
    v29 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 556;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}s::%d:Probe results confirm DPS Notificaiton", buf, 0x12u);
    }

    v359 = 1;
  }

  else
  {
    v359 = 0;
  }

  probeResults2 = [v392 probeResults];
  v33 = [probeResults2 count] > 1;

  if (!v33)
  {
    v350 = 0;
    v366 = 0;
    v352 = 0;
    goto LABEL_115;
  }

  probeResults3 = [v392 probeResults];
  v31 = [v392 probeResultAtIndex:{objc_msgSend(probeResults3, "count") - 1}];

  v350 = [v31 hasRttGatewayBE] && objc_msgSend(v31, "rttGatewayBE") && objc_msgSend(v31, "hasRttGatewayBK") && objc_msgSend(v31, "rttGatewayBK") && objc_msgSend(v31, "hasRttGatewayVO") && objc_msgSend(v31, "rttGatewayVO") && objc_msgSend(v31, "hasRttGatewayVI") && objc_msgSend(v31, "rttGatewayVI") != 0;
  if ((![v31 hasRttGatewayBE] || ((objc_msgSend(v31, "rttGatewayBE") != 0) & BYTE4(v376)) == 0) && (!objc_msgSend(v31, "hasRttGatewayBE") || ((objc_msgSend(v31, "rttGatewayBK") != 0) & v376) == 0) && (!objc_msgSend(v31, "hasRttGatewayBE") || ((objc_msgSend(v31, "rttGatewayVO") != 0) & v375) == 0) && (!objc_msgSend(v31, "hasRttGatewayBE") || !objc_msgSend(v31, "rttGatewayVI") || (v375 & 0x100000000) == 0))
  {
    v366 = 0;
    v352 = 0;
    goto LABEL_114;
  }

  v30 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
    v432 = 1024;
    v433 = 575;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s::%d:Last Probe results show recovered DPS", buf, 0x12u);
  }

  v352 = 0;
LABEL_113:

LABEL_114:
  v371 = v31;
LABEL_115:
  dpsEpiloge = [v392 dpsEpiloge];

  if (!dpsEpiloge)
  {
    memset(v354, 0, sizeof(v354));
    v380 = 0;
    LODWORD(v384) = 0;
    LODWORD(v377) = 0;
    LODWORD(v378) = 0;
    LODWORD(v379) = 0;
    v363 = 0;
    v364 = 0;
    v365 = 0;
    goto LABEL_203;
  }

  log[0] = [v392 dpsEpiloge];
  v36 = v385;
  LODWORD(obj) = [log[0] action];
  if ((obj & 2) != 0)
  {
    v37 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 591;
      v38 = "%{public}s::%d:Found Action - DPS Watchdog";
LABEL_124:
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 0x12u);
      goto LABEL_125;
    }

    goto LABEL_125;
  }

  if (([log[0] action]& 4) != 0)
  {
    v37 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 594;
      v38 = "%{public}s::%d:Found Action - Fast DPS Watchdog";
      goto LABEL_124;
    }

LABEL_125:
    LODWORD(v363) = (obj & 2) == 0;

    v36 = v385;
    goto LABEL_126;
  }

  LODWORD(v363) = 0;
LABEL_126:
  LODWORD(v393) = [log[0] action];
  if ((v393 & 8) != 0)
  {
    v39 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 599;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Action - DPS Watchdog but No WD Budget", buf, 0x12u);
    }

    v36 = v385;
  }

  action = [log[0] action];
  if ((action & 0x10) != 0)
  {
    v40 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 604;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Action - Fast DPS Watchdog but No WD Budget", buf, 0x12u);
    }

    v36 = v385;
  }

  if (([log[0] action]& 0x20) != 0)
  {
    v41 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 609;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Action - User Changed", buf, 0x12u);
    }

    v36 = 1;
  }

  if (![log[0] action])
  {
    v42 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 613;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Action - None", buf, 0x12u);
    }
  }

  associationChanges = [log[0] associationChanges];
  v385 = v36;

  if (!associationChanges)
  {
    v380 = 0;
    LODWORD(v384) = 0;
    LODWORD(v377) = 0;
    LODWORD(v378) = 0;
    LODWORD(v379) = 0;
    goto LABEL_188;
  }

  v406 = 0u;
  v407 = 0u;
  v404 = 0u;
  v405 = 0u;
  associationChanges2 = [log[0] associationChanges];
  v45 = [associationChanges2 countByEnumeratingWithState:&v404 objects:v444 count:16];
  if (!v45)
  {
    v380 = 0;
    LODWORD(v384) = 0;
    LODWORD(v377) = 0;
    LODWORD(v378) = 0;
    LODWORD(v379) = 0;
    goto LABEL_187;
  }

  v380 = 0;
  LODWORD(v384) = 0;
  LODWORD(v377) = 0;
  LODWORD(v378) = 0;
  LODWORD(v379) = 0;
  *&v396 = *v405;
  do
  {
    for (j = 0; j != v45; j = j + 1)
    {
      if (*v405 != v396)
      {
        objc_enumerationMutation(associationChanges2);
      }

      v47 = *(*(&v404 + 1) + 8 * j);
      v48 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        associationChanges3 = [log[0] associationChanges];
        v50 = [associationChanges3 indexOfObject:v47];
        associationChanges4 = [log[0] associationChanges];
        v52 = [associationChanges4 count];
        *buf = 136446978;
        v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
        v432 = 1024;
        v433 = 618;
        v434 = 2048;
        *v435 = v50;
        *&v435[8] = 2048;
        *v436 = v52;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Change %lu of %lu", buf, 0x26u);
      }

      newBSSID = [v47 newBSSID];
      v54 = WALogCategoryDefaultHandle();
      v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
      if (newBSSID)
      {
        if (v55)
        {
          *buf = 136446466;
          v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
          v432 = 1024;
          v433 = 620;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Change - newBSSID - after link up we are associated to a different BSSID", buf, 0x12u);
        }

        LODWORD(v384) = 1;
        LODWORD(v379) = 1;
      }

      else if (v55)
      {
        *buf = 136446466;
        v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
        v432 = 1024;
        v433 = 624;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:No change in BSSID", buf, 0x12u);
      }

      if ([v47 changedChannel])
      {
        v56 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
          v432 = 1024;
          v433 = 628;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Change - changedChannel", buf, 0x12u);
        }

        LODWORD(v378) = 1;
      }

      if ([v47 changedMAC])
      {
        v57 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
          v432 = 1024;
          v433 = 633;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Change - changedMAC - meaning user toggled WiFi", buf, 0x12u);
        }

        probeResults4 = [v392 probeResults];
        v59 = [probeResults4 count] > 1;

        if (v59)
        {
          v60 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
            v432 = 1024;
            v433 = 635;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Multiple probe results as well", buf, 0x12u);
          }
        }

        if (v385)
        {
          v385 = 1;
          LODWORD(v384) = 1;
          goto LABEL_178;
        }

        v63 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
          v432 = 1024;
          v433 = 638;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%{public}s::%d:changedMAC but userToggled isn't True?!", buf, 0x12u);
        }

        v385 = 1;
        LODWORD(v384) = 1;
      }

      else
      {
        probeResults5 = [v392 probeResults];
        v62 = [probeResults5 count] == 1;

        if (v62)
        {
          v380 = 1;
          goto LABEL_178;
        }

        v63 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
          v432 = 1024;
          v433 = 646;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Change - changedMAC is false - probably involuntary link down", buf, 0x12u);
        }

        v380 = 1;
      }

LABEL_178:
      if ([v47 changedDNSPrimary])
      {
        v64 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
          v432 = 1024;
          v433 = 652;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found Change - networkDidChange", buf, 0x12u);
        }

        LODWORD(v384) = 1;
        LODWORD(v377) = 1;
      }
    }

    v45 = [associationChanges2 countByEnumeratingWithState:&v404 objects:v444 count:16];
  }

  while (v45);
LABEL_187:

LABEL_188:
  qDpsStats = [log[0] qDpsStats];

  if (qDpsStats)
  {
    qDpsStats2 = [log[0] qDpsStats];
    *&v354[8] = [qDpsStats2 quickDpsResetRecommendation];
    v67 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = @"NO";
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      *buf = 136446722;
      if (*&v354[8])
      {
        v68 = @"YES";
      }

      v432 = 1024;
      v433 = 664;
      v434 = 2112;
      *v435 = v68;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found qDpsStat -- quickDpsResetRecommendation -- %@", buf, 0x1Cu);
    }

    if ([qDpsStats2 screenStateOn])
    {
      v69 = @"ON";
    }

    else
    {
      v69 = @"OFF";
    }

    v365 = [NSString stringWithFormat:v69];

    v70 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 667;
      v434 = 2112;
      *v435 = v365;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found qDpsStat -- screenState -- %@", buf, 0x1Cu);
    }

    v71 = [qDpsStats2 suppressedReasonAsString:{objc_msgSend(qDpsStats2, "suppressedReason")}];
    v364 = [NSString stringWithString:v71];

    v72 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 670;
      v434 = 2112;
      *v435 = v364;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found qDpsStat -- suppressionReason -- %@", buf, 0x1Cu);
    }
  }

  else
  {
    *&v354[8] = 0;
    v364 = 0;
    v365 = 0;
  }

  HIDWORD(v363) = (obj >> 1) & 1;
  *v354 = (action >> 4) & 1;
  *&v354[4] = (v393 >> 3) & 1;
LABEL_203:
  snapshot = [v392 snapshot];

  if (snapshot)
  {
    v74 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 675;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Found - snapshot submessage", buf, 0x12u);
    }
  }

  dpsCounterSamples = [v392 dpsCounterSamples];
  v76 = [dpsCounterSamples count];

  v77 = v76 - 1;
  if (v76 > 5)
  {
    v77 = 5;
  }

  *&v398 = v77;
  v78 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
    v432 = 1024;
    v433 = 687;
    v434 = 2048;
    *v435 = v76;
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Iterating through %lu dpsCounterSamples", buf, 0x1Cu);
  }

  v79 = v76 > 5;

  if (v76 <= 5)
  {
    v355 = 0;
    v356 = 0;
    v357 = 0;
    v358 = 0;
    v97 = 0;
    v98 = 0;
    v372 = 0;
    v373 = 0;
    v374 = 0;
    LODWORD(v395) = 0;
    v367 = 0;
    v99 = v76 == 0;
    v100 = 1;
  }

  else
  {
    v80 = 0;
    v374 = 0;
    *&v396 = 0;
    while (1)
    {
      v81 = [v392 dpsCounterSampleAtIndex:0];
      peerStats = [v81 peerStats];
      v83 = [peerStats ccasCount] > v80;

      if (!v83)
      {
        break;
      }

      v84 = [v392 dpsCounterSampleAtIndex:v398];
      peerStats2 = [v84 peerStats];
      v86 = [peerStats2 ccaAtIndex:v80];
      residentTime = [v86 residentTime];
      v88 = [v392 dpsCounterSampleAtIndex:0];
      peerStats3 = [v88 peerStats];
      v90 = [peerStats3 ccaAtIndex:v80];
      residentTime2 = [v90 residentTime];

      v92 = residentTime - residentTime2;
      if (residentTime - residentTime2 > v396)
      {
        v93 = [v392 dpsCounterSampleAtIndex:0];
        peerStats4 = [v93 peerStats];
        v95 = [peerStats4 ccaAtIndex:v80];
        state = [v95 state];

        v374 = state;
        *&v396 = v92;
      }

      ++v80;
    }

    if (!v374)
    {
      v209 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
      {
        v210 = [v392 dpsCounterSampleAtIndex:0];
        peerStats5 = [v210 peerStats];
        ccasCount = [peerStats5 ccasCount];
        v213 = [v392 dpsCounterSampleAtIndex:0];
        peerStats6 = [v213 peerStats];
        ccas = [peerStats6 ccas];
        v216 = [ccas description];
        *buf = 136446978;
        v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
        v432 = 1024;
        v433 = 703;
        v434 = 2048;
        *v435 = ccasCount;
        *&v435[8] = 2112;
        *v436 = v216;
        _os_log_impl(&_mh_execute_header, v209, OS_LOG_TYPE_ERROR, "%{public}s::%d:Median CCA not found nCCA %lu %@", buf, 0x26u);
      }

      for (LODWORD(v395) = 0; ; LODWORD(v395) = v395 + 1)
      {
        v217 = [v392 dpsCounterSampleAtIndex:0];
        peerStats7 = [v217 peerStats];
        v219 = [peerStats7 ccasCount] > v395;

        if (!v219)
        {
          break;
        }

        v220 = [v392 dpsCounterSampleAtIndex:v398];
        peerStats8 = [v220 peerStats];
        v222 = [peerStats8 ccaAtIndex:v395];
        residentTime3 = [v222 residentTime];
        v224 = [v392 dpsCounterSampleAtIndex:0];
        peerStats9 = [v224 peerStats];
        v226 = [peerStats9 ccaAtIndex:v395];
        residentTime4 = [v226 residentTime];

        if (v398)
        {
          v228 = 0;
          obj = (residentTime3 - residentTime4);
          v229 = 1;
          do
          {
            v230 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
            {
              log[0] = v230;
              v231 = [v392 dpsCounterSampleAtIndex:v228];
              peerStats10 = [v231 peerStats];
              v233 = [peerStats10 ccaAtIndex:v395];
              residentTime5 = [v233 residentTime];
              v235 = [v392 dpsCounterSampleAtIndex:v228];
              peerStats11 = [v235 peerStats];
              v237 = [peerStats11 ccaAtIndex:v395];
              *buf = 136448002;
              v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
              v432 = 1024;
              v433 = 707;
              v434 = 1024;
              *v435 = v395;
              *&v435[4] = 1024;
              *&v435[6] = v229 - 1;
              *v436 = 2048;
              *&v436[2] = v396;
              *&v436[10] = 2048;
              *&v436[12] = obj;
              *v437 = 2048;
              *&v437[2] = residentTime5;
              *v438 = 2112;
              *&v438[2] = v237;
              v230 = log[0];
              _os_log_impl(&_mh_execute_header, log[0], OS_LOG_TYPE_DEFAULT, "%{public}s::%d:CCA index %d itwo %d maxTimeInState %llu deltaTimeInState %llu time %llu peerStatsAtIndex %@ ", buf, 0x46u);
            }

            v228 = v229;
            v238 = v398 > v229++;
          }

          while (v238);
        }
      }
    }

    v101 = 0;
    v373 = 0;
    *&v396 = 0;
    while (1)
    {
      v102 = [v392 dpsCounterSampleAtIndex:0];
      peerStats12 = [v102 peerStats];
      v104 = [peerStats12 rssisCount] > v101;

      if (!v104)
      {
        break;
      }

      v105 = [v392 dpsCounterSampleAtIndex:v398];
      peerStats13 = [v105 peerStats];
      v107 = [peerStats13 rssiAtIndex:v101];
      residentTime6 = [v107 residentTime];
      v109 = [v392 dpsCounterSampleAtIndex:0];
      peerStats14 = [v109 peerStats];
      v111 = [peerStats14 rssiAtIndex:v101];
      residentTime7 = [v111 residentTime];

      v113 = residentTime6 - residentTime7;
      if (residentTime6 - residentTime7 > v396)
      {
        v114 = [v392 dpsCounterSampleAtIndex:0];
        peerStats15 = [v114 peerStats];
        v116 = [peerStats15 rssiAtIndex:v101];
        state2 = [v116 state];

        v373 = state2;
        *&v396 = v113;
      }

      ++v101;
    }

    if (!v373)
    {
      v239 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
      {
        v240 = [v392 dpsCounterSampleAtIndex:0];
        peerStats16 = [v240 peerStats];
        rssisCount = [peerStats16 rssisCount];
        v243 = [v392 dpsCounterSampleAtIndex:0];
        peerStats17 = [v243 peerStats];
        rssis = [peerStats17 rssis];
        v246 = [rssis description];
        *buf = 136446978;
        v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
        v432 = 1024;
        v433 = 725;
        v434 = 2048;
        *v435 = rssisCount;
        *&v435[8] = 2112;
        *v436 = v246;
        _os_log_impl(&_mh_execute_header, v239, OS_LOG_TYPE_ERROR, "%{public}s::%d:Median RSSI not found nRSSI %lu %@", buf, 0x26u);
      }

      for (LODWORD(v395) = 0; ; LODWORD(v395) = v395 + 1)
      {
        v247 = [v392 dpsCounterSampleAtIndex:0];
        peerStats18 = [v247 peerStats];
        v249 = [peerStats18 rssisCount] > v395;

        if (!v249)
        {
          break;
        }

        v250 = [v392 dpsCounterSampleAtIndex:v398];
        peerStats19 = [v250 peerStats];
        v252 = [peerStats19 rssiAtIndex:v395];
        residentTime8 = [v252 residentTime];
        v254 = [v392 dpsCounterSampleAtIndex:0];
        peerStats20 = [v254 peerStats];
        v256 = [peerStats20 rssiAtIndex:v395];
        residentTime9 = [v256 residentTime];

        if (v398)
        {
          v258 = 0;
          obj = (residentTime8 - residentTime9);
          v259 = 1;
          do
          {
            v260 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
            {
              log[0] = v260;
              v261 = [v392 dpsCounterSampleAtIndex:v258];
              peerStats21 = [v261 peerStats];
              v263 = [peerStats21 rssiAtIndex:v395];
              residentTime10 = [v263 residentTime];
              v265 = [v392 dpsCounterSampleAtIndex:v258];
              peerStats22 = [v265 peerStats];
              v267 = [peerStats22 rssiAtIndex:v395];
              *buf = 136448002;
              v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
              v432 = 1024;
              v433 = 729;
              v434 = 1024;
              *v435 = v395;
              *&v435[4] = 1024;
              *&v435[6] = v259 - 1;
              *v436 = 2048;
              *&v436[2] = v396;
              *&v436[10] = 2048;
              *&v436[12] = obj;
              *v437 = 2048;
              *&v437[2] = residentTime10;
              *v438 = 2112;
              *&v438[2] = v267;
              v260 = log[0];
              _os_log_impl(&_mh_execute_header, log[0], OS_LOG_TYPE_DEFAULT, "%{public}s::%d:RSSI index %d itwo %d maxTimeInState %llu deltaTimeInState %llu time %llu peerStatsAtIndex %@ ", buf, 0x46u);
            }

            v258 = v259;
            v238 = v398 > v259++;
          }

          while (v238);
        }
      }
    }

    v118 = 0;
    v372 = 0;
    *&v396 = 0;
    while (1)
    {
      v119 = [v392 dpsCounterSampleAtIndex:0];
      peerStats23 = [v119 peerStats];
      v121 = [peerStats23 snrsCount] > v118;

      if (!v121)
      {
        break;
      }

      v122 = [v392 dpsCounterSampleAtIndex:v398];
      peerStats24 = [v122 peerStats];
      v124 = [peerStats24 snrAtIndex:v118];
      residentTime11 = [v124 residentTime];
      v126 = [v392 dpsCounterSampleAtIndex:0];
      peerStats25 = [v126 peerStats];
      v128 = [peerStats25 snrAtIndex:v118];
      residentTime12 = [v128 residentTime];

      v130 = residentTime11 - residentTime12;
      if (residentTime11 - residentTime12 > v396)
      {
        v131 = [v392 dpsCounterSampleAtIndex:0];
        peerStats26 = [v131 peerStats];
        v133 = [peerStats26 snrAtIndex:v118];
        state3 = [v133 state];

        v372 = state3;
        *&v396 = v130;
      }

      ++v118;
    }

    if (!v372)
    {
      v268 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v268, OS_LOG_TYPE_ERROR))
      {
        v269 = [v392 dpsCounterSampleAtIndex:0];
        peerStats27 = [v269 peerStats];
        snrsCount = [peerStats27 snrsCount];
        v272 = [v392 dpsCounterSampleAtIndex:0];
        peerStats28 = [v272 peerStats];
        snrs = [peerStats28 snrs];
        v275 = [snrs description];
        *buf = 136446978;
        v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
        v432 = 1024;
        v433 = 747;
        v434 = 2048;
        *v435 = snrsCount;
        *&v435[8] = 2112;
        *v436 = v275;
        _os_log_impl(&_mh_execute_header, v268, OS_LOG_TYPE_ERROR, "%{public}s::%d:Median SNR not found nSNR %lu %@", buf, 0x26u);
      }

      for (LODWORD(v395) = 0; ; LODWORD(v395) = v395 + 1)
      {
        v276 = [v392 dpsCounterSampleAtIndex:0];
        peerStats29 = [v276 peerStats];
        v278 = [peerStats29 snrsCount] > v395;

        if (!v278)
        {
          break;
        }

        v279 = [v392 dpsCounterSampleAtIndex:v398];
        peerStats30 = [v279 peerStats];
        v281 = [peerStats30 snrAtIndex:v395];
        residentTime13 = [v281 residentTime];
        v283 = [v392 dpsCounterSampleAtIndex:0];
        peerStats31 = [v283 peerStats];
        v285 = [peerStats31 snrAtIndex:v395];
        residentTime14 = [v285 residentTime];

        if (v398)
        {
          v287 = 0;
          obj = (residentTime13 - residentTime14);
          v288 = 1;
          do
          {
            v289 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v289, OS_LOG_TYPE_DEFAULT))
            {
              log[0] = v289;
              v290 = [v392 dpsCounterSampleAtIndex:v287];
              peerStats32 = [v290 peerStats];
              v292 = [peerStats32 snrAtIndex:v395];
              residentTime15 = [v292 residentTime];
              v294 = [v392 dpsCounterSampleAtIndex:v287];
              peerStats33 = [v294 peerStats];
              v296 = [peerStats33 snrAtIndex:v395];
              *buf = 136448002;
              v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
              v432 = 1024;
              v433 = 751;
              v434 = 1024;
              *v435 = v395;
              *&v435[4] = 1024;
              *&v435[6] = v288 - 1;
              *v436 = 2048;
              *&v436[2] = v396;
              *&v436[10] = 2048;
              *&v436[12] = obj;
              *v437 = 2048;
              *&v437[2] = residentTime15;
              *v438 = 2112;
              *&v438[2] = v296;
              v289 = log[0];
              _os_log_impl(&_mh_execute_header, log[0], OS_LOG_TYPE_DEFAULT, "%{public}s::%d:SNR index %d itwo %d maxTimeInState %llu deltaTimeInState %llu time %llu peerStatsAtIndex %@ ", buf, 0x46u);
            }

            v287 = v288;
            v238 = v398 > v288++;
          }

          while (v238);
        }
      }
    }

    v135 = [v392 dpsCounterSampleAtIndex:v398];
    controllerStats = [v135 controllerStats];
    aggregateMetrics = [controllerStats aggregateMetrics];
    kRxCRCGlitch = [aggregateMetrics kRxCRCGlitch];
    v139 = [v392 dpsCounterSampleAtIndex:0];
    controllerStats2 = [v139 controllerStats];
    aggregateMetrics2 = [controllerStats2 aggregateMetrics];
    kRxCRCGlitch2 = [aggregateMetrics2 kRxCRCGlitch];

    v358 = (kRxCRCGlitch - kRxCRCGlitch2) > 0xE15;
    v143 = [v392 dpsCounterSampleAtIndex:v398];
    controllerStats3 = [v143 controllerStats];
    scanActivity = [controllerStats3 scanActivity];
    LODWORD(kRxCRCGlitch) = [scanActivity roamCount];
    v146 = [v392 dpsCounterSampleAtIndex:0];
    controllerStats4 = [v146 controllerStats];
    scanActivity2 = [controllerStats4 scanActivity];
    LODWORD(kRxCRCGlitch2) = [scanActivity2 roamCount];

    v357 = kRxCRCGlitch != kRxCRCGlitch2;
    v149 = [v392 dpsCounterSampleAtIndex:v398];
    controllerStats5 = [v149 controllerStats];
    btCoex = [controllerStats5 btCoex];
    LODWORD(kRxCRCGlitch) = [btCoex duration];
    v152 = [v392 dpsCounterSampleAtIndex:0];
    controllerStats6 = [v152 controllerStats];
    btCoex2 = [controllerStats6 btCoex];
    LODWORD(kRxCRCGlitch2) = [btCoex2 duration];

    v356 = kRxCRCGlitch != kRxCRCGlitch2;
    v155 = [v392 dpsCounterSampleAtIndex:v398];
    controllerStats7 = [v155 controllerStats];
    LODWORD(log[0]) = [controllerStats7 channelsVisited0];
    v157 = [v392 dpsCounterSampleAtIndex:v398];
    controllerStats8 = [v157 controllerStats];
    LODWORD(v398) = [controllerStats8 channelsVisited1];
    v159 = [v392 dpsCounterSampleAtIndex:0];
    controllerStats9 = [v159 controllerStats];
    channelsVisited0 = [controllerStats9 channelsVisited0];
    v162 = [v392 dpsCounterSampleAtIndex:0];
    controllerStats10 = [v162 controllerStats];
    LODWORD(controllerStats6) = [controllerStats10 channelsVisited1];

    v164 = 0;
    v382 = 0;
    v383 = 0;
    v388 = 0;
    v389 = 0;
    v386 = 0;
    v387 = 0;
    LODWORD(v395) = 0;
    v355 = v398 + LODWORD(log[0]) != controllerStats6 + channelsVisited0;
LABEL_232:
    v165 = [v392 dpsCounterSampleAtIndex:0];
    peerStats34 = [v165 peerStats];
    *&v398 = v164;
    v167 = [peerStats34 acCompletionsCount] > v164;

    if (v167)
    {
      v168 = [v392 dpsCounterSampleAtIndex:0];
      peerStats35 = [v168 peerStats];
      v170 = [peerStats35 acCompletionsAtIndex:v398];
      action = [v170 success];

      v171 = [v392 dpsCounterSampleAtIndex:0];
      timestamp = [v171 timestamp];

      v402 = 0u;
      v403 = 0u;
      v400 = 0u;
      v401 = 0u;
      dpsCounterSamples2 = [v392 dpsCounterSamples];
      v173 = [dpsCounterSamples2 countByEnumeratingWithState:&v400 objects:v443 count:16];
      if (!v173)
      {
        goto LABEL_318;
      }

      *&v396 = *v401;
      obj = dpsCounterSamples2;
      while (1)
      {
        log[0] = v173;
        v174 = 0;
        do
        {
          if (*v401 != v396)
          {
            objc_enumerationMutation(obj);
          }

          v175 = *(*(&v400 + 1) + 8 * v174);
          peerStats36 = [v175 peerStats];
          v177 = [peerStats36 acCompletionsCount] > v398;

          if (!v177)
          {
            v196 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
            {
              v197 = [v392 dpsCounterSampleAtIndex:0];
              peerStats37 = [v197 peerStats];
              v199 = [peerStats37 acCompletionsAtIndex:v398];
              v200 = [v199 ac];
              if (v200 >= 0xC)
              {
                v200 = [NSString stringWithFormat:@"(unknown: %i)", v200];
              }

              else
              {
                v200 = off_1000EE9B0[v200];
              }

              v202 = v200;
              *buf = 136446722;
              v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
              v432 = 1024;
              v433 = 789;
              v434 = 2112;
              *v435 = v202;
              _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@ doesn't exist at this counterSample history", buf, 0x1Cu);
            }

            goto LABEL_249;
          }

          peerStats38 = [v175 peerStats];
          v179 = [peerStats38 acCompletionsAtIndex:v398];
          qeuedPackets = [v179 qeuedPackets];

          peerStats39 = [v175 peerStats];
          v182 = [peerStats39 acCompletionsAtIndex:v398];
          success = [v182 success];

          timestamp2 = [v175 timestamp];
          peerStats40 = [v175 peerStats];
          v186 = [peerStats40 acCompletionsAtIndex:v398];
          v187 = [v186 ac];

          v188 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
          {
            peerStats41 = [v175 peerStats];
            v190 = [peerStats41 acCompletionsAtIndex:v398];
            v191 = [v190 acAsString:v187];
            *buf = 136447234;
            v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
            v432 = 1024;
            v433 = 799;
            v434 = 2112;
            *v435 = v191;
            *&v435[8] = 1024;
            *v436 = success;
            *&v436[4] = 1024;
            *&v436[6] = qeuedPackets;
            _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: %@ TxSuccess %d qp %d", buf, 0x28u);
          }

          if ((v395 & 1) == 0)
          {
            peerStats42 = [v175 peerStats];
            v193 = [peerStats42 acCompletionsAtIndex:v398];
            v194 = [v193 acAsString:v187];
            v195 = [v194 length] == 0;

            if (!v195)
            {
              LODWORD(v395) = 0;
              goto LABEL_256;
            }

            v203 = WALogCategoryDefaultHandle();
            if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
              v432 = 1024;
              v433 = 802;
              _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_ERROR, "%{public}s::%d: Caught bad data in perAC counterSample - setting missingValidCounterSample", buf, 0x12u);
            }
          }

          LODWORD(v395) = 1;
LABEL_256:
          if (v187 > 3)
          {
            if (v187 == 4)
            {
              if (!((success <= action) | BYTE4(v387) & 1))
              {
                v207 = WALogCategoryDefaultHandle();
                if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446722;
                  v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                  v432 = 1024;
                  v433 = 834;
                  v434 = 2048;
                  *v435 = timestamp2 - timestamp;
                  _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC VO Successful Tx status after %llu ms", buf, 0x1Cu);
                }

                HIDWORD(v387) = 1;
              }

              if (!((qeuedPackets == 0) | v389 & 1))
              {
                v196 = WALogCategoryDefaultHandle();
                if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446722;
                  v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                  v432 = 1024;
                  v433 = 838;
                  v434 = 2048;
                  *v435 = timestamp2 - timestamp;
                  _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC VO Tx has Queued Data at %llu ms", buf, 0x1Cu);
                }

LABEL_304:
                LOBYTE(v389) = 1;
LABEL_249:

                goto LABEL_250;
              }

              if (qeuedPackets == 0 && (v389 & 1) != 0)
              {
                if ((v383 & 1) == 0)
                {
                  v196 = WALogCategoryDefaultHandle();
                  if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446722;
                    v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                    v432 = 1024;
                    v433 = 842;
                    v434 = 2048;
                    *v435 = timestamp2 - timestamp;
                    _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC VO Tx Queue has emptied queue at %llu ms", buf, 0x1Cu);
                  }

                  LOBYTE(v383) = 1;
                  goto LABEL_304;
                }

                LOBYTE(v383) = 1;
                LOBYTE(v389) = 1;
              }
            }

            else if (v187 == 5)
            {
              if (!((success <= action) | v386 & 1))
              {
                v205 = WALogCategoryDefaultHandle();
                if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446722;
                  v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                  v432 = 1024;
                  v433 = 847;
                  v434 = 2048;
                  *v435 = timestamp2 - timestamp;
                  _os_log_impl(&_mh_execute_header, v205, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC VI Successful Tx status after %llu ms", buf, 0x1Cu);
                }

                LOBYTE(v386) = 1;
              }

              if (!((qeuedPackets == 0) | BYTE4(v389) & 1))
              {
                v196 = WALogCategoryDefaultHandle();
                if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446722;
                  v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                  v432 = 1024;
                  v433 = 851;
                  v434 = 2048;
                  *v435 = timestamp2 - timestamp;
                  _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC VO Tx has Queued Data at %llu ms", buf, 0x1Cu);
                }

                goto LABEL_298;
              }

              if (qeuedPackets == 0 && (v389 & 0x100000000) != 0)
              {
                if ((v383 & 0x100000000) == 0)
                {
                  v196 = WALogCategoryDefaultHandle();
                  if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446722;
                    v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                    v432 = 1024;
                    v433 = 855;
                    v434 = 2048;
                    *v435 = timestamp2 - timestamp;
                    _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC VI Tx Queue has emptied queue at %llu ms", buf, 0x1Cu);
                  }

                  BYTE4(v383) = 1;
LABEL_298:
                  BYTE4(v389) = 1;
                  goto LABEL_249;
                }

                BYTE4(v383) = 1;
                BYTE4(v389) = 1;
              }
            }
          }

          else if (v187 == 2)
          {
            if (!((success <= action) | v387 & 1))
            {
              v206 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446722;
                v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                v432 = 1024;
                v433 = 821;
                v434 = 2048;
                *v435 = timestamp2 - timestamp;
                _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC BK Successful Tx status after %llu ms", buf, 0x1Cu);
              }

              LODWORD(v387) = 1;
            }

            if (!((qeuedPackets == 0) | BYTE4(v388) & 1))
            {
              v196 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446722;
                v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                v432 = 1024;
                v433 = 825;
                v434 = 2048;
                *v435 = timestamp2 - timestamp;
                _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC BK Tx has Queued Data at %llu ms", buf, 0x1Cu);
              }

              goto LABEL_301;
            }

            if (qeuedPackets == 0 && (v388 & 0x100000000) != 0)
            {
              if ((v382 & 0x100000000) == 0)
              {
                v196 = WALogCategoryDefaultHandle();
                if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446722;
                  v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                  v432 = 1024;
                  v433 = 829;
                  v434 = 2048;
                  *v435 = timestamp2 - timestamp;
                  _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC BK Tx Queue has emptied queue at %llu ms", buf, 0x1Cu);
                }

                BYTE4(v382) = 1;
LABEL_301:
                BYTE4(v388) = 1;
                goto LABEL_249;
              }

              BYTE4(v382) = 1;
              BYTE4(v388) = 1;
            }
          }

          else if (v187 == 3)
          {
            if (!((success <= action) | BYTE4(v386) & 1))
            {
              v204 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446722;
                v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                v432 = 1024;
                v433 = 808;
                v434 = 2048;
                *v435 = timestamp2 - timestamp;
                _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC BE Successful Tx status after %llu ms", buf, 0x1Cu);
              }

              HIDWORD(v386) = 1;
            }

            if (!((qeuedPackets == 0) | v388 & 1))
            {
              v196 = WALogCategoryDefaultHandle();
              if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446722;
                v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                v432 = 1024;
                v433 = 812;
                v434 = 2048;
                *v435 = timestamp2 - timestamp;
                _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC BE Tx has Queued Data at %llu ms", buf, 0x1Cu);
              }

              goto LABEL_295;
            }

            if (qeuedPackets == 0 && (v388 & 1) != 0)
            {
              if ((v382 & 1) == 0)
              {
                v196 = WALogCategoryDefaultHandle();
                if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446722;
                  v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
                  v432 = 1024;
                  v433 = 816;
                  v434 = 2048;
                  *v435 = timestamp2 - timestamp;
                  _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:AC BE Tx Queue has emptied queue at %llu ms", buf, 0x1Cu);
                }

                LOBYTE(v382) = 1;
LABEL_295:
                LOBYTE(v388) = 1;
                goto LABEL_249;
              }

              LOBYTE(v382) = 1;
              LOBYTE(v388) = 1;
            }
          }

LABEL_250:
          v174 = (v174 + 1);
        }

        while (log[0] != v174);
        dpsCounterSamples2 = obj;
        v173 = [obj countByEnumeratingWithState:&v400 objects:v443 count:16];
        if (!v173)
        {
LABEL_318:

          v164 = v398 + 1;
          goto LABEL_232;
        }
      }
    }

    if (((BYTE4(v376) ^ 1 | (BYTE4(v386) | v388)) & 1) == 0)
    {
      v208 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
        v432 = 1024;
        v433 = 863;
        _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS on BE has insufficient usage to determine recovery state", buf, 0x12u);
      }
    }

    if (v387 & 1 | ((v376 & 1) == 0) | BYTE4(v388) & 1)
    {
      v79 = (BYTE4(v376) ^ 1 | BYTE4(v386) | v388) ^ 1;
    }

    else
    {
      v297 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v297, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
        v432 = 1024;
        v433 = 867;
        _os_log_impl(&_mh_execute_header, v297, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS on BK has insufficient usage to determine recovery state", buf, 0x12u);
      }

      v79 = 1;
    }

    if (!(BYTE4(v387) & 1 | ((v375 & 1) == 0) | v389 & 1))
    {
      v298 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
        v432 = 1024;
        v433 = 871;
        _os_log_impl(&_mh_execute_header, v298, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS on VO has insufficient usage to determine recovery state", buf, 0x12u);
      }

      v79 = 1;
    }

    v299 = BYTE4(v375);
    if (v386 & 1 | ((v375 & 0x100000000) == 0) | BYTE4(v389) & 1)
    {
      v300 = BYTE4(v375) & v386;
    }

    else
    {
      v301 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v301, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
        v432 = 1024;
        v433 = 875;
        _os_log_impl(&_mh_execute_header, v301, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS on VI has insufficient usage to determine recovery state", buf, 0x12u);
      }

      v300 = 0;
      v79 = 1;
      v299 = BYTE4(v375);
    }

    v302 = BYTE4(v376) & 1;
    v303 = v376 & 1;
    v304 = v375 & 1;
    v305 = (v303 & v387) + (v304 & HIDWORD(v387)) + (v302 & HIDWORD(v386)) + (v300 & 1);
    if (v304 + (v299 & 1) + v303 + v302 == v305)
    {
      v306 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
        v432 = 1024;
        v433 = 884;
        _os_log_impl(&_mh_execute_header, v306, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS Full Recovery on all stalled ACs", buf, 0x12u);
      }

      v98 = 0;
      v100 = 0;
      v99 = 0;
      v97 = 1;
    }

    else if (v305)
    {
      v307 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v307, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
        v432 = 1024;
        v433 = 888;
        _os_log_impl(&_mh_execute_header, v307, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS Partially Recovered on stalled ACs", buf, 0x12u);
      }

      v97 = 0;
      v100 = 0;
      v99 = 0;
      v98 = 1;
    }

    else
    {
      v97 = 0;
      v98 = 0;
      v100 = 0;
      v99 = 0;
    }
  }

  if (v361)
  {
    v308 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136447746;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 904;
      v434 = 1024;
      *v435 = problemAC;
      *&v435[4] = 1024;
      *&v435[6] = BYTE4(v376) & 1;
      *v436 = 1024;
      *&v436[2] = v376 & 1;
      *&v436[6] = 1024;
      *&v436[8] = v375 & 1;
      *&v436[12] = 1024;
      *&v436[14] = BYTE4(v375) & 1;
      _os_log_impl(&_mh_execute_header, v308, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS reported on AC bitfeild %x and later on BE %d BK %d VO %d VI %d", buf, 0x30u);
    }
  }

  v309 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v309, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448514;
    v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
    v432 = 1024;
    v433 = 908;
    v434 = 2048;
    *v435 = 6;
    *&v435[8] = 2112;
    *v436 = v374;
    *&v436[8] = 2112;
    *&v436[10] = v373;
    *&v436[18] = 2112;
    *v437 = v372;
    *&v437[8] = 1024;
    *v438 = v358;
    *&v438[4] = 1024;
    *&v438[6] = v357;
    v439 = 1024;
    v440 = v356;
    v441 = 1024;
    v442 = v355;
    _os_log_impl(&_mh_execute_header, v309, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:DPS %llu second medianCCA %@, medianRSSI %@ medianSNR %@: highCRS %d roamScan %d btActive %d channelChanges %d", buf, 0x52u);
  }

  if (v374)
  {
    v310 = v373 == 0;
  }

  else
  {
    v310 = 1;
  }

  v312 = v310 || v372 == 0;
  v313 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v313, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
    v432 = 1024;
    v433 = 933;
    v434 = 1024;
    *v435 = v360;
    *&v435[4] = 1024;
    *&v435[6] = v359;
    _os_log_impl(&_mh_execute_header, v313, OS_LOG_TYPE_ERROR, "%{public}s::%d:didFirstProbeShowAllACGatewayBlocked %d didFirstProbeConfirmDPS %d", buf, 0x1Eu);
  }

  v314 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
  {
    *buf = 136448258;
    v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
    v432 = 1024;
    v433 = 935;
    v434 = 1024;
    *v435 = HIDWORD(v363);
    *&v435[4] = 1024;
    *&v435[6] = v385 & 1;
    *v436 = 1024;
    *&v436[2] = v363;
    *&v436[6] = 1024;
    *&v436[8] = v381 & 1;
    *&v436[12] = 1024;
    *&v436[14] = *&v354[4];
    *&v436[18] = 1024;
    *v437 = *v354;
    *&v437[4] = 1024;
    *&v437[6] = v380 & 1;
    _os_log_impl(&_mh_execute_header, v314, OS_LOG_TYPE_ERROR, "%{public}s::%d:isDPSReset %d userToggled %d isFastDPSReset %d userDisconnected %d issDSPWDSpent %d isfDSPWDSpent %d involuntaryToggled %d", buf, 0x3Cu);
  }

  if ((((v312 | v395) ^ 1) & v367 & 1) == 0)
  {
    v319 = [NSString stringWithFormat:@"Incomplete DPS Report"];
    v320 = v423[5];
    v423[5] = v319;

    v321 = [NSString stringWithFormat:@"missingDSPNotification %d, missingProbe %d missingEnoughCounters %d missingAllCounters %d missingPhyStates %d invalidCounterReading %d", v353, v352, v100, v99, v312, v395 & 1];
    v322 = v417[5];
    v417[5] = v321;

    v428 = NSLocalizedFailureReasonErrorKey;
    v429 = @"WAErrorCodeIncompleteSampleData";
    v317 = [NSDictionary dictionaryWithObjects:&v429 forKeys:&v428 count:1];
    v323 = [NSError errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9019 userInfo:v317];
    goto LABEL_457;
  }

  v315 = @"All Probe Success";
  if (v359)
  {
    v315 = @"Confirmed";
  }

  if (v360)
  {
    v316 = @"Confirmed All AC";
  }

  else
  {
    v316 = v315;
  }

  v317 = [NSString stringWithFormat:v316];
  if (!(v385 & 1 | ((v363 & 0x100000000) == 0)))
  {
    v324 = @"sDPS";
    goto LABEL_418;
  }

  if (!(v385 & 1 | ((v363 & 1) == 0)))
  {
    v324 = @"fDPS";
    goto LABEL_418;
  }

  if (!(v381 & 1 | ((v385 & 1) == 0)))
  {
    if (HIDWORD(v363))
    {
      v324 = @"UserToggled + sDPS";
    }

    else
    {
      v324 = @"UserToggled + fDPS";
    }

    if (((BYTE4(v363) | v363) & 1) == 0)
    {
      if ((*v354 | *&v354[4] ^ 1) == 1)
      {
        if ((*&v354[4] | *v354 ^ 1) == 1)
        {
          if (*v354)
          {
            v324 = @"UserToggled + No WD Budget";
          }

          else
          {
            v324 = @"UserToggled";
          }
        }

        else
        {
          v324 = @"UserToggled + fDPSNoBudget";
        }
      }

      else
      {
        v324 = @"UserToggled + sDPSNoBudget";
      }
    }

LABEL_418:
    v325 = [NSString stringWithFormat:v324];
    if (v381)
    {
      goto LABEL_419;
    }

    goto LABEL_440;
  }

  if ((v381 & 1) == 0)
  {
    if (v380)
    {
      v325 = [NSString stringWithFormat:@"Involuntary"];
      goto LABEL_441;
    }

    v327 = @"No Action";
    if (*v354)
    {
      v327 = @"fDPSNoBudget";
    }

    v328 = @"No WD Budget";
    if (!*v354)
    {
      v328 = @"sDPSNoBudget";
    }

    if (*&v354[4])
    {
      v329 = v328;
    }

    else
    {
      v329 = v327;
    }

    v325 = [NSString stringWithFormat:v329];
LABEL_440:
    if (((HIDWORD(v363) | v363 | v385 | v380) & 1) == 0)
    {
      if (v98)
      {
        v331 = @"Unstuck";
      }

      else
      {
        v331 = @"Unsure";
      }

LABEL_449:
      v326 = [NSString stringWithFormat:v331];
      goto LABEL_450;
    }

LABEL_441:
    v330 = @"Still Stuck";
    if (v79)
    {
      v330 = @"Unsure";
    }

    if ((v350 || v366) | v97 | v98)
    {
      v331 = @"Unstuck";
    }

    else
    {
      v331 = v330;
    }

    goto LABEL_449;
  }

  if (HIDWORD(v363))
  {
    v318 = @"UserDisconnect + sDPS";
  }

  else
  {
    v318 = @"UserDisconnect + fDPS";
  }

  if (((BYTE4(v363) | v363) & 1) == 0)
  {
    if ((*v354 | *&v354[4] ^ 1) == 1)
    {
      if ((*&v354[4] | *v354 ^ 1) == 1)
      {
        if (*v354)
        {
          v318 = @"UserDisconnect + No WD Budget";
        }

        else
        {
          v318 = @"UserDisconnect";
        }
      }

      else
      {
        v318 = @"UserDisconnect + fDPSNoBudget";
      }
    }

    else
    {
      v318 = @"UserDisconnect + sDPSNoBudget";
    }
  }

  v325 = [NSString stringWithFormat:v318];
LABEL_419:
  v326 = [NSString stringWithFormat:@"Disconnected"];
LABEL_450:
  v332 = v326;
  if ((v379 | v378 | v377 | v384))
  {
    [NSString stringWithFormat:@"%@ -  %@ - %@: change bssid %d channel %d network %d link %d", v317, v325, v326, v379 & 1, v378 & 1, v377 & 1, v384 & 1];
  }

  else
  {
    [NSString stringWithFormat:@"%@ - %@ - %@", v317, v325, v326];
  }
  v333 = ;
  v334 = v423[5];
  v423[5] = v333;

  if (*&v354[8])
  {
    [NSString stringWithFormat:@"medianCCA %@, medianRSSI %@ medianSNR %@ highCRS %d roamScan %d btActive %d channelChanges %d screenState %@", v374, v373, v372, v358, v357, v356, v355, v365];
  }

  else
  {
    [NSString stringWithFormat:@"medianCCA %@, medianRSSI %@ medianSNR %@ highCRS %d roamScan %d btActive %d channelChanges %d screenState %@ quickDpsSuppressedReason %@", v374, v373, v372, v358, v357, v356, v355, v365, v364];
  }
  v335 = ;
  v336 = v417[5];
  v417[5] = v335;

  v323 = 0;
LABEL_457:

  v337 = [v423[5] stringByReplacingOccurrencesOfString:@"%" withString:&stru_1000F04E0];
  v338 = [v417[5] stringByReplacingOccurrencesOfString:@"%" withString:&stru_1000F04E0];
  v339 = [(SDRDiagnosticReporter *)selfCopy->_ABCReporter signatureWithDomain:@"WiFi" type:@"WiFi DatapathStall" subType:v337 subtypeContext:v338 detectedProcess:@"wifianalyticsd" triggerThresholdValues:0];
  diagnosticMessagePayload = [(WADatapathDiagnosticsMessageSubmitter *)selfCopy diagnosticMessagePayload];
  v341 = [NSArray alloc];
  dictionaryRepresentation = [v392 dictionaryRepresentation];
  v343 = [v341 initWithObjects:{dictionaryRepresentation, 0}];

  ABCReporter = selfCopy->_ABCReporter;
  v399[0] = _NSConcreteStackBlock;
  v399[1] = 3221225472;
  v399[2] = sub_100098630;
  v399[3] = &unk_1000EE978;
  v399[4] = &v422;
  v399[5] = &v416;
  [(SDRDiagnosticReporter *)ABCReporter snapshotWithSignature:v339 duration:v343 events:diagnosticMessagePayload payload:0 actions:v399 reply:10.0];

LABEL_458:
  _Block_object_dispose(&v416, 8);

  _Block_object_dispose(&v422, 8);
  objc_autoreleasePoolPop(context);
  if (v370)
  {
    v345 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v345, OS_LOG_TYPE_DEFAULT))
    {
      v346 = [messageCopy key];
      *buf = 136446722;
      v431 = "[WADatapathDiagnosticsMessageSubmitter submitDPSRMessage:]";
      v432 = 1024;
      v433 = 1052;
      v434 = 2112;
      *v435 = v346;
      _os_log_impl(&_mh_execute_header, v345, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Submit complete: %@", buf, 0x1Cu);
    }
  }

  v347 = v323;

  return v323;
}

@end