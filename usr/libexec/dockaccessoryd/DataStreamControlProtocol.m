@interface DataStreamControlProtocol
- (BOOL)isExpectedHelloControlMessage:(id)a3 header:(id)a4;
- (DataStreamControlProtocol)initWithLogIdentifier:(id)a3;
- (void)_sendHelloMessageOnDataStream:(id)a3;
- (void)_sendVersionRequestOnDataStream:(id)a3;
- (void)dataStream:(id)a3 didReceiveRequest:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStream:(id)a3 didReceiveResponse:(id)a4 header:(id)a5 payload:(id)a6;
- (void)dataStreamDidOpen:(id)a3;
@end

@implementation DataStreamControlProtocol

- (DataStreamControlProtocol)initWithLogIdentifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DataStreamControlProtocol;
  v5 = [(DataStreamControlProtocol *)&v12 init];
  v6 = v5;
  if (v5)
  {
    pendingHelloMessageIdentifier = v5->_pendingHelloMessageIdentifier;
    v5->_pendingHelloMessageIdentifier = 0;

    *&v6->_helloMessageResponseReceived = 0;
    v8 = [v4 copy];
    logIdentifier = v6->_logIdentifier;
    v6->_logIdentifier = v8;

    peerDataStreamProtocolVersion = v6->_peerDataStreamProtocolVersion;
    v6->_peerDataStreamProtocolVersion = &off_100282438;
  }

  return v6;
}

- (void)dataStreamDidOpen:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(v4);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Sending hello control message", &v8, 0xCu);
  }

  [(DataStreamControlProtocol *)v4 _sendHelloMessageOnDataStream:v5];
}

- (void)dataStream:(id)a3 didReceiveRequest:(id)a4 header:(id)a5 payload:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 isEqual:@"hello"])
  {
    v14 = self;
    v15 = sub_10007FAA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = sub_10007FAFC(v14);
      v26 = 138543362;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Hello control message received", &v26, 0xCu);
    }

    [v10 sendResponseForRequestHeader:v12 payload:&__NSDictionary0__struct status:0 completion:&stru_100274938];
  }

  else
  {
    v17 = [v11 isEqual:@"version"];
    v18 = self;
    v19 = sub_10007FAA0();
    v20 = v19;
    if (v17)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = sub_10007FAFC(v18);
        v26 = 138543362;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@Version control message received", &v26, 0xCu);
      }

      v22 = [v13 objectForKey:@"version"];

      if (v22)
      {
        v23 = [v13 objectForKey:@"version"];
        peerDataStreamProtocolVersion = v18->_peerDataStreamProtocolVersion;
        v18->_peerDataStreamProtocolVersion = v23;
      }

      v30 = @"version";
      v31 = &off_100282428;
      v18 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [v10 sendResponseForRequestHeader:v12 payload:v18 status:0 completion:&stru_100274958];
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v25 = sub_10007FAFC(v18);
        v26 = 138543618;
        v27 = v25;
        v28 = 2112;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@Control Protocol received unexpected request '%@'", &v26, 0x16u);
      }
    }
  }
}

- (BOOL)isExpectedHelloControlMessage:(id)a3 header:(id)a4
{
  v6 = a4;
  if (![a3 isEqual:@"hello"])
  {
    goto LABEL_5;
  }

  v7 = [(DataStreamControlProtocol *)self pendingHelloMessageIdentifier];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 objectForKeyedSubscript:@"id"];
  v9 = [(DataStreamControlProtocol *)self pendingHelloMessageIdentifier];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:@"status"];
    v12 = [v11 isEqual:&off_1002823F8];
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (void)dataStream:(id)a3 didReceiveResponse:(id)a4 header:(id)a5 payload:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(DataStreamControlProtocol *)self isExpectedHelloControlMessage:v11 header:a5])
  {
    v13 = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = sub_10007FAFC(v13);
      v26 = 138543362;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@Hello control message reply received", &v26, 0xCu);
    }

    if (![(DataStreamControlProtocol *)v13 helloMessageResponseReceived])
    {
      v16 = [v12 objectForKey:@"capability-version"];

      if (v16)
      {
        [(DataStreamControlProtocol *)v13 _sendVersionRequestOnDataStream:v10];
      }

      else
      {
        v13->_controlHandshakeComplete = 1;
      }
    }

    [(DataStreamControlProtocol *)v13 setHelloMessageResponseReceived:1];
    [(DataStreamControlProtocol *)v13 setPendingHelloMessageIdentifier:0];
  }

  else
  {
    v17 = [v11 isEqual:@"version"];
    v18 = self;
    v19 = sub_10007FAA0();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v17)
    {
      if (v20)
      {
        v21 = sub_10007FAFC(v18);
        v26 = 138543618;
        v27 = v21;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}@Received Peer Request Version Response %@", &v26, 0x16u);
      }

      v22 = [v12 objectForKey:@"version"];

      if (v22)
      {
        v23 = [v12 objectForKey:@"version"];
        peerDataStreamProtocolVersion = v18->_peerDataStreamProtocolVersion;
        v18->_peerDataStreamProtocolVersion = v23;
      }

      v18->_controlHandshakeComplete = 1;
    }

    else
    {
      if (v20)
      {
        v25 = sub_10007FAFC(v18);
        v26 = 138543362;
        v27 = v25;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}@Expected hello reply or Version but got something else", &v26, 0xCu);
      }
    }
  }
}

- (void)_sendHelloMessageOnDataStream:(id)a3
{
  v4 = a3;
  v5 = sub_100010CB8();
  v6 = [[NSNumber alloc] initWithUnsignedInt:v5];
  [(DataStreamControlProtocol *)self setPendingHelloMessageIdentifier:v6];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000852C4;
  v7[3] = &unk_1002739F0;
  v7[4] = self;
  [v4 sendRequestForProtocol:@"control" topic:@"hello" identifier:v5 payload:&__NSDictionary0__struct completion:v7];
}

- (void)_sendVersionRequestOnDataStream:(id)a3
{
  v4 = a3;
  v5 = sub_100010CB8();
  v8 = @"version";
  v9 = &off_100282428;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000854E8;
  v7[3] = &unk_1002739F0;
  v7[4] = self;
  [v4 sendRequestForProtocol:@"control" topic:@"version" identifier:v5 payload:v6 completion:v7];
}

@end