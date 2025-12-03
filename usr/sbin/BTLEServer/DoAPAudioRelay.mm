@interface DoAPAudioRelay
- (BOOL)isHubConnected;
- (DoAPAudioRelay)initWithIdentifier:(id)identifier deviceType:(int64_t)type properties:(id)properties codecType:(unsigned __int8)codecType hub:(id)hub;
- (DoAPAudioRelayHub)hub;
- (DoAPAudioRelaySource)delegate;
- (void)cancelStream;
- (void)handleResetStream;
- (void)handleStartStream;
- (void)handleStopStream;
- (void)invalidate;
- (void)publish;
- (void)sendAudioFrame:(id)frame;
- (void)sendMsg:(const char *)msg args:(id)args;
- (void)startStream:(id)stream;
- (void)stopStream:(id)stream;
@end

@implementation DoAPAudioRelay

- (DoAPAudioRelay)initWithIdentifier:(id)identifier deviceType:(int64_t)type properties:(id)properties codecType:(unsigned __int8)codecType hub:(id)hub
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  hubCopy = hub;
  v19.receiver = self;
  v19.super_class = DoAPAudioRelay;
  v16 = [(DoAPAudioRelay *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    objc_storeWeak(&v17->_hub, hubCopy);
    v17->_isStreaming = 0;
    objc_storeStrong(&v17->_hidProperties, properties);
    v17->_codec = codecType;
    v17->_deviceType = type;
  }

  return v17;
}

- (BOOL)isHubConnected
{
  selfCopy = self;
  v3 = [(DoAPAudioRelay *)self hub];
  LOBYTE(selfCopy) = [v3 isXpcConnectedForDeviceType:selfCopy->_deviceType];

  return selfCopy;
}

- (void)sendAudioFrame:(id)frame
{
  frameCopy = frame;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000752E4(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v14 = @"kMsgArgData";
  v15 = frameCopy;
  v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [(DoAPAudioRelay *)self sendMsg:"AudioFrame" args:v13];
}

- (void)invalidate
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelay - Send invalidate to AVVC", v4, 2u);
  }

  [(DoAPAudioRelay *)self sendMsg:"Unpublish" args:0];
}

- (void)cancelStream
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelay - Send cancelStream to AVVC", v4, 2u);
  }

  [(DoAPAudioRelay *)self sendMsg:"StreamDidCancel" args:0];
}

- (void)publish
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInteger:[(DoAPAudioRelay *)self deviceType]];
  [v3 setValue:v4 forKey:@"kMsgDeviceType"];

  hidProperties = [(DoAPAudioRelay *)self hidProperties];

  if (hidProperties)
  {
    hidProperties2 = [(DoAPAudioRelay *)self hidProperties];
    v7 = [hidProperties2 objectForKeyedSubscript:@"ProductID"];
    [v3 setValue:v7 forKey:@"kMsgPidNum"];
  }

  identifier = [(DoAPAudioRelay *)self identifier];

  if (identifier)
  {
    identifier2 = [(DoAPAudioRelay *)self identifier];
    [v3 setValue:identifier2 forKey:@"kMsgArgIdentifier"];
  }

  if ([(DoAPAudioRelay *)self codec])
  {
    v10 = [NSNumber numberWithUnsignedChar:[(DoAPAudioRelay *)self codec]];
    [v3 setValue:v10 forKey:@"kMsgCodecType"];
  }

  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v3 description];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelay - Send publish to AVVC %@", &v14, 0xCu);
  }

  [(DoAPAudioRelay *)self sendMsg:"Publish" args:v3];
}

- (void)handleStartStream
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003238C;
  v2[3] = &unk_1000BDC68;
  v2[4] = self;
  [(DoAPAudioRelay *)self startStream:v2];
}

- (void)handleStopStream
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000324EC;
  v2[3] = &unk_1000BDC68;
  v2[4] = self;
  [(DoAPAudioRelay *)self stopStream:v2];
}

- (void)handleResetStream
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DoAPAudioRelay - handleResetStream", v4, 2u);
  }

  [(DoAPAudioRelay *)self stopStream:&stru_1000BDCA8];
}

- (void)startStream:(id)stream
{
  streamCopy = stream;
  [(DoAPAudioRelay *)self setIsStreaming:1];
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007531C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  delegate = [(DoAPAudioRelay *)self delegate];
  [delegate doapAudioWillStart:streamCopy];
}

- (void)stopStream:(id)stream
{
  streamCopy = stream;
  [(DoAPAudioRelay *)self setIsStreaming:0];
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100075354(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  delegate = [(DoAPAudioRelay *)self delegate];
  [delegate doapAudioDidStop:streamCopy];
}

- (void)sendMsg:(const char *)msg args:(id)args
{
  argsCopy = args;
  identifier = [(DoAPAudioRelay *)self identifier];
  v7 = [NSMutableDictionary dictionaryWithObject:identifier forKey:@"kMsgArgIdentifier"];

  if (argsCopy)
  {
    [v7 addEntriesFromDictionary:argsCopy];
  }

  v8 = [(DoAPAudioRelay *)self hub];
  v9 = [NSString stringWithUTF8String:msg];
  [v8 sendMsgIfCheckedIn:v9 args:v7 forClient:{-[DoAPAudioRelay deviceType](self, "deviceType")}];
}

- (DoAPAudioRelaySource)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DoAPAudioRelayHub)hub
{
  WeakRetained = objc_loadWeakRetained(&self->_hub);

  return WeakRetained;
}

@end