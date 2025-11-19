@interface NRRTCPairingReporter
+ (id)sharedInstance;
+ (void)submitRTCPairingMetricWithMetricID:(id)a3 withCompletion:(id)a4;
- (NRRTCPairingReporter)init;
- (id)lastControllerPushed:(id)a3;
- (void)assembleAndSubmitPairingMetricWithMetricID:(id)a3 withCompletion:(id)a4;
@end

@implementation NRRTCPairingReporter

- (NRRTCPairingReporter)init
{
  v7.receiver = self;
  v7.super_class = NRRTCPairingReporter;
  v2 = [(NRRTCPairingReporter *)&v7 init];
  v3 = v2;
  if (v2 && !v2->_queue)
  {
    v4 = dispatch_queue_create("com.apple.nanoregistry.rtcpairingreport", 0);
    queue = v3->_queue;
    v3->_queue = v4;
  }

  return v3;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C1008;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B3A48 != -1)
  {
    dispatch_once(&qword_1001B3A48, block);
  }

  v2 = qword_1001B3A40;

  return v2;
}

+ (void)submitRTCPairingMetricWithMetricID:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NRRTCPairingReporter sharedInstance];
  [v7 assembleAndSubmitPairingMetricWithMetricID:v6 withCompletion:v5];
}

- (void)assembleAndSubmitPairingMetricWithMetricID:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_pairing_reporter_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v10 = nr_pairing_reporter_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001031C0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = BRGetCurrentMetricIDFromMetricDir();
  v19 = v18 == 0;

  if (v19)
  {
    v33 = nr_pairing_reporter_log();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

    if (v34)
    {
      v35 = nr_pairing_reporter_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "No pairing metric in metric dir, will not attempt to submit anything to RTC", buf, 2u);
      }
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    *buf = 0;
    v44 = buf;
    v45 = 0x3032000000;
    v46 = sub_1000C1B78;
    v47 = sub_1000C1B88;
    v48 = 0;
    objc_initWeak(&location, self);
    v51[0] = kPairingMetricsDir;
    v20 = BRGetCurrentMetricIDFromMetricDir();
    v51[1] = v20;
    v21 = [NSArray arrayWithObjects:v51 count:2];
    v22 = [NSString pathWithComponents:v21];

    v50[0] = v22;
    v50[1] = kPairingMetricBridgePlistName;
    v23 = [NSArray arrayWithObjects:v50 count:2];
    v24 = [NSString pathWithComponents:v23];
    v25 = [NSURL fileURLWithPath:v24];

    v49[0] = v22;
    v49[1] = kPairingMetricNRPlistName;
    v26 = [NSArray arrayWithObjects:v49 count:2];
    v27 = [NSString pathWithComponents:v26];
    v28 = [NSURL fileURLWithPath:v27];

    v29 = [NSMutableDictionary dictionaryWithContentsOfURL:v25];
    queue = self->_queue;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000C1B90;
    v36[3] = &unk_100179310;
    objc_copyWeak(&v41, &location);
    v40 = buf;
    v37 = v28;
    v38 = v29;
    v39 = v7;
    v31 = v29;
    v32 = v28;
    dispatch_async(queue, v36);

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }
}

- (id)lastControllerPushed:(id)a3
{
  v3 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_1000C1B78;
  v17[4] = sub_1000C1B88;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000C1B78;
  v15 = sub_1000C1B88;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C223C;
  v6[3] = &unk_100179338;
  v9 = v17;
  v10 = &v11;
  v7 = @"PushedControllerNumber";
  v8 = @"HoldControllerNumber";
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v12[5];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v17, 8);

  return v4;
}

@end