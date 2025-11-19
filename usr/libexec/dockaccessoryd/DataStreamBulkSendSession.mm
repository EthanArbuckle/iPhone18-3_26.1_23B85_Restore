@interface DataStreamBulkSendSession
- (BOOL)isActive;
- (DataStreamBulkSendProtocol)bulkSendProtocol;
- (DataStreamBulkSendSession)initWithProtocol:(id)a3 sessionIdentifier:(id)a4 queue:(id)a5 logIdentifier:(id)a6;
- (void)_closeSession;
- (void)_pumpReadDataIfPossible;
- (void)asyncHandleIncomingPackets:(id)a3 isEof:(BOOL)a4;
- (void)asyncHandleRemoteCloseWithError:(id)a3;
- (void)dealloc;
- (void)read:(id)a3;
@end

@implementation DataStreamBulkSendSession

- (DataStreamBulkSendSession)initWithProtocol:(id)a3 sessionIdentifier:(id)a4 queue:(id)a5 logIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = DataStreamBulkSendSession;
  v14 = [(DataStreamBulkSendSession *)&v21 init];
  v15 = v14;
  if (v14)
  {
    *&v14->_isClosed = 0;
    objc_storeWeak(&v14->_bulkSendProtocol, v10);
    objc_storeStrong(&v15->_sessionIdentifier, a4);
    objc_storeStrong(&v15->_queue, a5);
    v16 = +[NSMutableArray array];
    pendingReads = v15->_pendingReads;
    v15->_pendingReads = v16;

    v18 = [NSString stringWithFormat:@"%@/%@", v13, v11];
    logIdentifier = v15->_logIdentifier;
    v15->_logIdentifier = v18;
  }

  return v15;
}

- (void)dealloc
{
  if (!self->_isClosed)
  {
    v3 = [(DataStreamBulkSendSession *)self bulkSendProtocol];
    if (v3)
    {
      v4 = [(DataStreamBulkSendSession *)self sessionIdentifier];
      [v3 asyncBulkSendSessionDidCancelSessionWithIdentifier:v4 reason:5 hadReceivedEof:self->_hasReceivedEof completion:&stru_100273638];
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
    v4 = [(DataStreamBulkSendSession *)self pendingReads];
    if ([v4 count])
    {
    }

    else
    {
      v5 = [(DataStreamBulkSendSession *)self pendingError];

      if (!v5)
      {
        return !self->_hasReceivedEof;
      }
    }

    return 1;
  }
}

- (void)read:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamBulkSendSession *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_isClosed)
  {
    v6 = [(DataStreamBulkSendSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100029608;
    block[3] = &unk_100273660;
    v9 = v4;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = [(DataStreamBulkSendSession *)self activeReadHandler];

    if (v7)
    {
      [(DataStreamBulkSendSession *)self cancelWithReason:5 completion:&stru_100273680];
    }

    else
    {
      [(DataStreamBulkSendSession *)self setActiveReadHandler:v4];
      [(DataStreamBulkSendSession *)self _pumpReadDataIfPossible];
    }
  }
}

- (void)asyncHandleIncomingPackets:(id)a3 isEof:(BOOL)a4
{
  v6 = a3;
  v7 = [(DataStreamBulkSendSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000296E0;
  block[3] = &unk_100273480;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)asyncHandleRemoteCloseWithError:(id)a3
{
  v4 = a3;
  v5 = [(DataStreamBulkSendSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000298A8;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_closeSession
{
  if (!self->_isClosed)
  {
    self->_isClosed = 1;
    v3 = [(DataStreamBulkSendSession *)self activeReadHandler];
    [(DataStreamBulkSendSession *)self setActiveReadHandler:0];
    if (v3)
    {
      v4 = [(DataStreamBulkSendSession *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100029A74;
      block[3] = &unk_100273660;
      v6 = v3;
      dispatch_async(v4, block);
    }
  }
}

- (void)_pumpReadDataIfPossible
{
  v3 = [(DataStreamBulkSendSession *)self activeReadHandler];

  if (v3)
  {
    v4 = [(DataStreamBulkSendSession *)self pendingReads];
    v5 = [v4 hmf_maybeDequeue];

    if (!v5)
    {
      v6 = [(DataStreamBulkSendSession *)self pendingError];
      [(DataStreamBulkSendSession *)self setPendingError:0];
      if (v6)
      {
        goto LABEL_5;
      }

      if (!self->_hasReceivedEof)
      {
        goto LABEL_6;
      }
    }

    v6 = 0;
LABEL_5:
    v7 = [(DataStreamBulkSendSession *)self activeReadHandler];
    [(DataStreamBulkSendSession *)self setActiveReadHandler:0];
    v8 = [(DataStreamBulkSendSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100029BEC;
    block[3] = &unk_1002736A8;
    v14 = v7;
    v12 = v5;
    v13 = v6;
    v9 = v6;
    v10 = v7;
    dispatch_async(v8, block);

LABEL_6:
  }
}

- (DataStreamBulkSendProtocol)bulkSendProtocol
{
  WeakRetained = objc_loadWeakRetained(&self->_bulkSendProtocol);

  return WeakRetained;
}

@end