@interface ReadingListFetcherDocument
+ (BOOL)_shouldAutoSizeText;
- (BOOL)_isDeallocating;
- (BOOL)_tryRetain;
- (ReadingListFetcherDocument)init;
- (ReadingListFetcherDocument)retain;
- (double)progress;
- (void)_cleanUpAfterIconDownloadRequestCompletion;
- (void)_dataCheckTimeoutExpired;
- (void)_didCancelLoad;
- (void)_didCollectReadingListInfo:(id)info withAvailability:(BOOL)availability;
- (void)_didFinishLoadingSubpage;
- (void)_killWebProcessIfNeededAndFail;
- (void)_loadDidFail;
- (void)_navigationFailedWithError:(id)error;
- (void)_readerPageTimeoutExpired;
- (void)_saveAndSelfExpire;
- (void)_slowLoadTimeoutExpired;
- (void)_writeOfflineWebViewWithOptions:(unint64_t)options completion:(id)completion;
- (void)cancelLoad;
- (void)clearWebView;
- (void)createReaderWebViewForReaderController:(id)controller;
- (void)dealloc;
- (void)didFinishLoadingAllReaderPages;
- (void)finishFetchingDocument;
- (void)loadBookmark:(id)bookmark;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)readerController:(id)controller didDetermineReaderAvailability:(id)availability dueTo:(int64_t)to;
- (void)release;
- (void)siteIconDownloadRequest:(id)request didComputeIconKeyColor:(id)color;
- (void)siteIconDownloadRequest:(id)request didLoadIconData:(id)data withIconURL:(id)l;
- (void)siteIconDownloadRequestDidFail:(id)fail;
- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
@end

@implementation ReadingListFetcherDocument

- (ReadingListFetcherDocument)retain
{
  if (atomic_fetch_add(&self->_retainCount, 2uLL) <= -3)
  {
    __break(1u);
  }

  return self;
}

