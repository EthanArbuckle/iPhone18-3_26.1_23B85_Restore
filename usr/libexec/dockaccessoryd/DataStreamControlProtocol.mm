@interface DataStreamControlProtocol
- (BOOL)isExpectedHelloControlMessage:(id)message header:(id)header;
- (DataStreamControlProtocol)initWithLogIdentifier:(id)identifier;
- (void)_sendHelloMessageOnDataStream:(id)stream;
- (void)_sendVersionRequestOnDataStream:(id)stream;
- (void)dataStream:(id)stream didReceiveRequest:(id)request header:(id)header payload:(id)payload;
- (void)dataStream:(id)stream didReceiveResponse:(id)response header:(id)header payload:(id)payload;
- (void)dataStreamDidOpen:(id)open;
@end

@implementation DataStreamControlProtocol

- (DataStreamControlProtocol)initWithLogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = DataStreamControlProtocol;
  v5 = [(DataStreamControlProtocol *)&v12 init];
  v6 = v5;
  if (v5)
  {
    pendingHelloMessageIdentifier = v5->_pendingHelloMessageIdentifier;
    v5->_pendingHelloMessageIdentifier = 0;

    *&v6->_helloMessageResponseReceived = 0;
    v8 = [identifierCopy copy];
    logIdentifier = v6->_logIdentifier;
    v6->_logIdentifier = v8;

    peerDataStreamProtocolVersion = v6->_peerDataStreamProtocolVersion;
    v6->_peerDataStreamProtocolVersion = &off_100282438;
  }

  return v6;
}

- (void)dataStreamDidOpen:(id)open
{
  selfCopy = self;
  openCopy = open;
  v6 = sub_10007FAA0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = sub_10007FAFC(selfCopy);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@Sending hello control message", &v8, 0xCu);
  }

  [(DataStreamControlProtocol *)selfCopy _sendHelloMessageOnDataStream:openCopy];
}

- (void)dataStream:(id)stream didReceiveRequest:(id)request header:(id)header payload:(id)payload
{
  streamCopy = stream;
  requestCopy = request;
  headerCopy = header;
  payloadCopy = payload;
  if ([requestCopy isEqual:@"hello"])
  {
    selfCopy = self;
    v15 = sub_10007FAA0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = sub_10007FAFC(selfCopy);
      v26 = 138543362;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Hello control message received", &v26, 0xCu);
    }

    [streamCopy sendResponseForRequestHeader:headerCopy payload:&__NSDictionary0__struct status:0 completion:&stru_100274938];
  }

  else
  {
    v17 = [requestCopy isEqual:@"version"];
    selfCopy2 = self;
    v19 = sub_10007FAA0();
    v20 = v19;
    if (v17)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = sub_10007FAFC(selfCopy2);
        v26 = 138543362;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@Version control message received", &v26, 0xCu);
      }

      v22 = [payloadCopy objectForKey:@"version"];

      if (v22)
      {
        v23 = [payloadCopy objectForKey:@"version"];
        peerDataStreamProtocolVersion = selfCopy2->_peerDataStreamProtocolVersion;
        selfCopy2->_peerDataStreamProtocolVersion = v23;
      }

      v30 = @"version";
      v31 = &off_100282428;
      selfCopy2 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [streamCopy sendResponseForRequestHeader:headerCopy payload:selfCopy2 status:0 completion:&stru_100274958];
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v25 = sub_10007FAFC(selfCopy2);
        v26 = 138543618;
        v27 = v25;
        v28 = 2112;
        v29 = requestCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@Control Protocol received unexpected request '%@'", &v26, 0x16u);
      }
    }
  }
}

- (BOOL)isExpectedHelloControlMessage:(id)message header:(id)header
{
  headerCopy = header;
  if (![message isEqual:@"hello"])
  {
    goto LABEL_5;
  }

  pendingHelloMessageIdentifier = [(DataStreamControlProtocol *)self pendingHelloMessageIdentifier];

  if (!pendingHelloMessageIdentifier)
  {
    goto LABEL_5;
  }

  v8 = [headerCopy objectForKeyedSubscript:@"id"];
  pendingHelloMessageIdentifier2 = [(DataStreamControlProtocol *)self pendingHelloMessageIdentifier];
  v10 = [v8 isEqual:pendingHelloMessageIdentifier2];

  if (v10)
  {
    v11 = [headerCopy objectForKeyedSubscript:@"status"];
    v12 = [v11 isEqual:&off_1002823F8];
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (void)dataStream:(id)stream didReceiveResponse:(id)response header:(id)header payload:(id)payload
{
  streamCopy = stream;
  responseCopy = response;
  payloadCopy = payload;
  if ([(DataStreamControlProtocol *)self isExpectedHelloControlMessage:responseCopy header:header])
  {
    selfCopy = self;
    v14 = sub_10007FAA0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = sub_10007FAFC(selfCopy);
      v26 = 138543362;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%{public}@Hello control message reply received", &v26, 0xCu);
    }

    if (![(DataStreamControlProtocol *)selfCopy helloMessageResponseReceived])
    {
      v16 = [payloadCopy objectForKey:@"capability-version"];

      if (v16)
      {
        [(DataStreamControlProtocol *)selfCopy _sendVersionRequestOnDataStream:streamCopy];
      }

      else
      {
        selfCopy->_controlHandshakeComplete = 1;
      }
    }

    [(DataStreamControlProtocol *)selfCopy setHelloMessageResponseReceived:1];
    [(DataStreamControlProtocol *)selfCopy setPendingHelloMessageIdentifier:0];
  }

  else
  {
    v17 = [responseCopy isEqual:@"version"];
    selfCopy2 = self;
    v19 = sub_10007FAA0();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v17)
    {
      if (v20)
      {
        v21 = sub_10007FAFC(selfCopy2);
        v26 = 138543618;
        v27 = v21;
        v28 = 2112;
        v29 = payloadCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}@Received Peer Request Version Response %@", &v26, 0x16u);
      }

      v22 = [payloadCopy objectForKey:@"version"];

      if (v22)
      {
        v23 = [payloadCopy objectForKey:@"version"];
        peerDataStreamProtocolVersion = selfCopy2->_peerDataStreamProtocolVersion;
        selfCopy2->_peerDataStreamProtocolVersion = v23;
      }

      selfCopy2->_controlHandshakeComplete = 1;
    }

    else
    {
      if (v20)
      {
        v25 = sub_10007FAFC(selfCopy2);
        v26 = 138543362;
        v27 = v25;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}@Expected hello reply or Version but got something else", &v26, 0xCu);
      }
    }
  }
}

- (void)_sendHelloMessageOnDataStream:(id)stream
{
  streamCopy = stream;
  v5 = sub_100010CB8();
  v6 = [[NSNumber alloc] initWithUnsignedInt:v5];
  [(DataStreamControlProtocol *)self setPendingHelloMessageIdentifier:v6];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000852C4;
  v7[3] = &unk_1002739F0;
  v7[4] = self;
  [streamCopy sendRequestForProtocol:@"control" topic:@"hello" identifier:v5 payload:&__NSDictionary0__struct completion:v7];
}

- (void)_sendVersionRequestOnDataStream:(id)stream
{
  streamCopy = stream;
  v5 = sub_100010CB8();
  v8 = @"version";
  v9 = &off_100282428;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000854E8;
  v7[3] = &unk_1002739F0;
  v7[4] = self;
  [streamCopy sendRequestForProtocol:@"control" topic:@"version" identifier:v5 payload:v6 completion:v7];
}

@end