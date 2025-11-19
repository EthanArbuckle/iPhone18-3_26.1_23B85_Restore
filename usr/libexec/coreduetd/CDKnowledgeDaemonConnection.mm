@interface CDKnowledgeDaemonConnection
- (id)unauthorizedClientError;
- (void)confirmDatabaseConnectionWithReply:(id)a3;
- (void)deleteAllEventsInEventStreamNamed:(id)a3 reply:(id)a4;
- (void)deleteAllEventsMatchingPredicate:(id)a3 reply:(id)a4;
- (void)deleteObjects:(id)a3 reply:(id)a4;
- (void)deleteRemoteState:(id)a3;
- (void)deviceUUIDWithReply:(id)a3;
- (void)disableSyncPolicyForFeature:(unint64_t)a3 transportType:(int64_t)a4 withReply:(id)a5;
- (void)executeQuery:(id)a3 reply:(id)a4;
- (void)isSyncPolicyDisabledForFeature:(unint64_t)a3 transportType:(int64_t)a4 withReply:(id)a5;
- (void)saveObjects:(id)a3 reply:(id)a4;
- (void)sourceDeviceIdentityWithReply:(id)a3;
- (void)synchronizeWithReply:(id)a3;
- (void)synchronizeWithUrgency:(unint64_t)a3 client:(id)a4 reply:(id)a5;
@end

@implementation CDKnowledgeDaemonConnection

- (id)unauthorizedClientError
{
  v2 = _DKErrorDomain;
  v6 = NSLocalizedDescriptionKey;
  v7 = @"unauthorized client";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:v2 code:9 userInfo:v3];

  return v4;
}

- (void)saveObjects:(id)a3 reply:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (v7)
  {
    v8 = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    v6[2](v6, 0, v8);
  }

  else
  {
    v8 = [(CDKnowledgeDaemonConnection *)self daemon];
    [v8 saveObjects:v9 reply:v6];
  }
}

- (void)deleteObjects:(id)a3 reply:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (v7)
  {
    v8 = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    v6[2](v6, 0, v8);
  }

  else
  {
    v8 = [(CDKnowledgeDaemonConnection *)self daemon];
    [v8 deleteObjects:v9 reply:v6];
  }
}

- (void)executeQuery:(id)a3 reply:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (v7)
  {
    v8 = objc_opt_class();
    if (![v8 isEqual:objc_opt_class()])
    {
LABEL_6:
      v14 = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
      v6[2](v6, 0, v14);
      goto LABEL_9;
    }

    v9 = v17;
    v10 = [NSMutableSet alloc];
    v11 = [v9 eventStreams];
    v12 = [v10 initWithArray:v11];

    if (![v12 count] || (-[CDKnowledgeDaemonConnection authorizedEventStreamsToRead](self, "authorizedEventStreamsToRead"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "minusSet:", v13), v13, objc_msgSend(v12, "count")))
    {

      goto LABEL_6;
    }

    v15 = [v9 resultType];

    if (v15)
    {
      goto LABEL_6;
    }
  }

  v16 = [(CDKnowledgeDaemonConnection *)self processName];
  [v17 setClientName:v16];

  v14 = [(CDKnowledgeDaemonConnection *)self daemon];
  [v14 executeQuery:v17 reply:v6];
LABEL_9:
}

- (void)deleteAllEventsInEventStreamNamed:(id)a3 reply:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (v7)
  {
    v8 = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    v6[2](v6, 0, v8);
  }

  else
  {
    v8 = [(CDKnowledgeDaemonConnection *)self daemon];
    [v8 deleteAllEventsInEventStreamNamed:v9 reply:v6];
  }
}

- (void)deleteAllEventsMatchingPredicate:(id)a3 reply:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (v7)
  {
    v8 = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    v6[2](v6, 0, v8);
  }

  else
  {
    v8 = [(CDKnowledgeDaemonConnection *)self daemon];
    [v8 deleteAllEventsMatchingPredicate:v9 reply:v6];
  }
}

- (void)synchronizeWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (v5)
  {
    v6 = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    v4[2](v4, 0);
  }

  else
  {
    v6 = [(CDKnowledgeDaemonConnection *)self daemon];
    [v6 synchronizeWithReply:v4];
  }
}

- (void)synchronizeWithUrgency:(unint64_t)a3 client:(id)a4 reply:(id)a5
{
  v11 = a4;
  v8 = a5;
  v9 = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (v9)
  {
    v10 = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    v8[2](v8, 0, v10);
  }

  else
  {
    v10 = [(CDKnowledgeDaemonConnection *)self daemon];
    [v10 synchronizeWithUrgency:a3 client:v11 reply:v8];
  }
}

- (void)deleteRemoteState:(id)a3
{
  v4 = a3;
  v5 = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (v5)
  {
    v6 = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    v4[2](v4, 0);
  }

  else
  {
    v6 = [(CDKnowledgeDaemonConnection *)self daemon];
    [v6 deleteRemoteState:v4];
  }
}

- (void)sourceDeviceIdentityWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (v5)
  {
    v6 = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    v4[2](v4, 0);
  }

  else
  {
    v6 = [(CDKnowledgeDaemonConnection *)self daemon];
    [v6 sourceDeviceIdentityWithReply:v4];
  }
}

- (void)deviceUUIDWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (v5)
  {
    v6 = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    v4[2](v4, 0);
  }

  else
  {
    v6 = [(CDKnowledgeDaemonConnection *)self daemon];
    [v6 deviceUUIDWithReply:v4];
  }
}

- (void)disableSyncPolicyForFeature:(unint64_t)a3 transportType:(int64_t)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = [(CDKnowledgeDaemonConnection *)self daemon];
  [v9 disableSyncPolicyForFeature:a3 transportType:a4 withReply:v8];
}

- (void)isSyncPolicyDisabledForFeature:(unint64_t)a3 transportType:(int64_t)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = [(CDKnowledgeDaemonConnection *)self daemon];
  [v9 isSyncPolicyDisabledForFeature:a3 transportType:a4 withReply:v8];
}

- (void)confirmDatabaseConnectionWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CDKnowledgeDaemonConnection *)self daemon];
  [v5 confirmDatabaseConnectionWithReply:v4];
}

@end