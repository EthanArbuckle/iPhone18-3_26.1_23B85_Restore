@interface MIBUSUController
- (MIBUSUController)initWithDelegate:(id)delegate;
- (id)_getPhaseTranslationTable;
- (void)_initSUClient;
- (void)_proccessScanResults:(id)results andError:(id)error;
- (void)_purgeSoftwareUpdate;
- (void)_scan;
- (void)_softwareUpdateCompleteWithError:(id)error;
- (void)client:(id)client downloadDidFail:(id)fail withError:(id)error;
- (void)client:(id)client downloadDidFinish:(id)finish;
- (void)client:(id)client downloadDidStart:(id)start;
- (void)client:(id)client downloadProgressDidChange:(id)change;
- (void)client:(id)client installDidFail:(id)fail withError:(id)error;
- (void)client:(id)client installDidFinish:(id)finish;
- (void)client:(id)client installDidStart:(id)start;
- (void)download:(id)download;
- (void)forcePurge;
- (void)install;
- (void)start;
- (void)terminate;
@end

@implementation MIBUSUController

- (MIBUSUController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = MIBUSUController;
  v5 = [(MIBUSUController *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(MIBUSUController *)v5 setDelegate:delegateCopy];
    v7 = +[MIBUWiFiHelper sharedInstance];
    [(MIBUSUController *)v6 setWifiHelper:v7];

    progress = v6->_progress;
    v6->_phase = 256;
    v6->_progress = 0;

    timeRemaining = v6->_timeRemaining;
    v6->_timeRemaining = 0;

    v10 = dispatch_queue_create("com.apple.mibu_sumanagerclient_queue", 0);
    [(MIBUSUController *)v6 setSuDelegateQueue:v10];

    _getPhaseTranslationTable = [(MIBUSUController *)v6 _getPhaseTranslationTable];
    [(MIBUSUController *)v6 setPhaseTranslationTable:_getPhaseTranslationTable];

    [(MIBUSUController *)v6 setRetryCount:0];
  }

  return v6;
}

- (void)start
{
  [(MIBUSUController *)self _initSUClient];
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005AFE0();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting software update controller...", buf, 2u);
  }

  self->_phase = 257;
  if (os_variant_has_internal_content())
  {
    v4 = +[MIBUTestPreferences sharedInstance];
    skipWiFiAssociation = [v4 skipWiFiAssociation];

    if (skipWiFiAssociation)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005B0AC();
      }

      v6 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping WiFi Association...", v10, 2u);
      }

      goto LABEL_12;
    }
  }

  wifiHelper = [(MIBUSUController *)self wifiHelper];
  v9 = 0;
  [wifiHelper connectAndMonitor:&v9];
  v8 = v9;

  if (!v8)
  {
LABEL_12:
    [(MIBUSUController *)self _scan];
    return;
  }

  sub_10005AFF4(self, v8);
}

- (void)download:(id)download
{
  downloadCopy = download;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000218C8;
  v23 = sub_1000218D8;
  v24 = 0;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(SUMutableDownloadMetadata);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MIBUSUController *)selfCopy cancelled])
  {
    v13 = (v20 + 5);
    v17 = v20[5];
    v14 = v17;
    sub_100016130(&v17, 67108870, 0, @"Software Update cancelled", v7, v8, v9, v10, v15[0]);
    sub_10005B0D4(&v17, v14, v13);
    objc_sync_exit(selfCopy);

    [(MIBUSUController *)selfCopy _softwareUpdateCompleteWithError:v20[5]];
  }

  else
  {
    [v5 setDownloadOnly:1];
    v11 = [[SUDownloadOptions alloc] initWithMetadata:v5 andDescriptor:downloadCopy];
    [v11 setAutoDownload:0];
    selfCopy->_phase = 512;
    manager = [(MIBUSUController *)selfCopy manager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100021948;
    v15[3] = &unk_10009BD10;
    v15[4] = &v19;
    objc_copyWeak(&v16, &location);
    [manager startDownloadWithOptions:v11 withResult:v15];

    objc_destroyWeak(&v16);
    objc_sync_exit(selfCopy);
  }

  objc_destroyWeak(&location);
  _Block_object_dispose(&v19, 8);
}

