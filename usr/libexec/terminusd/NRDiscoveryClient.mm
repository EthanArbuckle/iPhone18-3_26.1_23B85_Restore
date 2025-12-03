@interface NRDiscoveryClient
- (NSString)description;
- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info;
- (void)dataSession:(id)session failedToStartWithError:(int64_t)error;
- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason;
- (void)dataSessionRequestStarted:(id)started;
- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info;
- (void)publisher:(id)publisher dataTerminatedForHandle:(id)handle reason:(int64_t)reason;
- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error;
- (void)publisher:(id)publisher receivedMessage:(id)message fromSubscriberID:(unsigned __int8)d subscriberAddress:(id)address;
- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason;
- (void)publisherStarted:(id)started;
- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error;
- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result;
- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason;
- (void)subscriberStarted:(id)started;
@end

@implementation NRDiscoveryClient

- (void)dataSessionRequestStarted:(id)started
{
  startedCopy = started;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014A6EC;
  v7[3] = &unk_1001FD060;
  v7[4] = self;
  v8 = startedCopy;
  v6 = startedCopy;
  dispatch_async(queue, v7);
}

- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason
{
  sessionCopy = session;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014A9DC;
  block[3] = &unk_1001FCAA8;
  block[4] = self;
  v10 = sessionCopy;
  reasonCopy = reason;
  v8 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info
{
  sessionCopy = session;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014AC54;
  v9[3] = &unk_1001FD060;
  v9[4] = self;
  v10 = sessionCopy;
  v8 = sessionCopy;
  dispatch_async(queue, v9);
}

- (void)dataSession:(id)session failedToStartWithError:(int64_t)error
{
  sessionCopy = session;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014BCA8;
  block[3] = &unk_1001FCAA8;
  block[4] = self;
  v10 = sessionCopy;
  errorCopy = error;
  v8 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result
{
  subscriberCopy = subscriber;
  resultCopy = result;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014BE88;
  block[3] = &unk_1001FD088;
  block[4] = self;
  v12 = subscriberCopy;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = subscriberCopy;
  dispatch_async(queue, block);
}

- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address
{
  subscriberCopy = subscriber;
  addressCopy = address;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10014D810;
  v13[3] = &unk_1001FCB20;
  v13[4] = self;
  v14 = subscriberCopy;
  v15 = addressCopy;
  dCopy = d;
  v11 = addressCopy;
  v12 = subscriberCopy;
  dispatch_async(queue, v13);
}

- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason
{
  subscriberCopy = subscriber;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014DB50;
  block[3] = &unk_1001FCAA8;
  block[4] = self;
  v10 = subscriberCopy;
  reasonCopy = reason;
  v8 = subscriberCopy;
  dispatch_async(queue, block);
}

- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error
{
  subscriberCopy = subscriber;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014DD04;
  block[3] = &unk_1001FCAA8;
  block[4] = self;
  v10 = subscriberCopy;
  errorCopy = error;
  v8 = subscriberCopy;
  dispatch_async(queue, block);
}

- (void)subscriberStarted:(id)started
{
  startedCopy = started;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014DEA8;
  v7[3] = &unk_1001FD060;
  v7[4] = self;
  v8 = startedCopy;
  v6 = startedCopy;
  dispatch_async(queue, v7);
}

- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info
{
  publisherCopy = publisher;
  handleCopy = handle;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10014E070;
  v14[3] = &unk_1001FCAF8;
  v15 = publisherCopy;
  selfCopy = self;
  v17 = handleCopy;
  indexCopy = index;
  v12 = handleCopy;
  v13 = publisherCopy;
  dispatch_async(queue, v14);
}

- (void)publisher:(id)publisher dataTerminatedForHandle:(id)handle reason:(int64_t)reason
{
  publisherCopy = publisher;
  handleCopy = handle;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10014E328;
  v13[3] = &unk_1001FCAD0;
  v14 = publisherCopy;
  selfCopy = self;
  v16 = handleCopy;
  reasonCopy = reason;
  v11 = handleCopy;
  v12 = publisherCopy;
  dispatch_async(queue, v13);
}

- (void)publisher:(id)publisher receivedMessage:(id)message fromSubscriberID:(unsigned __int8)d subscriberAddress:(id)address
{
  messageCopy = message;
  if (messageCopy)
  {
    v7 = [[NRNANServiceInfo alloc] initWithData:messageCopy];
    if (v7)
    {
      if (self)
      {
        nrUUID = self->_nrUUID;
      }

      v9 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_9;
      }

      if (self)
      {
        v11 = self->_nrUUID;
      }
    }

    else
    {
      if (self)
      {
        v15 = self->_nrUUID;
      }

      v16 = _NRCopyLogObjectForNRUUID();
      v17 = _NRLogIsLevelEnabled();

      if (!v17)
      {
        v7 = 0;
        goto LABEL_9;
      }

      if (self)
      {
        v18 = self->_nrUUID;
      }
    }

    v12 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();

LABEL_9:
    goto LABEL_10;
  }

  v13 = sub_10014A248();
  v14 = _NRLogIsLevelEnabled();

  if (v14)
  {
    v7 = sub_10014A248();
    _NRLogWithArgs();
    goto LABEL_9;
  }

LABEL_10:
}

- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason
{
  publisherCopy = publisher;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014E730;
  block[3] = &unk_1001FCAA8;
  v10 = publisherCopy;
  selfCopy = self;
  reasonCopy = reason;
  v8 = publisherCopy;
  dispatch_async(queue, block);
}

- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error
{
  publisherCopy = publisher;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014E8C8;
  block[3] = &unk_1001FCAA8;
  v10 = publisherCopy;
  selfCopy = self;
  errorCopy = error;
  v8 = publisherCopy;
  dispatch_async(queue, block);
}

- (void)publisherStarted:(id)started
{
  if (self)
  {
    nrUUID = self->_nrUUID;
  }

  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      v7 = self->_nrUUID;
    }

    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs();
  }
}

- (NSString)description
{
  v3 = [NSString alloc];
  identifier = self->_identifier;
  v5 = [v3 initWithFormat:@"NRDiscoveryClient[%llu, %@]", identifier, self->_candidateServiceIdentifier];

  return v5;
}

@end