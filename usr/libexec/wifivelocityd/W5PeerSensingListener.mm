@interface W5PeerSensingListener
- (BOOL)handleClientRequest:(id)request;
- (BOOL)performSensing:(id)sensing error:(id *)error;
- (W5PeerSensingListener)initWithInterface:(id)interface;
@end

@implementation W5PeerSensingListener

- (W5PeerSensingListener)initWithInterface:(id)interface
{
  interfaceCopy = interface;
  v10.receiver = self;
  v10.super_class = W5PeerSensingListener;
  v6 = [(W5PeerSensingListener *)&v10 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_interface, interface), !v7->_interface))
  {

    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[W5PeerSensingListener initWithInterface:]";
      v13 = 2080;
      v14 = "W5PeerSensingListener.m";
      v15 = 1024;
      v16 = 35;
      _os_log_send_and_compose_impl();
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)handleClientRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(W5PeerSensingResponsePayload);
  options = [requestCopy options];

  if (options)
  {
    handler2 = objc_alloc_init(CWFSensingParameters);
    options2 = [requestCopy options];
    v9 = [options2 objectForKeyedSubscript:@"numberOfReports"];
    [handler2 setNumberOfReports:{objc_msgSend(v9, "intValue")}];

    options3 = [requestCopy options];
    v11 = [options3 objectForKeyedSubscript:@"placeLabels"];
    [handler2 setPlaceLabels:v11];

    options4 = [requestCopy options];
    v13 = [options4 objectForKeyedSubscript:@"activityLabels"];
    [handler2 setActivityLabels:v13];

    options5 = [requestCopy options];
    v15 = [options5 objectForKeyedSubscript:@"submitMetric"];
    [handler2 setSubmitMetric:{objc_msgSend(v15, "intValue") != 0}];

    v16 = sub_100098A04();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      [handler2 description];
      v24 = 136315906;
      v25 = "[W5PeerSensingListener handleClientRequest:]";
      v26 = 2080;
      v27 = "W5PeerSensingListener.m";
      v28 = 1024;
      v29 = 58;
      v31 = v30 = 2114;
      _os_log_send_and_compose_impl();
    }

    v23 = 0;
    v17 = [(W5PeerSensingListener *)self performSensing:handler2 error:&v23];
    v18 = v23;
    [(W5PeerSensingResponsePayload *)v5 setResult:v17];
    localizedDescription = [v18 localizedDescription];

    [(W5PeerSensingResponsePayload *)v5 setErrorStr:localizedDescription];
    handler = [requestCopy handler];
    (handler)[2](handler, v5, 0);
  }

  else
  {
    v21 = sub_100098A04();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315650;
      v25 = "[W5PeerSensingListener handleClientRequest:]";
      v26 = 2080;
      v27 = "W5PeerSensingListener.m";
      v28 = 1024;
      v29 = 45;
      _os_log_send_and_compose_impl();
    }

    [(W5PeerSensingResponsePayload *)v5 setResult:0];
    [(W5PeerSensingResponsePayload *)v5 setErrorStr:@"empty request dictionary"];
    handler2 = [requestCopy handler];
    (*(handler2 + 2))(handler2, v5, 0);
  }

  return options != 0;
}

- (BOOL)performSensing:(id)sensing error:(id *)error
{
  sensingCopy = sensing;
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    interface = [(W5PeerSensingListener *)self interface];
    networkName = [interface networkName];
    _os_log_send_and_compose_impl();
  }

  interface2 = [(W5PeerSensingListener *)self interface];
  v10 = [interface2 performSensingWithParameters:sensingCopy error:error];

  return v10 != 0;
}

@end