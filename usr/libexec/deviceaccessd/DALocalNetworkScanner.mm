@interface DALocalNetworkScanner
- (DALocalNetworkScanner)initWithConfiguration:(id)a3 error:(id *)a4;
- (void)_browserResultChangedFromOldResult:(id)a3 newResult:(id)a4 batchComplete:(BOOL)a5;
- (void)_handleBrowseResults:(id)a3;
- (void)discoverEndpointWithCompletion:(id)a3;
@end

@implementation DALocalNetworkScanner

- (DALocalNetworkScanner)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bonjourServiceTypes];
  v8 = [v7 count];

  if (v8 <= 1)
  {
    if (a4)
    {
      DAErrorF();
      *a4 = v11 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v13.receiver = self;
  v13.super_class = DALocalNetworkScanner;
  self = [(DALocalNetworkScanner *)&v13 init];
  if (!self)
  {
    goto LABEL_6;
  }

  v9 = [v6 copy];
  discoveryConfiguration = self->_discoveryConfiguration;
  self->_discoveryConfiguration = v9;

  objc_storeStrong(&self->_dispatchQueue, &_dispatch_main_q);
  self = self;
  v11 = self;
LABEL_7:

  return v11;
}

- (void)discoverEndpointWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DALocalNetworkScanner *)self discoveryConfiguration];
  v6 = [v5 bonjourServiceTypes];
  v7 = [v6 firstObject];

  v8 = nw_parameters_create();
  nw_parameters_set_include_peer_to_peer(v8, 1);
  bonjour_service = nw_browse_descriptor_create_bonjour_service([v7 utf8ValueSafe], "local");
  nw_browse_descriptor_set_include_txt_record(bonjour_service, 1);
  v10 = nw_browser_create(bonjour_service, v8);
  browser = self->_browser;
  self->_browser = v10;

  if (self->_browser)
  {
    objc_initWeak(&location, self);
    v12 = self->_browser;
    state_changed_handler[0] = _NSConcreteStackBlock;
    state_changed_handler[1] = 3221225472;
    state_changed_handler[2] = sub_100001D08;
    state_changed_handler[3] = &unk_100058A90;
    objc_copyWeak(&v18, &location);
    nw_browser_set_state_changed_handler(v12, state_changed_handler);
    v13 = self->_browser;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001D74;
    handler[3] = &unk_100058AB8;
    objc_copyWeak(&v16, &location);
    nw_browser_set_browse_results_changed_handler(v13, handler);
    [(DALocalNetworkScanner *)self setCompletionHandler:v4];
    nw_browser_set_queue(self->_browser, self->_dispatchQueue);
    nw_browser_start(self->_browser);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    if (dword_100060190 <= 90 && (dword_100060190 != -1 || _LogCategory_Initialize()))
    {
      sub_10002EA78();
    }

    v14 = DAErrorF();
    v4[2](v4, 0, v14);
  }
}

- (void)_handleBrowseResults:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (([v9 change] & 2) != 0)
        {
          v10 = [v9 freshResult];
          v11 = nw_browse_result_copy_endpoint(v10);

          if (dword_100060190 <= 50 && (dword_100060190 != -1 || _LogCategory_Initialize()))
          {
            sub_10002EA98();
          }

          v12 = [(DALocalNetworkScanner *)self completionHandler];
          (v12)[2](v12, v11, 0);

          nw_browser_cancel(self->_browser);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v13 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v6 = v13;
    }

    while (v13);
  }
}

- (void)_browserResultChangedFromOldResult:(id)a3 newResult:(id)a4 batchComplete:(BOOL)a5
{
  v5 = a5;
  old_result = a3;
  v8 = a4;
  changes = nw_browse_result_get_changes(old_result, v8);
  if (changes <= 1)
  {
    v10 = [[DABonjourBrowserResultChanges alloc] initWithOldResult:old_result freshResult:v8 change:changes];
    v11 = [(DALocalNetworkScanner *)self resultChanges];
    [v11 addObject:v10];

    if (v5)
    {
      v12 = [(DALocalNetworkScanner *)self resultChanges];
      v13 = [v12 copy];

      v14 = [(DALocalNetworkScanner *)self resultChanges];
      [v14 removeAllObjects];

      [(DALocalNetworkScanner *)self _handleBrowseResults:v13];
    }
  }
}

@end