@interface W5PeerSensingListener
- (BOOL)handleClientRequest:(id)a3;
- (BOOL)performSensing:(id)a3 error:(id *)a4;
- (W5PeerSensingListener)initWithInterface:(id)a3;
@end

@implementation W5PeerSensingListener

- (W5PeerSensingListener)initWithInterface:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = W5PeerSensingListener;
  v6 = [(W5PeerSensingListener *)&v10 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_interface, a3), !v7->_interface))
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

- (BOOL)handleClientRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(W5PeerSensingResponsePayload);
  v6 = [v4 options];

  if (v6)
  {
    v7 = objc_alloc_init(CWFSensingParameters);
    v8 = [v4 options];
    v9 = [v8 objectForKeyedSubscript:@"numberOfReports"];
    [v7 setNumberOfReports:{objc_msgSend(v9, "intValue")}];

    v10 = [v4 options];
    v11 = [v10 objectForKeyedSubscript:@"placeLabels"];
    [v7 setPlaceLabels:v11];

    v12 = [v4 options];
    v13 = [v12 objectForKeyedSubscript:@"activityLabels"];
    [v7 setActivityLabels:v13];

    v14 = [v4 options];
    v15 = [v14 objectForKeyedSubscript:@"submitMetric"];
    [v7 setSubmitMetric:{objc_msgSend(v15, "intValue") != 0}];

    v16 = sub_100098A04();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      [v7 description];
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
    v17 = [(W5PeerSensingListener *)self performSensing:v7 error:&v23];
    v18 = v23;
    [(W5PeerSensingResponsePayload *)v5 setResult:v17];
    v19 = [v18 localizedDescription];

    [(W5PeerSensingResponsePayload *)v5 setErrorStr:v19];
    v20 = [v4 handler];
    (v20)[2](v20, v5, 0);
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
    v7 = [v4 handler];
    (*(v7 + 2))(v7, v5, 0);
  }

  return v6 != 0;
}

- (BOOL)performSensing:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(W5PeerSensingListener *)self interface];
    v12 = [v8 networkName];
    _os_log_send_and_compose_impl();
  }

  v9 = [(W5PeerSensingListener *)self interface];
  v10 = [v9 performSensingWithParameters:v6 error:a4];

  return v10 != 0;
}

@end