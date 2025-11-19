@interface MSDCompanionIDSHandler
- (void)handleHeartbeat:(id)a3;
- (void)handlePairedWatchCommandResponse:(id)a3;
- (void)start;
@end

@implementation MSDCompanionIDSHandler

- (void)start
{
  v10.receiver = self;
  v10.super_class = MSDCompanionIDSHandler;
  [(MSDIDSHandler *)&v10 start];
  v3 = [(MSDIDSHandler *)self idsService];
  [v3 setProtobufAction:"handleHeartbeat:" forIncomingRequestsOfType:5];

  v4 = [(MSDIDSHandler *)self idsService];
  [v4 setProtobufAction:"handlePairedWatchCommandResponse:" forIncomingResponsesOfType:0];

  v5 = [(MSDIDSHandler *)self idsService];
  [v5 setProtobufAction:"handlePairedWatchCommandResponse:" forIncomingResponsesOfType:1];

  v6 = [(MSDIDSHandler *)self idsService];
  [v6 setProtobufAction:"handlePairedWatchCommandResponse:" forIncomingResponsesOfType:2];

  v7 = [(MSDIDSHandler *)self idsService];
  [v7 setProtobufAction:"handlePairedWatchCommandResponse:" forIncomingResponsesOfType:3];

  v8 = [(MSDIDSHandler *)self idsService];
  v9 = [(MSDIDSHandler *)self idsServiceQueue];
  [v8 addDelegate:self queue:v9];
}

- (void)handleHeartbeat:(id)a3
{
  v3 = [a3 data];
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:v3 options:0 error:&v7];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received heartbeat from paired watch.", v6, 2u);
  }
}

- (void)handlePairedWatchCommandResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 data];
  v17 = 0;
  v6 = [NSJSONSerialization JSONObjectWithData:v5 options:0 error:&v17];
  v7 = v17;
  v8 = [v4 type];
  v9 = [v6 objectForKey:@"RequestResult"];
  v10 = [v9 BOOLValue];

  v11 = [v4 context];

  v12 = [v11 incomingResponseIdentifier];

  v13 = [(MSDIDSHandler *)self responseHandlers];
  v14 = [v13 objectForKey:v12];

  v15 = sub_100063A54();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      *buf = 134218242;
      v19 = v8;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received ACK for type: %ld identifier: %{public}@", buf, 0x16u);
    }

    (v14)[2](v14, v10);
    v15 = [(MSDIDSHandler *)self responseHandlers];
    [v15 removeObjectForKey:v12];
  }

  else if (v16)
  {
    *buf = 138543362;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received ACK for unknown request identifier: %{public}@", buf, 0xCu);
  }
}

@end