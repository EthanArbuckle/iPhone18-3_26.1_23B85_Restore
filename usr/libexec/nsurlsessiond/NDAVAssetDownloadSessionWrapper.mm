@interface NDAVAssetDownloadSessionWrapper
- (NDAVAssetDownloadSessionWrapper)initWithURL:(id)l destinationURL:(id)rL options:(id)options delegate:(id)delegate queue:(id)queue;
- (NDAVAssetDownloadSessionWrapper)initWithURLAsset:(id)asset destinationURL:(id)l options:(id)options delegate:(id)delegate queue:(id)queue;
- (NDAVAssetDownloadSessionWrapperDelegate)delegate;
- (void)assetDownloadSession:(id)session didFailWithError:(id)error;
- (void)assetDownloadSession:(id)session didFinishDownloadForMediaSelection:(id)selection;
- (void)assetDownloadSession:(id)session didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load forMediaSelection:(id)selection;
- (void)assetDownloadSession:(id)session didReceiveMetricEvent:(id)event;
- (void)assetDownloadSession:(id)session didResolveMediaSelection:(id)selection;
- (void)assetDownloadSession:(id)session didUpdateProgressWithExpectedBytes:(unint64_t)bytes bytesDownloaded:(unint64_t)downloaded;
- (void)assetDownloadSession:(id)session willDownloadVariants:(id)variants;
- (void)assetDownloadSessionDidFinishDownload:(id)download;
- (void)cancel;
- (void)cancelAndDeliverError:(id)error;
- (void)disavowSession;
- (void)releasePowerAssertion;
- (void)resume;
- (void)startLoadingMetadata;
- (void)suspend;
- (void)takePowerAssertion;
@end

@implementation NDAVAssetDownloadSessionWrapper

- (NDAVAssetDownloadSessionWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)assetDownloadSession:(id)session didReceiveMetricEvent:(id)event
{
  eventCopy = event;
  delegateQueue = self->_delegateQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001EB08;
  v8[3] = &unk_1000D6420;
  v8[4] = self;
  v9 = eventCopy;
  v7 = eventCopy;
  dispatch_async(delegateQueue, v8);
}

- (void)assetDownloadSession:(id)session willDownloadVariants:(id)variants
{
  variantsCopy = variants;
  delegateQueue = self->_delegateQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001EC08;
  v8[3] = &unk_1000D6420;
  v8[4] = self;
  v9 = variantsCopy;
  v7 = variantsCopy;
  dispatch_async(delegateQueue, v8);
}

- (void)assetDownloadSession:(id)session didUpdateProgressWithExpectedBytes:(unint64_t)bytes bytesDownloaded:(unint64_t)downloaded
{
  delegateQueue = self->_delegateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ECE8;
  block[3] = &unk_1000D5200;
  block[4] = self;
  block[5] = downloaded;
  block[6] = bytes;
  dispatch_async(delegateQueue, block);
}

- (void)assetDownloadSession:(id)session didResolveMediaSelection:(id)selection
{
  selectionCopy = selection;
  delegateQueue = self->_delegateQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001EE40;
  v8[3] = &unk_1000D6420;
  v9 = selectionCopy;
  selfCopy = self;
  v7 = selectionCopy;
  dispatch_async(delegateQueue, v8);
}

- (void)assetDownloadSession:(id)session didFinishDownloadForMediaSelection:(id)selection
{
  selectionCopy = selection;
  v6 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AVAssetDownloadSession download finished for media selection", buf, 2u);
  }

  delegateQueue = self->_delegateQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001EFCC;
  v9[3] = &unk_1000D6420;
  v9[4] = self;
  v10 = selectionCopy;
  v8 = selectionCopy;
  dispatch_async(delegateQueue, v9);
}

- (void)assetDownloadSession:(id)session didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load forMediaSelection:(id)selection
{
  loadedCopy = loaded;
  selectionCopy = selection;
  delegateQueue = self->_delegateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v14 = *&range->var0.var3;
  v23 = *&range->var0.var0;
  v24 = v14;
  v15 = *&load->var0.var0;
  v16 = *&load->var0.var3;
  v25 = *&range->var1.var1;
  v26 = v15;
  block[2] = sub_10001F14C;
  block[3] = &unk_1000D51D8;
  v17 = *&load->var1.var1;
  v27 = v16;
  v28 = v17;
  block[4] = self;
  v21 = loadedCopy;
  v22 = selectionCopy;
  v18 = selectionCopy;
  v19 = loadedCopy;
  dispatch_async(delegateQueue, block);
}