- (void)release
{
  add = atomic_fetch_add(&self->_retainCount, 0xFFFFFFFFFFFFFFFELL);
  if (add <= 0)
  {
    if (add < 0 || (v3 = self, self = pthread_main_np(), v4 = -2, atomic_compare_exchange_strong(&v3->_retainCount, &v4, 1uLL), v4 != -2))
    {
      __break(1u);
- (BOOL)_tryRetain
{
  while (1)
  {
    retainCount = self->_retainCount;
    v3 = (retainCount & 1) != 0 || retainCount == -2;
    v4 = !v3;
    if (v3)
    {
LABEL_10:
      LOBYTE(self) = v4;
      return self;
    }

    if (retainCount <= -3)
    {
      break;
    }

    v5 = self->_retainCount;
    atomic_compare_exchange_strong(&self->_retainCount, &v5, retainCount + 2);
    if (v5 == retainCount)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return self;
}

- (BOOL)_isDeallocating
{
  retainCount = self->_retainCount;
  if (retainCount == -2)
  {
    LOBYTE(self) = 1;
  }

  else if (retainCount <= -3)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(self) = retainCount & 1;
  }

  return self;
}

- (ReadingListFetcherDocument)init
{
  v13.receiver = self;
  v13.super_class = ReadingListFetcherDocument;
  v2 = [(ReadingListFetcherDocument *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(WKWebViewConfiguration);
    [v3 _setAttributedBundleIdentifier:@"com.apple.mobilesafari"];
    [v3 _setClientNavigationsRunAtForegroundPriority:1];
    [v3 setUserContentController:{+[WKUserContentController safari_readingListFetcherUserContentController](WKUserContentController, "safari_readingListFetcherUserContentController")}];
    [v3 setWebsiteDataStore:{+[WKWebsiteDataStore nonPersistentDataStore](WKWebsiteDataStore, "nonPersistentDataStore")}];
    v4 = _SFCustomUserAgentStringIfNeeded();
    if (!v4)
    {
      [v3 setApplicationNameForUserAgent:_SFApplicationNameForUserAgent()];
    }

    if (+[ReadingListFetcherDocument _shouldAutoSizeText])
    {
      [objc_msgSend(v3 "preferences")];
    }

    v5 = objc_alloc_init(_WKProcessPoolConfiguration);
    [v5 setShouldTakeUIBackgroundAssertion:0];
    [v5 setInjectedBundleURL:{+[NSBundle safari_safariServicesInjectedBundleURL](NSBundle, "safari_safariServicesInjectedBundleURL")}];
    v6 = [[WKProcessPool alloc] _initWithConfiguration:v5];

    [v3 setProcessPool:v6];
    v7 = [WKWebView alloc];
    GSMainScreenPointSize();
    v10 = [v7 initWithFrame:v3 configuration:{0.0, 0.0, v8, v9}];
    v2->_webView = v10;
    [(WKWebView *)v10 setInspectable:0];

    [(WKWebView *)v2->_webView setNavigationDelegate:v2];
    if (v4)
    {
      [(WKWebView *)v2->_webView setCustomUserAgent:v4];
    }

    [(WKWebView *)v2->_webView addObserver:v2 forKeyPath:@"estimatedProgress" options:0 context:off_100022A90];
    v11 = [[_SFReaderController alloc] initWithWebView:v2->_webView];
    v2->_readerContext = v11;
    [(_SFReaderController *)v11 setDelegate:v2];
    [(_SFReaderController *)v2->_readerContext setWebViewUIDelegate:v2];
  }

  return v2;
}

+ (BOOL)_shouldAutoSizeText
{
  v2 = +[NSUserDefaults standardUserDefaults];
  if (![(NSUserDefaults *)v2 objectForKey:@"FontAutoSizeSetting"])
  {
    return _SFDeviceIsPad() ^ 1;
  }

  return [(NSUserDefaults *)v2 BOOLForKey:@"FontAutoSizeSetting"];
}

- (void)dealloc
{
  [(WKWebView *)self->_webView removeObserver:self forKeyPath:@"estimatedProgress" context:off_100022A90];
  slowLoadTimer = self->_slowLoadTimer;
  if (slowLoadTimer)
  {
    [(NSTimer *)slowLoadTimer invalidate];

    self->_slowLoadTimer = 0;
  }

  readerPageTimer = self->_readerPageTimer;
  if (readerPageTimer)
  {
    [(NSTimer *)readerPageTimer invalidate];

    self->_readerPageTimer = 0;
  }

  dataCheckTimer = self->_dataCheckTimer;
  if (dataCheckTimer)
  {
    [(NSTimer *)dataCheckTimer invalidate];

    self->_dataCheckTimer = 0;
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];

  [(SiteIconDownloadRequest *)self->_thumbnailDownloadRequest setDelegate:0];
  self->_thumbnailDownloadRequest = 0;

  self->_suggestedFileName = 0;
  self->_quickLookFilePath = 0;
  [(ReadingListFetcherDocument *)self clearWebView];
  v6.receiver = self;
  v6.super_class = ReadingListFetcherDocument;
  [(ReadingListFetcherDocument *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_100022A90 == context)
  {
    if ([path isEqualToString:{@"estimatedProgress", object, change}])
    {

      [(ReadingListFetcherDocument *)self _dataReceived];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ReadingListFetcherDocument;
    [(ReadingListFetcherDocument *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (double)progress
{
  numCompletedSubpages = self->_numCompletedSubpages;
  if (numCompletedSubpages)
  {
    return numCompletedSubpages / (numCompletedSubpages + 1.0);
  }

  else
  {
    return 0.25;
  }
}

- (void)_didFinishLoadingSubpage
{
  ++self->_numCompletedSubpages;
  v3 = +[ReadingListFetcher sharedReadingListFetcher];
  [(ReadingListFetcherDocument *)self progress];

  [v3 document:self didUpdateProgress:?];
}

- (void)finishFetchingDocument
{
  if (!self->_didFinishFetchingDocument)
  {
    self->_didFinishFetchingDocument = 1;
    [(ReadingListFetcherDocument *)self clearWebView];
    [+[SafariFetcherServer sharedServer](SafariFetcherServer "sharedServer")];
    v4 = +[ReadingListFetcher sharedReadingListFetcher];

    [v4 didFinishFetchingDocument:self];
  }
}

- (void)clearWebView
{
  [(_SFReaderController *)self->_readerContext setDelegate:0];
  [(_SFReaderController *)self->_readerContext invalidate];

  self->_readerContext = 0;
  [(WKWebView *)self->_readerWebView _close];

  self->_readerWebView = 0;
  [(WKWebView *)self->_webView _close];

  self->_webView = 0;
}

- (void)_saveAndSelfExpire
{
  if (self->_thumbnailDownloadRequest)
  {
    self->_completionPendingThumbnail = 1;
    return;
  }

  if ((+[WebBookmarkCollection lockSync]& 1) != 0)
  {
    self->_isLoading = 0;
    [(WebBookmark *)self->_bookmark setDateLastArchived:+[NSDate date]];
    v3 = 0;
    if ([(ReadingListFetcherDocument *)self _shouldArchiveBookmarkWithID:[(WebBookmark *)self->_bookmark identifier]])
    {
      v3 = [+[WebBookmarkCollection safariBookmarkCollection](WebBookmarkCollection "safariBookmarkCollection")] ^ 1;
    }

    v4 = sub_100009E64();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10000AC58(v3, v4);
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else if (!v3)
    {
LABEL_9:
      +[WebBookmarkCollection unlockSync];
      [(ReadingListFetcherDocument *)self finishFetchingDocument];
      [+[WebBookmarkCollection safariBookmarkCollection](WebBookmarkCollection "safariBookmarkCollection")];
      return;
    }

    v5 = +[ReadingListFetcher sharedReadingListFetcher];
    [v5 queueChangeForBookmark:self->_bookmark archiveStatus:{-[WebBookmark archiveStatus](self->_bookmark, "archiveStatus")}];
    [v5 queueChangeForBookmark:self->_bookmark dateLastArchived:{+[NSDate date](NSDate, "date")}];
    goto LABEL_9;
  }

  v6 = sub_100009E64();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Failed to acquire lock, retrying after delay", v7, 2u);
  }

  [(ReadingListFetcherDocument *)self performSelector:"_saveAndSelfExpire" withObject:0 afterDelay:3.0];
}

- (void)_loadDidFail
{
  v3 = sub_100009E64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000ACE8();
  }

  self->_loadFailed = 1;
  [(ReadingListFetcherDocument *)self _saveAndSelfExpire];
}

- (void)_slowLoadTimeoutExpired
{
  v3 = sub_100009E64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AD28();
  }

  self->_slowLoadTimer = 0;
  [(ReadingListFetcherDocument *)self _killWebProcessIfNeededAndFail];
}

- (void)_readerPageTimeoutExpired
{
  v3 = sub_100009E64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AD5C();
  }

  self->_readerPageTimer = 0;
  [(ReadingListFetcherDocument *)self _killWebProcessIfNeededAndFail];
}

- (void)_dataCheckTimeoutExpired
{
  v3 = sub_100009E64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AD90();
  }

  self->_dataCheckTimer = 0;
  if (self->_dataReceivedTimestamp <= self->_loadStartTimestamp + 5.0)
  {
    slowLoadTimer = self->_slowLoadTimer;
    if (slowLoadTimer)
    {
      [(NSTimer *)slowLoadTimer invalidate];

      self->_slowLoadTimer = 0;
    }

    [(ReadingListFetcherDocument *)self _killWebProcessIfNeededAndFail];
  }
}

- (void)_writeOfflineWebViewWithOptions:(unint64_t)options completion:(id)completion
{
  v4 = 96;
  if ((options & 2) == 0)
  {
    v4 = 88;
  }

  [(WebBookmark *)self->_bookmark writeOfflineWebView:*(&self->super.isa + v4) withOptions:options quickLookFilePath:self->_quickLookFilePath suggestedFileName:self->_suggestedFileName completion:completion];
}

- (void)_killWebProcessIfNeededAndFail
{
  if (([(WKWebView *)self->_webView _webProcessIsResponsive]& 1) == 0)
  {
    v3 = sub_100009E64();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_10000ADC4();
    }

    [(WKWebView *)self->_webView _killWebContentProcessAndResetState];
  }

  [(ReadingListFetcherDocument *)self _loadDidFail];
}

- (void)loadBookmark:(id)bookmark
{
  self->_bookmark = bookmark;
  if ([bookmark archiveStatus] && objc_msgSend(bookmark, "archiveStatus") != 6)
  {
    v6 = sub_100009E64();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10000AE04(bookmark);
    }
  }

  else
  {
    v5 = sub_100009E64();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10000AE7C(bookmark);
    }
  }

  [+[SafariFetcherServer sharedServer](SafariFetcherServer "sharedServer")];
  -[WKWebView loadRequest:](self->_webView, "loadRequest:", +[NSURLRequest safari_nonAppInitiatedRequestWithURL:](NSURLRequest, "safari_nonAppInitiatedRequestWithURL:", +[NSURL URLWithString:](NSURL, "URLWithString:", [bookmark address])));
  self->_isLoading = 1;
  self->_loadStartTimestamp = CFAbsoluteTimeGetCurrent();
  self->_dataCheckTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"_dataCheckTimeoutExpired" selector:0 userInfo:0 repeats:20.0];
  self->_slowLoadTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"_slowLoadTimeoutExpired" selector:0 userInfo:0 repeats:60.0];
}