- (void)install
{
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021B3C;
  block[3] = &unk_10009BDB8;
  objc_copyWeak(&v4, &location);
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)terminate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(MIBUSUController *)selfCopy cancelled])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B290();
    }

    v3 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Terminating software update...", buf, 2u);
    }

    [(MIBUSUController *)selfCopy setCancelled:1];
    if (selfCopy->_phase < 0x103)
    {
      manager = [(MIBUSUController *)selfCopy manager];

      if (manager)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_10005B2A4();
        }

        v5 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating SU client...", v10, 2u);
        }

        manager2 = [(MIBUSUController *)selfCopy manager];
        [manager2 invalidate];

        if (qword_1000B84A8[0] != -1)
        {
          sub_10005B2CC();
        }

        v7 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SU client invalidated", v9, 2u);
        }
      }
    }

    else
    {
      [(MIBUSUController *)selfCopy _purgeSoftwareUpdate];
    }

    wifiHelper = [(MIBUSUController *)selfCopy wifiHelper];
    [wifiHelper stopMonitor];

    selfCopy->_phase = 1280;
  }

  objc_sync_exit(selfCopy);
}

- (void)forcePurge
{
  obj = self;
  objc_sync_enter(obj);
  [(MIBUSUController *)obj setCancelled:1];
  [(MIBUSUController *)obj _purgeSoftwareUpdate];
  obj->_phase = 1280;
  objc_sync_exit(obj);
}

- (void)client:(id)client downloadDidStart:(id)start
{
  clientCopy = client;
  startCopy = start;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B2F4();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Software update download started", v8, 2u);
  }
}

- (void)client:(id)client downloadDidFinish:(id)finish
{
  clientCopy = client;
  finishCopy = finish;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B308();
  }

  v8 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Software update download finished", v11, 2u);
  }

  self->_phase = 1024;
  delegate = [(MIBUSUController *)self delegate];
  descriptor = [finishCopy descriptor];
  [delegate downloadDidFinishForUpdate:descriptor];
}

- (void)client:(id)client downloadDidFail:(id)fail withError:(id)error
{
  clientCopy = client;
  failCopy = fail;
  errorCopy = error;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B31C();
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10005B330();
  }

  v17 = 0;
  sub_100016130(&v17, 67108867, errorCopy, @"Failed SU download", v11, v12, v13, v14, v16);
  v15 = v17;
  [(MIBUSUController *)self _softwareUpdateCompleteWithError:v15];
}

- (void)client:(id)client downloadProgressDidChange:(id)change
{
  changeCopy = change;
  progress = [changeCopy progress];
  phase = [progress phase];

  progress2 = [changeCopy progress];
  [progress2 percentComplete];
  v10 = v9;

  progress3 = [changeCopy progress];
  [progress3 normalizedPercentComplete];
  v13 = v12;

  progress4 = [changeCopy progress];

  [progress4 timeRemaining];
  v16 = v15;

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B3A0();
  }

  v17 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138544130;
    v26 = phase;
    v27 = 2048;
    v28 = v10;
    v29 = 2048;
    v30 = v13;
    v31 = 2048;
    v32 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Software update download phase: %{public}@; progress: %f; normalized progress: %f; time remaining: %lf", &v25, 0x2Au);
  }

  phaseTranslationTable = [(MIBUSUController *)self phaseTranslationTable];
  v19 = [phaseTranslationTable objectForKey:phase];

  if (v19)
  {
    self->_phase = [v19 unsignedIntValue];
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B3B4();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005B3DC();
    }
  }

  *&v20 = v13;
  v21 = [NSNumber numberWithFloat:v20];
  progress = self->_progress;
  self->_progress = v21;

  v23 = [NSNumber numberWithDouble:v16];
  timeRemaining = self->_timeRemaining;
  self->_timeRemaining = v23;
}

- (void)client:(id)client installDidStart:(id)start
{
  clientCopy = client;
  startCopy = start;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B44C();
  }

  v8 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Software update installation started.", v12, 2u);
  }

  progress = self->_progress;
  self->_progress = 0;

  timeRemaining = self->_timeRemaining;
  self->_timeRemaining = 0;

  delegate = [(MIBUSUController *)self delegate];
  [delegate installDidStartForUpdate:startCopy];
}

- (void)client:(id)client installDidFail:(id)fail withError:(id)error
{
  clientCopy = client;
  failCopy = fail;
  errorCopy = error;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B460();
  }

  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10005B474();
  }

  v17 = 0;
  sub_100016130(&v17, 67108868, errorCopy, @"Failed SU install", v11, v12, v13, v14, v16);
  v15 = v17;
  [(MIBUSUController *)self _softwareUpdateCompleteWithError:v15];
}

- (void)client:(id)client installDidFinish:(id)finish
{
  clientCopy = client;
  finishCopy = finish;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B4E4();
  }

  v8 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Software update installation complete!", v10, 2u);
  }

  delegate = [(MIBUSUController *)self delegate];
  [delegate updateDidFinishWithError:0];
}