- (void)assetDownloadSession:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  v6 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AVAssetDownloadSession download failed", buf, 2u);
  }

  delegateQueue = self->_delegateQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001F33C;
  v9[3] = &unk_1000D6420;
  v9[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(delegateQueue, v9);
}

- (void)assetDownloadSessionDidFinishDownload:(id)download
{
  v4 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AVAssetDownloadSession download complete", buf, 2u);
  }

  delegateQueue = self->_delegateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F468;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)startLoadingMetadata
{
  downloadSession = [(NDAVAssetDownloadSessionWrapper *)self downloadSession];
  [downloadSession startLoadingMetadata];
}

- (void)cancelAndDeliverError:(id)error
{
  errorCopy = error;
  [(NDAVAssetDownloadSessionWrapper *)self cancel];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained NDAVAssetDownloadSessionWrapper:self didCompleteWithError:errorCopy];
}

- (void)cancel
{
  downloadSession = [(NDAVAssetDownloadSessionWrapper *)self downloadSession];
  [downloadSession stop];

  [(NDAVAssetDownloadSessionWrapper *)self disavowSession];
}

- (void)suspend
{
  downloadSession = [(NDAVAssetDownloadSessionWrapper *)self downloadSession];
  [downloadSession pause];

  [(NDAVAssetDownloadSessionWrapper *)self releasePowerAssertion];
}

- (void)resume
{
  [(NDAVAssetDownloadSessionWrapper *)self takePowerAssertion];
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting AVAssetDownloadSession", v5, 2u);
  }

  downloadSession = [(NDAVAssetDownloadSessionWrapper *)self downloadSession];
  [downloadSession start];
}

- (void)releasePowerAssertion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  powerAssertion = selfCopy->_powerAssertion;
  if (powerAssertion)
  {
    v4 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      downloadToken = selfCopy->_downloadToken;
      taskIdentifier = selfCopy->_taskIdentifier;
      v9 = 134218240;
      v10 = downloadToken;
      v11 = 2048;
      v12 = taskIdentifier;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Releasing power assertion for AVAssetDownloadSessionWrapper %llu with taskIdentifier %lu", &v9, 0x16u);
      powerAssertion = selfCopy->_powerAssertion;
    }

    IOPMAssertionRelease(powerAssertion);
    selfCopy->_powerAssertion = 0;
  }

  powerAssertionTimer = selfCopy->_powerAssertionTimer;
  if (powerAssertionTimer)
  {
    dispatch_source_cancel(powerAssertionTimer);
    v8 = selfCopy->_powerAssertionTimer;
    selfCopy->_powerAssertionTimer = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)takePowerAssertion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_powerAssertion)
  {
    v3 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      downloadToken = selfCopy->_downloadToken;
      taskIdentifier = selfCopy->_taskIdentifier;
      *buf = 134218240;
      v26 = downloadToken;
      v27 = 2048;
      v28 = taskIdentifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Taking power assertion for AVAssetDownloadSessionWrapper %llu with taskIdentifier %lu", buf, 0x16u);
    }

    v6 = [(NSDictionary *)selfCopy->_options objectForKeyedSubscript:AVAssetDownloadSessionClientBundleIdentifierKey];
    v23[0] = @"AssertType";
    v23[1] = @"AssertLevel";
    v24[0] = @"PreventUserIdleSystemSleep";
    v24[1] = &off_1000D88C0;
    v23[2] = @"AssertName";
    v7 = [NSString stringWithFormat:@"AVAssetDownloadSessionWrapper %llu (%@)", selfCopy->_downloadToken, v6];
    v24[2] = v7;
    v24[3] = &off_1000D88D8;
    v23[3] = @"TimeoutSeconds";
    v23[4] = @"TimeoutAction";
    v24[4] = @"TimeoutActionTurnOff";
    v8 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];

    AssertionID = 0;
    if (IOPMAssertionCreateWithProperties(v8, &AssertionID))
    {
      v10 = qword_1000EB210;
      if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        goto LABEL_7;
      }

      v16 = selfCopy->_downloadToken;
      v17 = selfCopy->_taskIdentifier;
      *buf = 134218240;
      v26 = v16;
      v27 = 2048;
      v28 = v17;
      v18 = "Failed to take power assertion for AVAssetDownloadSessionWrapper %llu with taskIdentifier %lu";
    }

    else
    {
      selfCopy->_powerAssertion = AssertionID;
      if (!sub_10006E5E0(v9) || ![v6 isEqualToString:@"com.apple.news"] || selfCopy->_powerAssertionTimer)
      {
        goto LABEL_6;
      }

      v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      powerAssertionTimer = selfCopy->_powerAssertionTimer;
      selfCopy->_powerAssertionTimer = v11;

      v13 = selfCopy->_powerAssertionTimer;
      if (v13)
      {
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10001FBC4;
        handler[3] = &unk_1000D63D0;
        handler[4] = selfCopy;
        dispatch_source_set_event_handler(v13, handler);
        v14 = selfCopy->_powerAssertionTimer;
        v15 = dispatch_time(0, 7200000000000);
        dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_activate(selfCopy->_powerAssertionTimer);
        goto LABEL_6;
      }

      v10 = qword_1000EB210;
      if (!os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v19 = selfCopy->_downloadToken;
      v20 = selfCopy->_taskIdentifier;
      *buf = 134218240;
      v26 = v19;
      v27 = 2048;
      v28 = v20;
      v18 = "Failed to create a timer to keep track of PowerAssertion duration for AVAssetDownloadSessionWrapper %llu with taskIdentifier %lu";
    }

    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
    goto LABEL_6;
  }