- (void)cancelLoad
{
  if (self->_isLoading)
  {
    self->_fetcherInitiatedLoadCancel = 1;
    if (self->_finishedLoadingMainFrame)
    {
      [(ReadingListFetcherDocument *)self _didCancelLoad];
    }

    else
    {
      [(WKWebView *)self->_webView stopLoading];
    }
  }
}

- (void)_didCancelLoad
{
  v3 = sub_100009E64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AEF4();
  }

  self->_isLoading = 0;
  [+[ReadingListFetcher sharedReadingListFetcher](ReadingListFetcher "sharedReadingListFetcher")];
  [(ReadingListFetcherDocument *)self finishFetchingDocument];
}

- (void)didFinishLoadingAllReaderPages
{
  readerPageTimer = self->_readerPageTimer;
  if (readerPageTimer)
  {
    [(NSTimer *)readerPageTimer invalidate];

    self->_readerPageTimer = 0;
  }

  if ([(ReadingListFetcherDocument *)self _shouldArchiveBookmarkWithID:[(WebBookmark *)self->_bookmark identifier]])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100008418;
    v4[3] = &unk_10001C900;
    v4[4] = self;
    [(ReadingListFetcherDocument *)self _writeOfflineWebViewWithOptions:3 completion:v4];
  }

  else
  {

    [(ReadingListFetcherDocument *)self _saveAndSelfExpire];
  }
}

