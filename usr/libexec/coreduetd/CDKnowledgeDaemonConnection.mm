@interface CDKnowledgeDaemonConnection
- (id)unauthorizedClientError;
- (void)confirmDatabaseConnectionWithReply:(id)reply;
- (void)deleteAllEventsInEventStreamNamed:(id)named reply:(id)reply;
- (void)deleteAllEventsMatchingPredicate:(id)predicate reply:(id)reply;
- (void)deleteObjects:(id)objects reply:(id)reply;
- (void)deleteRemoteState:(id)state;
- (void)deviceUUIDWithReply:(id)reply;
- (void)disableSyncPolicyForFeature:(unint64_t)feature transportType:(int64_t)type withReply:(id)reply;
- (void)executeQuery:(id)query reply:(id)reply;
- (void)isSyncPolicyDisabledForFeature:(unint64_t)feature transportType:(int64_t)type withReply:(id)reply;
- (void)saveObjects:(id)objects reply:(id)reply;
- (void)sourceDeviceIdentityWithReply:(id)reply;
- (void)synchronizeWithReply:(id)reply;
- (void)synchronizeWithUrgency:(unint64_t)urgency client:(id)client reply:(id)reply;
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

- (void)saveObjects:(id)objects reply:(id)reply
{
  objectsCopy = objects;
  replyCopy = reply;
  authorizedEventStreamsToRead = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (authorizedEventStreamsToRead)
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self daemon];
    [unauthorizedClientError saveObjects:objectsCopy reply:replyCopy];
  }
}

- (void)deleteObjects:(id)objects reply:(id)reply
{
  objectsCopy = objects;
  replyCopy = reply;
  authorizedEventStreamsToRead = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (authorizedEventStreamsToRead)
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self daemon];
    [unauthorizedClientError deleteObjects:objectsCopy reply:replyCopy];
  }
}

- (void)executeQuery:(id)query reply:(id)reply
{
  queryCopy = query;
  replyCopy = reply;
  authorizedEventStreamsToRead = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (authorizedEventStreamsToRead)
  {
    v8 = objc_opt_class();
    if (![v8 isEqual:objc_opt_class()])
    {
LABEL_6:
      unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
      replyCopy[2](replyCopy, 0, unauthorizedClientError);
      goto LABEL_9;
    }

    v9 = queryCopy;
    v10 = [NSMutableSet alloc];
    eventStreams = [v9 eventStreams];
    v12 = [v10 initWithArray:eventStreams];

    if (![v12 count] || (-[CDKnowledgeDaemonConnection authorizedEventStreamsToRead](self, "authorizedEventStreamsToRead"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "minusSet:", v13), v13, objc_msgSend(v12, "count")))
    {

      goto LABEL_6;
    }

    resultType = [v9 resultType];

    if (resultType)
    {
      goto LABEL_6;
    }
  }

  processName = [(CDKnowledgeDaemonConnection *)self processName];
  [queryCopy setClientName:processName];

  unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self daemon];
  [unauthorizedClientError executeQuery:queryCopy reply:replyCopy];
LABEL_9:
}

- (void)deleteAllEventsInEventStreamNamed:(id)named reply:(id)reply
{
  namedCopy = named;
  replyCopy = reply;
  authorizedEventStreamsToRead = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (authorizedEventStreamsToRead)
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self daemon];
    [unauthorizedClientError deleteAllEventsInEventStreamNamed:namedCopy reply:replyCopy];
  }
}

- (void)deleteAllEventsMatchingPredicate:(id)predicate reply:(id)reply
{
  predicateCopy = predicate;
  replyCopy = reply;
  authorizedEventStreamsToRead = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (authorizedEventStreamsToRead)
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self daemon];
    [unauthorizedClientError deleteAllEventsMatchingPredicate:predicateCopy reply:replyCopy];
  }
}

- (void)synchronizeWithReply:(id)reply
{
  replyCopy = reply;
  authorizedEventStreamsToRead = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (authorizedEventStreamsToRead)
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self daemon];
    [unauthorizedClientError synchronizeWithReply:replyCopy];
  }
}

- (void)synchronizeWithUrgency:(unint64_t)urgency client:(id)client reply:(id)reply
{
  clientCopy = client;
  replyCopy = reply;
  authorizedEventStreamsToRead = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (authorizedEventStreamsToRead)
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0, unauthorizedClientError);
  }

  else
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self daemon];
    [unauthorizedClientError synchronizeWithUrgency:urgency client:clientCopy reply:replyCopy];
  }
}

- (void)deleteRemoteState:(id)state
{
  stateCopy = state;
  authorizedEventStreamsToRead = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (authorizedEventStreamsToRead)
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    stateCopy[2](stateCopy, 0);
  }

  else
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self daemon];
    [unauthorizedClientError deleteRemoteState:stateCopy];
  }
}

- (void)sourceDeviceIdentityWithReply:(id)reply
{
  replyCopy = reply;
  authorizedEventStreamsToRead = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (authorizedEventStreamsToRead)
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self daemon];
    [unauthorizedClientError sourceDeviceIdentityWithReply:replyCopy];
  }
}

- (void)deviceUUIDWithReply:(id)reply
{
  replyCopy = reply;
  authorizedEventStreamsToRead = [(CDKnowledgeDaemonConnection *)self authorizedEventStreamsToRead];

  if (authorizedEventStreamsToRead)
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self unauthorizedClientError];
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    unauthorizedClientError = [(CDKnowledgeDaemonConnection *)self daemon];
    [unauthorizedClientError deviceUUIDWithReply:replyCopy];
  }
}

- (void)disableSyncPolicyForFeature:(unint64_t)feature transportType:(int64_t)type withReply:(id)reply
{
  replyCopy = reply;
  daemon = [(CDKnowledgeDaemonConnection *)self daemon];
  [daemon disableSyncPolicyForFeature:feature transportType:type withReply:replyCopy];
}

- (void)isSyncPolicyDisabledForFeature:(unint64_t)feature transportType:(int64_t)type withReply:(id)reply
{
  replyCopy = reply;
  daemon = [(CDKnowledgeDaemonConnection *)self daemon];
  [daemon isSyncPolicyDisabledForFeature:feature transportType:type withReply:replyCopy];
}

- (void)confirmDatabaseConnectionWithReply:(id)reply
{
  replyCopy = reply;
  daemon = [(CDKnowledgeDaemonConnection *)self daemon];
  [daemon confirmDatabaseConnectionWithReply:replyCopy];
}

@end