LABEL_7:
  objc_sync_exit(selfCopy);
}

- (void)disavowSession
{
  [(NDAVAssetDownloadSessionWrapper *)self releasePowerAssertion];
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%p Disavowing AVAssetDownloadSession", &v5, 0xCu);
  }

  [(NDAVAssetDownloadSessionWrapper *)self setDownloadSession:0];
  callbackQueue = self->_callbackQueue;
  self->_callbackQueue = 0;
}

- (NDAVAssetDownloadSessionWrapper)initWithURLAsset:(id)asset destinationURL:(id)l options:(id)options delegate:(id)delegate queue:(id)queue
{
  assetCopy = asset;
  lCopy = l;
  optionsCopy = options;
  delegateCopy = delegate;
  queueCopy = queue;
  v63.receiver = self;
  v63.super_class = NDAVAssetDownloadSessionWrapper;
  v15 = [(NDAVAssetDownloadSessionWrapper *)&v63 init];
  v54 = v15;
  if (!v15)
  {
    goto LABEL_34;
  }

  objc_storeStrong(&v15->_asset, asset);
  objc_storeStrong(&v54->_destinationURL, l);
  if (optionsCopy)
  {
    v16 = [optionsCopy objectForKeyedSubscript:@"AVAssetDownloadSessionMediaSelectionArrayKey"];
    v17 = v16 == 0;

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v49 = [optionsCopy objectForKey:@"AVAssetDownloadSessionMediaSelectionArrayKey"];
      v18 = [optionsCopy mutableCopy];
      v19 = +[NSMutableArray array];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v20 = v49;
      v21 = [v20 countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v21)
      {
        v22 = *v60;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v60 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = [[AVMediaSelection alloc] initWithAsset:assetCopy propertyList:*(*(&v59 + 1) + 8 * i)];
            if (v24)
            {
              [v19 addObject:v24];
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v59 objects:v65 count:16];
        }

        while (v21);
      }

      [v18 setObject:v19 forKeyedSubscript:@"AVAssetDownloadSessionMediaSelectionArrayKey"];
      if (!v18)
      {
        goto LABEL_30;
      }

      optionsCopy = v18;
    }

    v25 = [optionsCopy objectForKeyedSubscript:@"AVAssetDownloadTaskMediaSelectionsForMultichannelKey"];
    v26 = v25 == 0;

    if (v26)
    {
      goto LABEL_28;
    }

    v48 = [optionsCopy objectForKeyedSubscript:@"AVAssetDownloadTaskMediaSelectionsForMultichannelKey"];
    v50 = [optionsCopy mutableCopy];
    v27 = +[NSMutableArray array];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v28 = v48;
    v29 = [v28 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v29)
    {
      v30 = *v56;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v56 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = [[AVMediaSelection alloc] initWithAsset:assetCopy propertyList:*(*(&v55 + 1) + 8 * j)];
          if (v32)
          {
            [v27 addObject:v32];
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v29);
    }

    [v50 setObject:v27 forKeyedSubscript:@"AVAssetDownloadTaskMediaSelectionsForMultichannelKey"];
    optionsCopy = v50;
    if (v50)
    {
LABEL_28:
      v33 = [optionsCopy objectForKeyedSubscript:@"AVAssetDownloadTaskMediaSelectionKey"];
      v34 = v33 == 0;

      if (v34)
      {
        v36 = optionsCopy;
      }

      else
      {
        v35 = [optionsCopy objectForKeyedSubscript:@"AVAssetDownloadTaskMediaSelectionKey"];
        v36 = [optionsCopy mutableCopy];
        v37 = [[AVMediaSelection alloc] initWithAsset:assetCopy propertyList:v35];
        [v36 setObject:v37 forKeyedSubscript:AVAssetDownloadSessionMediaSelectionKey];
        [v36 removeObjectForKey:@"AVAssetDownloadTaskMediaSelectionKey"];
      }

      goto LABEL_31;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_30:
  v36 = 0;
LABEL_31:
  v38 = [v36 mutableCopy];
  v39 = [v38 objectForKeyedSubscript:@"AVAssetDownloadTaskMinimumRequiredMediaBitrateKey"];
  v40 = v39 == 0;

  if (!v40)
  {
    v41 = [v38 objectForKeyedSubscript:@"AVAssetDownloadTaskMinimumRequiredMediaBitrateKey"];
    [v38 setObject:v41 forKeyedSubscript:AVAssetDownloadSessionMinimumRequiredMediaBitrateKey];

    [v38 removeObjectForKey:@"AVAssetDownloadTaskMinimumRequiredMediaBitrateKey"];
  }

  optionsCopy = v38;

  objc_storeStrong(&v54->_options, v38);
  objc_storeWeak(&v54->_delegate, delegateCopy);
  objc_storeStrong(&v54->_delegateQueue, queue);
  v42 = [AVAssetDownloadSession assetDownloadSessionWithAsset:assetCopy mediaSelections:v19 destinationURL:lCopy options:optionsCopy];
  downloadSession = v54->_downloadSession;
  v54->_downloadSession = v42;

  v44 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v45 = dispatch_queue_create("com.apple.nsurlsessionf.avassetdownloadersessionwrappercallback", v44);
  callbackQueue = v54->_callbackQueue;
  v54->_callbackQueue = v45;

  [(AVAssetDownloadSession *)v54->_downloadSession setDelegate:v54 queue:v54->_callbackQueue];
  v54->_downloadToken = [(AVAssetDownloadSession *)v54->_downloadSession downloadToken];

LABEL_34:
  return v54;
}

