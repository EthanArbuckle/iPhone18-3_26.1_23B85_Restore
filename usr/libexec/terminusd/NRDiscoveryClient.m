@interface NRDiscoveryClient
- (NSString)description;
- (void)dataSession:(id)a3 confirmedForPeerDataAddress:(id)a4 serviceSpecificInfo:(id)a5;
- (void)dataSession:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)dataSession:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)dataSessionRequestStarted:(id)a3;
- (void)publisher:(id)a3 dataConfirmedForHandle:(id)a4 localInterfaceIndex:(unsigned int)a5 serviceSpecificInfo:(id)a6;
- (void)publisher:(id)a3 dataTerminatedForHandle:(id)a4 reason:(int64_t)a5;
- (void)publisher:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)publisher:(id)a3 receivedMessage:(id)a4 fromSubscriberID:(unsigned __int8)a5 subscriberAddress:(id)a6;
- (void)publisher:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)publisherStarted:(id)a3;
- (void)subscriber:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)subscriber:(id)a3 lostDiscoveryResultForPublishID:(unsigned __int8)a4 address:(id)a5;
- (void)subscriber:(id)a3 receivedDiscoveryResult:(id)a4;
- (void)subscriber:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)subscriberStarted:(id)a3;
@end

@implementation NRDiscoveryClient

- (void)dataSessionRequestStarted:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)dataSession:(id)a3 terminatedWithReason:(int64_t)a4
{
  v6 = a3;
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
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)dataSession:(id)a3 confirmedForPeerDataAddress:(id)a4 serviceSpecificInfo:(id)a5
{
  v6 = a3;
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
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)dataSession:(id)a3 failedToStartWithError:(int64_t)a4
{
  v6 = a3;
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
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)subscriber:(id)a3 receivedDiscoveryResult:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)subscriber:(id)a3 lostDiscoveryResultForPublishID:(unsigned __int8)a4 address:(id)a5
{
  v8 = a3;
  v9 = a5;
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
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)subscriber:(id)a3 terminatedWithReason:(int64_t)a4
{
  v6 = a3;
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
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)subscriber:(id)a3 failedToStartWithError:(int64_t)a4
{
  v6 = a3;
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
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)subscriberStarted:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)publisher:(id)a3 dataConfirmedForHandle:(id)a4 localInterfaceIndex:(unsigned int)a5 serviceSpecificInfo:(id)a6
{
  v9 = a3;
  v10 = a4;
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
  v15 = v9;
  v16 = self;
  v17 = v10;
  v18 = a5;
  v12 = v10;
  v13 = v9;
  dispatch_async(queue, v14);
}

- (void)publisher:(id)a3 dataTerminatedForHandle:(id)a4 reason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
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
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)publisher:(id)a3 receivedMessage:(id)a4 fromSubscriberID:(unsigned __int8)a5 subscriberAddress:(id)a6
{
  v19 = a4;
  if (v19)
  {
    v7 = [[NRNANServiceInfo alloc] initWithData:v19];
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

- (void)publisher:(id)a3 terminatedWithReason:(int64_t)a4
{
  v6 = a3;
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
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)publisher:(id)a3 failedToStartWithError:(int64_t)a4
{
  v6 = a3;
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
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)publisherStarted:(id)a3
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