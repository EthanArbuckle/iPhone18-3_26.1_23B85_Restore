@interface MSDCompanionIDSHandler
- (void)handleHeartbeat:(id)heartbeat;
- (void)handlePairedWatchCommandResponse:(id)response;
- (void)start;
@end

@implementation MSDCompanionIDSHandler

- (void)start
{
  v10.receiver = self;
  v10.super_class = MSDCompanionIDSHandler;
  [(MSDIDSHandler *)&v10 start];
  idsService = [(MSDIDSHandler *)self idsService];
  [idsService setProtobufAction:"handleHeartbeat:" forIncomingRequestsOfType:5];

  idsService2 = [(MSDIDSHandler *)self idsService];
  [idsService2 setProtobufAction:"handlePairedWatchCommandResponse:" forIncomingResponsesOfType:0];

  idsService3 = [(MSDIDSHandler *)self idsService];
  [idsService3 setProtobufAction:"handlePairedWatchCommandResponse:" forIncomingResponsesOfType:1];

  idsService4 = [(MSDIDSHandler *)self idsService];
  [idsService4 setProtobufAction:"handlePairedWatchCommandResponse:" forIncomingResponsesOfType:2];

  idsService5 = [(MSDIDSHandler *)self idsService];
  [idsService5 setProtobufAction:"handlePairedWatchCommandResponse:" forIncomingResponsesOfType:3];

  idsService6 = [(MSDIDSHandler *)self idsService];
  idsServiceQueue = [(MSDIDSHandler *)self idsServiceQueue];
  [idsService6 addDelegate:self queue:idsServiceQueue];
}

- (void)handleHeartbeat:(id)heartbeat
{
  data = [heartbeat data];
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:data options:0 error:&v7];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received heartbeat from paired watch.", v6, 2u);
  }
}

- (void)handlePairedWatchCommandResponse:(id)response
{
  responseCopy = response;
  data = [responseCopy data];
  v17 = 0;
  v6 = [NSJSONSerialization JSONObjectWithData:data options:0 error:&v17];
  v7 = v17;
  type = [responseCopy type];
  v9 = [v6 objectForKey:@"RequestResult"];
  bOOLValue = [v9 BOOLValue];

  context = [responseCopy context];

  incomingResponseIdentifier = [context incomingResponseIdentifier];

  responseHandlers = [(MSDIDSHandler *)self responseHandlers];
  v14 = [responseHandlers objectForKey:incomingResponseIdentifier];

  responseHandlers2 = sub_100063A54();
  v16 = os_log_type_enabled(responseHandlers2, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      *buf = 134218242;
      v19 = type;
      v20 = 2114;
      v21 = incomingResponseIdentifier;
      _os_log_impl(&_mh_execute_header, responseHandlers2, OS_LOG_TYPE_DEFAULT, "Received ACK for type: %ld identifier: %{public}@", buf, 0x16u);
    }

    (v14)[2](v14, bOOLValue);
    responseHandlers2 = [(MSDIDSHandler *)self responseHandlers];
    [responseHandlers2 removeObjectForKey:incomingResponseIdentifier];
  }

  else if (v16)
  {
    *buf = 138543362;
    v19 = incomingResponseIdentifier;
    _os_log_impl(&_mh_execute_header, responseHandlers2, OS_LOG_TYPE_DEFAULT, "Received ACK for unknown request identifier: %{public}@", buf, 0xCu);
  }
}

@end