- (void)_didCollectReadingListInfo:(id)info withAvailability:(BOOL)availability
{
  v7 = [info objectForKey:@"mainImageURL"];
  if (![(WebBookmark *)self->_bookmark iconData])
  {
    if ([v7 length])
    {
      v10 = [NSURL safari_URLWithUserTypedString:v7];
      if (v10)
      {
        v11 = v10;
        v12 = sub_100009E64();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_10000AF28();
        }

        v13 = [[SiteIconDownloadRequest alloc] initWithBookmark:self->_bookmark singleResourceURL:v11];
        self->_thumbnailDownloadRequest = v13;
        [(SiteIconDownloadRequest *)v13 setDelegate:self];
        [(SiteIconDownloadRequest *)self->_thumbnailDownloadRequest start];
      }
    }
  }

  v8 = [info objectForKey:@"previewText"];
  if ([(WebBookmark *)self->_bookmark isAddedLocally])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && ([-[WebBookmark previewText](self->_bookmark "previewText")] & 1) == 0)
  {
    [+[ReadingListFetcher sharedReadingListFetcher](ReadingListFetcher "sharedReadingListFetcher")];
  }

  if ([(WebBookmark *)self->_bookmark previewText])
  {
    if (availability)
    {
LABEL_10:
      [(_SFReaderController *)self->_readerContext setUpReaderWebViewIfNeededAndPerformBlock:0];
      [+[ReadingListFetcher sharedReadingListFetcher](ReadingListFetcher "sharedReadingListFetcher")];
      self->_readerPageTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"_readerPageTimeoutExpired" selector:0 userInfo:0 repeats:60.0];
      return;
    }
  }

  else
  {
    [(WebBookmark *)self->_bookmark setLocalPreviewText:v8];
    if (availability)
    {
      goto LABEL_10;
    }
  }

  if (self->_mainPageArchived)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  [(WebBookmark *)self->_bookmark setArchiveStatus:v14];
  [(ReadingListFetcherDocument *)self _saveAndSelfExpire];
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  self->_suggestedFileName = 0;

  self->_quickLookFilePath = 0;
}

- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  if ([response isForMainFrame])
  {
    self->_suggestedFileName = [objc_msgSend(objc_msgSend(response "response")];
  }

  v8 = *(handler + 2);

  v8(handler, 1);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  selfCopy = self;
  self->_finishedLoadingMainFrame = 1;
  [(ReadingListFetcherDocument *)self _didFinishLoadingSubpage];
  slowLoadTimer = self->_slowLoadTimer;
  if (slowLoadTimer)
  {
    [(NSTimer *)slowLoadTimer invalidate];

    self->_slowLoadTimer = 0;
  }

  dataCheckTimer = self->_dataCheckTimer;
  if (dataCheckTimer)
  {
    [(NSTimer *)dataCheckTimer invalidate];

    self->_dataCheckTimer = 0;
  }

  _MIMEType = [view _MIMEType];
  v10 = [_MIMEType hasPrefix:@"text/"];
  if (v10 & 1) != 0 || ([_MIMEType isEqualToString:@"application/pdf"] & 1) != 0 || (+[WebMIMETypeRegistry isSupportedImageMIMEType:](WebMIMETypeRegistry, "isSupportedImageMIMEType:", _MIMEType) & 1) != 0 || (+[WebMIMETypeRegistry isSupportedMediaMIMEType:](WebMIMETypeRegistry, "isSupportedMediaMIMEType:", _MIMEType))
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v13 = sub_1000088DC;
    v14 = &unk_10001C928;
    v18 = v10;
    selfCopy2 = self;
    v16 = _MIMEType;
    viewCopy = view;
    if ([(ReadingListFetcherDocument *)self _shouldArchiveBookmarkWithID:[(WebBookmark *)self->_bookmark identifier]])
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000089C8;
      v11[3] = &unk_10001C950;
      v11[4] = self;
      v11[5] = v12;
      [(ReadingListFetcherDocument *)self _writeOfflineWebViewWithOptions:v10 completion:v11];
    }

    else
    {
      v13(v12);
    }
  }

  else
  {
    [(WebBookmark *)self->_bookmark setArchiveStatus:4];

    [(ReadingListFetcherDocument *)self _saveAndSelfExpire];
  }
}

- (void)_navigationFailedWithError:(id)error
{
  selfCopy = self;
  code = [error code];
  if (code == -999)
  {
    if (!self->_fetcherInitiatedLoadCancel)
    {
      return;
    }

    slowLoadTimer = self->_slowLoadTimer;
    if (slowLoadTimer)
    {
      [(NSTimer *)slowLoadTimer invalidate];

      self->_slowLoadTimer = 0;
    }

    dataCheckTimer = self->_dataCheckTimer;
    if (dataCheckTimer)
    {
      [(NSTimer *)dataCheckTimer invalidate];

      self->_dataCheckTimer = 0;
    }

    if (!self->_fetcherInitiatedLoadCancel)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v9 = code;
    v10 = self->_slowLoadTimer;
    if (v10)
    {
      [(NSTimer *)v10 invalidate];

      self->_slowLoadTimer = 0;
    }

    v11 = self->_dataCheckTimer;
    if (v11)
    {
      [(NSTimer *)v11 invalidate];

      self->_dataCheckTimer = 0;
    }

    if (v9 != -1005 && v9 != -1009)
    {
LABEL_18:
      v12 = sub_100009E64();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10000AF5C(error, v12);
      }

      [(ReadingListFetcherDocument *)self _loadDidFail];
      return;
    }
  }

  [(ReadingListFetcherDocument *)self _didCancelLoad];
}

- (void)readerController:(id)controller didDetermineReaderAvailability:(id)availability dueTo:(int64_t)to
{
  readerContext = self->_readerContext;
  v8 = [(WebBookmark *)self->_bookmark identifier:controller];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008BA8;
  v9[3] = &unk_10001C978;
  v9[4] = self;
  v9[5] = availability;
  [(_SFReaderController *)readerContext collectReadingListInfoWithBookmarkID:v8 completionHandler:v9];
}

