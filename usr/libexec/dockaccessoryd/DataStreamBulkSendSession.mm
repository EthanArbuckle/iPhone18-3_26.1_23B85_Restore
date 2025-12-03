@interface DataStreamBulkSendSession
- (BOOL)isActive;
- (DataStreamBulkSendProtocol)bulkSendProtocol;
- (DataStreamBulkSendSession)initWithProtocol:(id)protocol sessionIdentifier:(id)identifier queue:(id)queue logIdentifier:(id)logIdentifier;
- (void)_closeSession;
- (void)_pumpReadDataIfPossible;
- (void)asyncHandleIncomingPackets:(id)packets isEof:(BOOL)eof;
- (void)asyncHandleRemoteCloseWithError:(id)error;
- (void)dealloc;
- (void)read:(id)read;
@end

@implementation DataStreamBulkSendSession

- (DataStreamBulkSendSession)initWithProtocol:(id)protocol sessionIdentifier:(id)identifier queue:(id)queue logIdentifier:(id)logIdentifier
{
  protocolCopy = protocol;
  identifierCopy = identifier;
  queueCopy = queue;
  logIdentifierCopy = logIdentifier;
  v21.receiver = self;
  v21.super_class = DataStreamBulkSendSession;
  v14 = [(DataStreamBulkSendSession *)&v21 init];
  v15 = v14;
  if (v14)
  {
    *&v14->_isClosed = 0;
    objc_storeWeak(&v14->_bulkSendProtocol, protocolCopy);
    objc_storeStrong(&v15->_sessionIdentifier, identifier);
    objc_storeStrong(&v15->_queue, queue);
    v16 = +[NSMutableArray array];
    pendingReads = v15->_pendingReads;
    v15->_pendingReads = v16;

    identifierCopy = [NSString stringWithFormat:@"%@/%@", logIdentifierCopy, identifierCopy];
    logIdentifier = v15->_logIdentifier;
    v15->_logIdentifier = identifierCopy;
  }

  return v15;
}

- (void)dealloc
{
  if (!self->_isClosed)
  {
    bulkSendProtocol = [(DataStreamBulkSendSession *)self bulkSendProtocol];
    if (bulkSendProtocol)
    {
      sessionIdentifier = [(DataStreamBulkSendSession *)self sessionIdentifier];
      [bulkSendProtocol asyncBulkSendSessionDidCancelSessionWithIdentifier:sessionIdentifier reason:5 hadReceivedEof:self->_hasReceivedEof completion:&stru_100273638];
    }
  }

  v5.receiver = self;
  v5.super_class = DataStreamBulkSendSession;
  [(DataStreamBulkSendSession *)&v5 dealloc];
}

- (BOOL)isActive
{
  if (self->_isClosed)
  {
    return 0;
  }

  else
  {
    pendingReads = [(DataStreamBulkSendSession *)self pendingReads];
    if ([pendingReads count])
    {
    }

    else
    {
      pendingError = [(DataStreamBulkSendSession *)self pendingError];

      if (!pendingError)
      {
        return !self->_hasReceivedEof;
      }
    }

    return 1;
  }
}

- (void)read:(id)read
{
  readCopy = read;
  queue = [(DataStreamBulkSendSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_isClosed)
  {
    queue2 = [(DataStreamBulkSendSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100029608;
    block[3] = &unk_100273660;
    v9 = readCopy;
    dispatch_async(queue2, block);
  }

  else
  {
    activeReadHandler = [(DataStreamBulkSendSession *)self activeReadHandler];

    if (activeReadHandler)
    {
      [(DataStreamBulkSendSession *)self cancelWithReason:5 completion:&stru_100273680];
    }

    else
    {
      [(DataStreamBulkSendSession *)self setActiveReadHandler:readCopy];
      [(DataStreamBulkSendSession *)self _pumpReadDataIfPossible];
    }
  }
}

- (void)asyncHandleIncomingPackets:(id)packets isEof:(BOOL)eof
{
  packetsCopy = packets;
  queue = [(DataStreamBulkSendSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000296E0;
  block[3] = &unk_100273480;
  eofCopy = eof;
  block[4] = self;
  v10 = packetsCopy;
  v8 = packetsCopy;
  dispatch_async(queue, block);
}

- (void)asyncHandleRemoteCloseWithError:(id)error
{
  errorCopy = error;
  queue = [(DataStreamBulkSendSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000298A8;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (void)_closeSession
{
  if (!self->_isClosed)
  {
    self->_isClosed = 1;
    activeReadHandler = [(DataStreamBulkSendSession *)self activeReadHandler];
    [(DataStreamBulkSendSession *)self setActiveReadHandler:0];
    if (activeReadHandler)
    {
      queue = [(DataStreamBulkSendSession *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100029A74;
      block[3] = &unk_100273660;
      v6 = activeReadHandler;
      dispatch_async(queue, block);
    }
  }
}

- (void)_pumpReadDataIfPossible
{
  activeReadHandler = [(DataStreamBulkSendSession *)self activeReadHandler];

  if (activeReadHandler)
  {
    pendingReads = [(DataStreamBulkSendSession *)self pendingReads];
    hmf_maybeDequeue = [pendingReads hmf_maybeDequeue];

    if (!hmf_maybeDequeue)
    {
      pendingError = [(DataStreamBulkSendSession *)self pendingError];
      [(DataStreamBulkSendSession *)self setPendingError:0];
      if (pendingError)
      {
        goto LABEL_5;
      }

      if (!self->_hasReceivedEof)
      {
        goto LABEL_6;
      }
    }

    pendingError = 0;
LABEL_5:
    activeReadHandler2 = [(DataStreamBulkSendSession *)self activeReadHandler];
    [(DataStreamBulkSendSession *)self setActiveReadHandler:0];
    queue = [(DataStreamBulkSendSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100029BEC;
    block[3] = &unk_1002736A8;
    v14 = activeReadHandler2;
    v12 = hmf_maybeDequeue;
    v13 = pendingError;
    v9 = pendingError;
    v10 = activeReadHandler2;
    dispatch_async(queue, block);

LABEL_6:
  }
}

- (DataStreamBulkSendProtocol)bulkSendProtocol
{
  WeakRetained = objc_loadWeakRetained(&self->_bulkSendProtocol);

  return WeakRetained;
}

@end