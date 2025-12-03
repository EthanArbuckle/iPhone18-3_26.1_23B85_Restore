@interface NRLinkManagerQuickRelay
- (id)copyStatusString;
- (void)cancel;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)invalidateManager;
- (void)linkDidReceiveData:(id)data data:(id)a4;
- (void)linkIsAvailable:(id)available;
- (void)linkIsReady:(id)ready;
- (void)linkIsSuspended:(id)suspended;
- (void)linkIsUnavailable:(id)unavailable;
@end

@implementation NRLinkManagerQuickRelay

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  if (qword_1002291D0 != -1)
  {
    dispatch_once(&qword_1002291D0, &stru_1001FBED8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    v10 = connectionCopy;
    v11 = tokenCopy;
    v9 = 300;
    v7 = "";
    v8 = "[NRLinkManagerQuickRelay connection:didReceivePublicToken:]";
    _NRLogWithArgs();
  }

  -[NRLinkManagerQuickRelay connection:didChangeConnectedStatus:](self, "connection:didChangeConnectedStatus:", connectionCopy, [connectionCopy isConnected]);
}

- (void)linkDidReceiveData:(id)data data:(id)a4
{
  dataCopy = data;
  v7 = a4;
  v8 = v7;
  if (!dataCopy)
  {
    v12 = sub_10012141C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_6;
    }

LABEL_10:
    v16 = sub_10012141C();
    _NRLogWithArgs();

    goto LABEL_6;
  }

  if (!v7)
  {
    v14 = sub_10012141C();
    v15 = _NRLogIsLevelEnabled();

    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  if (self)
  {
    v9 = self->super._queue;
    dispatch_assert_queue_V2(v9);

    queue = self->super._queue;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    queue = 0;
  }

  v11 = queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100121470;
  block[3] = &unk_1001FD088;
  block[4] = self;
  v18 = dataCopy;
  v19 = v8;
  dispatch_async(v11, block);

LABEL_6:
}

- (void)linkIsUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  if (unavailableCopy)
  {
    if (self)
    {
      v5 = self->super._queue;
      dispatch_assert_queue_V2(v5);

      [(NSMutableSet *)self->_links removeObject:unavailableCopy];
      queue = self->super._queue;
    }

    else
    {
      dispatch_assert_queue_V2(0);
      [0 removeObject:unavailableCopy];
      queue = 0;
    }

    v7 = queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012161C;
    block[3] = &unk_1001FD060;
    block[4] = self;
    v12 = unavailableCopy;
    dispatch_async(v7, block);

    sub_10012167C(self);
  }

  else
  {
    v8 = sub_10012141C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10012141C();
      _NRLogWithArgs();
    }
  }
}

- (void)linkIsReady:(id)ready
{
  readyCopy = ready;
  if (readyCopy)
  {
    if (self)
    {
      v5 = self->super._queue;
      dispatch_assert_queue_V2(v5);

      queue = self->super._queue;
    }

    else
    {
      dispatch_assert_queue_V2(0);
      queue = 0;
    }

    v7 = queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100121BF0;
    block[3] = &unk_1001FD060;
    v12 = readyCopy;
    selfCopy = self;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = sub_10012141C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10012141C();
      _NRLogWithArgs();
    }
  }
}

- (void)linkIsSuspended:(id)suspended
{
  suspendedCopy = suspended;
  if (suspendedCopy)
  {
    if (self)
    {
      v5 = self->super._queue;
      dispatch_assert_queue_V2(v5);

      queue = self->super._queue;
    }

    else
    {
      dispatch_assert_queue_V2(0);
      queue = 0;
    }

    v7 = queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100121E34;
    block[3] = &unk_1001FD060;
    v12 = suspendedCopy;
    selfCopy = self;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = sub_10012141C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10012141C();
      _NRLogWithArgs();
    }
  }
}

- (void)linkIsAvailable:(id)available
{
  availableCopy = available;
  if (availableCopy)
  {
    if (self)
    {
      v5 = self->super._queue;
      dispatch_assert_queue_V2(v5);

      [(NSMutableSet *)self->_links addObject:availableCopy];
      queue = self->super._queue;
    }

    else
    {
      dispatch_assert_queue_V2(0);
      [0 addObject:availableCopy];
      queue = 0;
    }

    v7 = queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100122098;
    block[3] = &unk_1001FD060;
    v12 = availableCopy;
    selfCopy = self;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = sub_10012141C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10012141C();
      _NRLogWithArgs();
    }
  }
}

- (id)copyStatusString
{
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(NSMutableString);
  copyName = [(NRLinkManagerQuickRelay *)self copyName];
  [v5 appendFormat:@"\nName: %@", copyName];

  if (!self)
  {
    StringFromNRLinkType = createStringFromNRLinkType();
    [v5 appendFormat:@"\nLinkManager type: %@", StringFromNRLinkType];

    v10 = [NSString alloc];
    goto LABEL_17;
  }

  type = self->super._type;
  v8 = createStringFromNRLinkType();
  [v5 appendFormat:@"\nLinkManager type: %@", v8];

  state = self->super._state;
  v10 = [NSString alloc];
  if (state > 1001)
  {
    switch(state)
    {
      case 0x3EA:
        v11 = "Start";
        goto LABEL_18;
      case 0x3EB:
        v11 = "Ready";
        goto LABEL_18;
      case 0x3EC:
        v11 = "Cancelled";
LABEL_18:
        state = [v10 initWithUTF8String:v11];
        goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (!state)
  {
LABEL_17:
    v11 = "Invalid";
    goto LABEL_18;
  }

  if (state == 1001)
  {
    v11 = "Initial";
    goto LABEL_18;
  }

LABEL_14:
  state = [v10 initWithFormat:@"Unknown(%u)", state];
LABEL_19:
  v14 = state;
  [v5 appendFormat:@"\nState: %@", state];

  return v5;
}

- (void)dealloc
{
  if (qword_1002291D0 != -1)
  {
    dispatch_once(&qword_1002291D0, &stru_1001FBED8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291D0 != -1)
    {
      dispatch_once(&qword_1002291D0, &stru_1001FBED8);
    }

    v5 = 89;
    selfCopy = self;
    v3 = "";
    v4 = "[NRLinkManagerQuickRelay dealloc]";
    _NRLogWithArgs();
  }

  [(NRLinkManagerQuickRelay *)self invalidateManager:v3];
  v7.receiver = self;
  v7.super_class = NRLinkManagerQuickRelay;
  [(NRLinkManagerQuickRelay *)&v7 dealloc];
}

- (void)invalidateManager
{
  v6.receiver = self;
  v6.super_class = NRLinkManagerQuickRelay;
  [(NRLinkManager *)&v6 invalidateManager];
  if (self)
  {
    if (self->_pathEvaluator)
    {
      nw_path_evaluator_cancel();
      pathEvaluator = self->_pathEvaluator;
      self->_pathEvaluator = 0;
    }

    apsConnection = self->_apsConnection;
    if (apsConnection)
    {
      [(APSConnection *)apsConnection setDelegate:0];
      v5 = self->_apsConnection;
      self->_apsConnection = 0;
    }
  }
}

- (void)cancel
{
  [(NRLinkManagerQuickRelay *)self invalidateManager];
  if (self)
  {
    self->super._state = 1004;
  }
}

@end