- (void)_proccessScanResults:(id)results andError:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:SUErrorDomain])
  {
    code = [errorCopy code];

    if (code == 3)
    {
      v28 = 0;
      sub_100016130(&v28, 67108871, 0, @"Device is already up-to-date", v10, v11, v12, v13, v27);
      v14 = v28;
      goto LABEL_4;
    }
  }

  else
  {
  }

  if (resultsCopy)
  {
    delegate = [(MIBUSUController *)self delegate];
    [delegate scanDidFinishWithResults:resultsCopy];

    goto LABEL_15;
  }

  sub_100016130(&v27, 67108866, errorCopy, @"No updates found", v10, v11, v12, v13, 0);
  v14 = v27;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B4F8();
  }

  v19 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_10005B520(v19, v20, v21, v22, v23, v24, v25, v26);
  }

LABEL_4:
  if ([(MIBUSUController *)self retryCount]> 2)
  {
    [(MIBUSUController *)self _softwareUpdateCompleteWithError:v14];
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B558();
    }

    v15 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      retryCount = [(MIBUSUController *)self retryCount];
      *buf = 134218240;
      v30 = retryCount;
      v31 = 1024;
      v32 = 3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Retrying SU scan: %lu/%u", buf, 0x12u);
    }

    [(MIBUSUController *)self _scan];
    [(MIBUSUController *)self setRetryCount:[(MIBUSUController *)self retryCount]+ 1];
  }

LABEL_15:
}

- (id)_getPhaseTranslationTable
{
  v4[0] = kSUDownloadPhaseStarting;
  v4[1] = kSUDownloadPhaseBrainFetching;
  v5[0] = &off_1000A8100;
  v5[1] = &off_1000A8118;
  v4[2] = kSUDownloadPhaseBrainFetchingStalled;
  v4[3] = kSUDownloadPhaseBrainVerifying;
  v5[2] = &off_1000A8130;
  v5[3] = &off_1000A8148;
  v4[4] = kSUDownloadPhaseBrainExtracting;
  v4[5] = kSUDownloadPhaseUpdateFetching;
  v5[4] = &off_1000A8160;
  v5[5] = &off_1000A8178;
  v4[6] = kSUDownloadPhaseUpdateFetchingStalled;
  v4[7] = kSUDownloadPhasePreparingForInstallation;
  v5[6] = &off_1000A8190;
  v5[7] = &off_1000A81A8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:8];

  return v2;
}

- (void)_initSUClient
{
  manager = [(MIBUSUController *)self manager];

  if (!manager)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B580();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initializing SUManagerClient...", v8, 2u);
    }

    v5 = [SUManagerClient alloc];
    suDelegateQueue = [(MIBUSUController *)self suDelegateQueue];
    v7 = [v5 initWithDelegate:self queue:suDelegateQueue clientType:0];
    [(MIBUSUController *)self setManager:v7];
  }
}

- (void)_scan
{
  objc_initWeak(&location, self);
  self->_phase = 258;
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B594();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scanning for updates ...", buf, 2u);
  }

  v4 = objc_alloc_init(SUScanOptions);
  [v4 setForced:1];
  progress = self->_progress;
  self->_progress = 0;

  timeRemaining = self->_timeRemaining;
  self->_timeRemaining = 0;

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002331C;
  v8[3] = &unk_10009BDB8;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_purgeSoftwareUpdate
{
  [(MIBUSUController *)self _initSUClient];
  objc_initWeak(&location, self);
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B5BC();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cancelling software update download...", buf, 2u);
  }

  v4 = dispatch_semaphore_create(0);
  v5 = objc_opt_new();
  [v5 setNotifyUser:0];
  [v5 setUserRequested:0];
  manager = [(MIBUSUController *)self manager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000237C4;
  v12[3] = &unk_10009C0D0;
  objc_copyWeak(&v16, &location);
  v7 = v5;
  v13 = v7;
  selfCopy = self;
  v8 = v4;
  v15 = v8;
  [manager cancelDownloadWithOptions:v7 withResult:v12];

  v9 = dispatch_time(0, 180000000000);
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005B5E4();
  }

  v10 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v19 = 180;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Waiting %ds to purge SU...", buf, 8u);
  }

  if (dispatch_semaphore_wait(v8, v9))
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B60C();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_10005B634();
    }
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005B6B0();
    }

    v11 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Purged software update", buf, 2u);
    }
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_softwareUpdateCompleteWithError:(id)error
{
  errorCopy = error;
  v5 = dispatch_get_global_queue(33, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100023F18;
  v7[3] = &unk_100099480;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(v5, v7);
}

@end