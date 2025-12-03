@interface W5PeerDiagnosticsListener
- (BOOL)handleClientRequest:(id)request;
- (W5PeerDiagnosticsListener)initWithDiagnosticsManager:(id)manager;
- (id)_runDiagnostics:(id)diagnostics uuid:(id)uuid configuration:(id)configuration;
@end

@implementation W5PeerDiagnosticsListener

- (W5PeerDiagnosticsListener)initWithDiagnosticsManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = W5PeerDiagnosticsListener;
  v6 = [(W5PeerDiagnosticsListener *)&v10 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_diagnosticsManager, manager), !v7->_diagnosticsManager))
  {

    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[W5PeerDiagnosticsListener initWithDiagnosticsManager:]";
      v13 = 2080;
      v14 = "W5PeerDiagnosticsListener.m";
      v15 = 1024;
      v16 = 36;
      _os_log_send_and_compose_impl();
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)handleClientRequest:(id)request
{
  requestCopy = request;
  payload = [requestCopy payload];
  v6 = payload;
  if (payload)
  {
    version = [payload version];
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136316418;
      v22 = "[W5PeerDiagnosticsListener handleClientRequest:]";
      v23 = 2080;
      v24 = "W5PeerDiagnosticsListener.m";
      v25 = 1024;
      v26 = 45;
      v27 = 2114;
      v28 = requestCopy;
      v29 = 2114;
      v30 = v6;
      v31 = 2114;
      v32 = version;
      LODWORD(v20) = 58;
      v19 = &v21;
      _os_log_send_and_compose_impl();
    }

    v9 = objc_alloc_init(W5PeerDiagnosticsResponsePayload);
    v10 = [NSNumber numberWithInteger:[(W5PeerDiagnosticsListener *)self currentVersion]];
    [(W5PeerDiagnosticsResponsePayload *)v9 setVersion:v10];

    [(W5PeerDiagnosticsResponsePayload *)v9 setStatus:1];
    tests = [v6 tests];
    configuration = [v6 configuration];
    uuid = [v6 uuid];
    v14 = [(W5PeerDiagnosticsListener *)self _runDiagnostics:tests uuid:uuid configuration:configuration];
    v15 = [v14 objectForKey:@"testResults"];
    if (v15)
    {
      [(W5PeerDiagnosticsResponsePayload *)v9 setResults:v15];
    }

    else
    {
      v16 = [v14 objectForKey:@"testError"];
      [(W5PeerDiagnosticsResponsePayload *)v9 setError:v16];
    }

    handler = [requestCopy handler];
    (handler)[2](handler, v9, 0);
  }

  return 1;
}

- (id)_runDiagnostics:(id)diagnostics uuid:(id)uuid configuration:(id)configuration
{
  diagnosticsCopy = diagnostics;
  uuidCopy = uuid;
  configurationCopy = configuration;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_10001E998;
  v52 = sub_10001E9A8;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_10001E998;
  v46 = sub_10001E9A8;
  v47 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v11 = objc_alloc_init(NSLock);
  v12 = dispatch_semaphore_create(0);
  v13 = objc_alloc_init(W5DiagnosticsTestRequestInternal);
  [(W5DiagnosticsTestRequestInternal *)v13 setUuid:uuidCopy];
  [(W5DiagnosticsTestRequestInternal *)v13 setTestRequests:diagnosticsCopy];
  [(W5DiagnosticsTestRequestInternal *)v13 setConfiguration:configurationCopy];
  v14 = [configurationCopy objectForKeyedSubscript:@"IncludeEvents"];
  -[W5DiagnosticsTestRequestInternal setIncludeEvents:](v13, "setIncludeEvents:", [v14 BOOLValue]);

  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_10001E9B0;
  v31 = &unk_1000E1C20;
  v15 = v11;
  v32 = v15;
  v34 = v40;
  v35 = v38;
  v36 = &v42;
  v37 = &v48;
  v16 = v12;
  v33 = v16;
  [(W5DiagnosticsTestRequestInternal *)v13 setReply:&v28];
  [(W5DiagnosticsManager *)self->_diagnosticsManager addRequest:v13];
  v17 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v16, v17) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v59 = 0x404E000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  if (v43[5])
  {
    v18 = sub_100098A04();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v43[5];
      *buf = 136315906;
      v59 = "[W5PeerDiagnosticsListener _runDiagnostics:uuid:configuration:]";
      v60 = 2080;
      v61 = "W5PeerDiagnosticsListener.m";
      v62 = 1024;
      v63 = 116;
      v64 = 2114;
      v65 = v19;
      LODWORD(v27) = 38;
      v26 = buf;
      _os_log_send_and_compose_impl();
    }

    v20 = v43[5];
    v56 = @"testError";
    v57 = v20;
    v21 = &v56;
    v22 = &v57;
  }

  else
  {
    v23 = v49[5];
    v54 = @"testResults";
    v55 = v23;
    v21 = &v54;
    v22 = &v55;
  }

  v24 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:1, v26, v27, v28, v29, v30, v31];

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);

  return v24;
}

@end