@interface DoAPAudioRelay
- (BOOL)isHubConnected;
- (DoAPAudioRelay)initWithIdentifier:(id)a3 deviceType:(int64_t)a4 properties:(id)a5 codecType:(unsigned __int8)a6 hub:(id)a7;
- (DoAPAudioRelayHub)hub;
- (DoAPAudioRelaySource)delegate;
- (void)cancelStream;
- (void)handleResetStream;
- (void)handleStartStream;
- (void)handleStopStream;
- (void)invalidate;
- (void)publish;
- (void)sendAudioFrame:(id)a3;
- (void)sendMsg:(const char *)a3 args:(id)a4;
- (void)startStream:(id)a3;
- (void)stopStream:(id)a3;
@end

@implementation DoAPAudioRelay

- (DoAPAudioRelay)initWithIdentifier:(id)a3 deviceType:(int64_t)a4 properties:(id)a5 codecType:(unsigned __int8)a6 hub:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = DoAPAudioRelay;
  v16 = [(DoAPAudioRelay *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, a3);
    objc_storeWeak(&v17->_hub, v15);
    v17->_isStreaming = 0;
    objc_storeStrong(&v17->_hidProperties, a5);
    v17->_codec = a6;
    v17->_deviceType = a4;
  }

  return v17;
}

- (BOOL)isHubConnected
{
  v2 = self;
  v3 = [(DoAPAudioRelay *)self hub];
  LOBYTE(v2) = [v3 isXpcConnectedForDeviceType:v2->_deviceType];

  return v2;
}

- (void)sendAudioFrame:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000752E4(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v14 = @"kMsgArgData";
  v15 = v4;
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

  v5 = [(DoAPAudioRelay *)self hidProperties];

  if (v5)
  {
    v6 = [(DoAPAudioRelay *)self hidProperties];
    v7 = [v6 objectForKeyedSubscript:@"ProductID"];
    [v3 setValue:v7 forKey:@"kMsgPidNum"];
  }

  v8 = [(DoAPAudioRelay *)self identifier];

  if (v8)
  {
    v9 = [(DoAPAudioRelay *)self identifier];
    [v3 setValue:v9 forKey:@"kMsgArgIdentifier"];
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

- (void)startStream:(id)a3
{
  v4 = a3;
  [(DoAPAudioRelay *)self setIsStreaming:1];
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007531C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = [(DoAPAudioRelay *)self delegate];
  [v13 doapAudioWillStart:v4];
}

- (void)stopStream:(id)a3
{
  v4 = a3;
  [(DoAPAudioRelay *)self setIsStreaming:0];
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100075354(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = [(DoAPAudioRelay *)self delegate];
  [v13 doapAudioDidStop:v4];
}

- (void)sendMsg:(const char *)a3 args:(id)a4
{
  v10 = a4;
  v6 = [(DoAPAudioRelay *)self identifier];
  v7 = [NSMutableDictionary dictionaryWithObject:v6 forKey:@"kMsgArgIdentifier"];

  if (v10)
  {
    [v7 addEntriesFromDictionary:v10];
  }

  v8 = [(DoAPAudioRelay *)self hub];
  v9 = [NSString stringWithUTF8String:a3];
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