- (NDAVAssetDownloadSessionWrapper)initWithURL:(id)l destinationURL:(id)rL options:(id)options delegate:(id)delegate queue:(id)queue
{
  lCopy = l;
  rLCopy = rL;
  optionsCopy = options;
  delegateCopy = delegate;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = NDAVAssetDownloadSessionWrapper;
  v17 = [(NDAVAssetDownloadSessionWrapper *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_URL, l);
    objc_storeStrong(&v18->_destinationURL, rL);
    objc_storeStrong(&v18->_options, options);
    objc_storeWeak(&v18->_delegate, delegateCopy);
    objc_storeStrong(&v18->_delegateQueue, queue);
    v19 = [AVAssetDownloadSession assetDownloadSessionWithURL:lCopy destinationURL:rLCopy options:optionsCopy];
    downloadSession = v18->_downloadSession;
    v18->_downloadSession = v19;

    if (v18->_downloadSession)
    {
      v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v22 = dispatch_queue_create("com.apple.nsurlsessionf.avassetdownloadersessionwrappercallback", v21);
      callbackQueue = v18->_callbackQueue;
      v18->_callbackQueue = v22;

      [(AVAssetDownloadSession *)v18->_downloadSession setDelegate:v18 queue:v18->_callbackQueue];
      v18->_downloadToken = [(AVAssetDownloadSession *)v18->_downloadSession downloadToken];
    }

    else
    {

      v18 = 0;
    }
  }

  return v18;
}

@end