- (void)createReaderWebViewForReaderController:(id)controller
{
  configuration = [(WKWebView *)self->_webView configuration];
  v5 = objc_alloc_init(WKWebViewConfiguration);
  [v5 _setAlternateWebViewForNavigationGestures:self->_webView];
  [v5 _setAttributedBundleIdentifier:{-[WKWebViewConfiguration _attributedBundleIdentifier](configuration, "_attributedBundleIdentifier")}];
  [v5 _setClientNavigationsRunAtForegroundPriority:1];
  [v5 _setGroupIdentifier:_SFReaderPageGroupIdentifier];
  [v5 _setNeedsStorageAccessFromFileURLsQuirk:0];
  [v5 setApplicationNameForUserAgent:_SFApplicationNameForUserAgent()];
  [v5 setProcessPool:{-[WKWebViewConfiguration processPool](configuration, "processPool")}];
  [v5 setWebsiteDataStore:{-[WKWebViewConfiguration websiteDataStore](configuration, "websiteDataStore")}];
  [v5 _setRelatedWebView:self->_webView];
  v6 = [WKWebView alloc];
  GSMainScreenPointSize();
  v9 = [v6 initWithFrame:v5 configuration:{0.0, 0.0, v7, v8}];
  self->_readerWebView = v9;
  [(WKWebView *)v9 setInspectable:0];

  v10 = _SFCustomUserAgentStringIfNeeded();
  if (v10)
  {
    [(WKWebView *)self->_readerWebView setCustomUserAgent:v10];
  }

  [(WKWebView *)self->_readerWebView _grantAccessToAssetServices];
  [(WKWebView *)self->_readerWebView _setBackgroundExtendsBeyondPage:1];
  -[_SFReaderController setReaderInitialTopScrollOffset:configuration:isViewingArchive:](self->_readerContext, "setReaderInitialTopScrollOffset:configuration:isViewingArchive:", 0, [-[_SFReaderController configurationManager](self->_readerContext "configurationManager")], 0);
  [(WKWebView *)self->_readerWebView setNavigationDelegate:self->_readerContext];
  [(WKWebView *)self->_readerWebView setUIDelegate:self->_readerContext];
  [(_SFReaderController *)self->_readerContext didCreateReaderWebView:self->_readerWebView];
  readerURL = [(_SFReaderController *)self->_readerContext readerURL];
  v12 = sub_100009E64();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AFE4();
  }

  [(WKWebView *)self->_readerWebView loadRequest:[NSURLRequest safari_nonAppInitiatedRequestWithURL:readerURL]];
}

- (void)_cleanUpAfterIconDownloadRequestCompletion
{
  [(SiteIconDownloadRequest *)self->_thumbnailDownloadRequest setDelegate:0];

  self->_thumbnailDownloadRequest = 0;
  if (self->_completionPendingThumbnail)
  {

    [(ReadingListFetcherDocument *)self _saveAndSelfExpire];
  }
}

- (void)siteIconDownloadRequestDidFail:(id)fail
{
  if (self->_thumbnailDownloadRequest == fail)
  {
    [(WebBookmark *)self->_bookmark setFetchedIconData:1];

    [(ReadingListFetcherDocument *)self _cleanUpAfterIconDownloadRequestCompletion];
  }
}

- (void)siteIconDownloadRequest:(id)request didLoadIconData:(id)data withIconURL:(id)l
{
  if (self->_thumbnailDownloadRequest == request)
  {
    v8 = [WBSImageUtilities readingListThumbnailDataFromImage:[UIImage imageWithData:data]];
    if (v8)
    {
      [+[WebBookmarkCollection safariBookmarkCollection](WebBookmarkCollection "safariBookmarkCollection")];
    }

    [(ReadingListFetcherDocument *)self _cleanUpAfterIconDownloadRequestCompletion];
  }
}

- (void)siteIconDownloadRequest:(id)request didComputeIconKeyColor:(id)color
{
  if (self->_thumbnailDownloadRequest == request)
  {
    [(ReadingListFetcherDocument *)self _cleanUpAfterIconDownloadRequestCompletion];
  }
}

@end