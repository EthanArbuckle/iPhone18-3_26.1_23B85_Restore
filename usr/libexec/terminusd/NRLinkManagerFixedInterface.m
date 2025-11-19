@interface NRLinkManagerFixedInterface
- (id)copyStatusString;
- (void)cancel;
- (void)dealloc;
- (void)invalidateManager;
- (void)linkDidReceiveData:(id)a3 data:(id)a4;
- (void)linkIsAvailable:(id)a3;
- (void)linkIsReady:(id)a3;
- (void)linkIsSuspended:(id)a3;
- (void)linkIsUnavailable:(id)a3;
@end

@implementation NRLinkManagerFixedInterface

- (void)linkDidReceiveData:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self)
  {
    dispatch_assert_queue_V2(0);
    [0 reportEvent:2008];
    v13 = v6;
    queue = 0;
    goto LABEL_10;
  }

  v8 = self->super._queue;
  dispatch_assert_queue_V2(v8);

  [(NRLinkManager *)self reportEvent:2008];
  if (self->super._state != 1004)
  {
    v9 = v6;
    queue = self->super._queue;
LABEL_10:
    v11 = queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011F7D4;
    block[3] = &unk_1001FD088;
    block[4] = self;
    v15 = v6;
    v16 = v7;
    v12 = v6;
    dispatch_async(v11, block);

    goto LABEL_11;
  }

  if (qword_1002291C0 != -1)
  {
    dispatch_once(&qword_1002291C0, &stru_1001FBE90);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    _NRLogWithArgs();
  }

LABEL_11:
}

- (void)linkIsUnavailable:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  dispatch_assert_queue_V2(v6);

  if (!v4)
  {
    v10 = sub_10011FA74();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    v9 = sub_10011FA74();
    _NRLogWithArgs();
    goto LABEL_14;
  }

  [(NRLinkManager *)self reportEvent:2007];
  if (!self)
  {
    [0 removeObject:v4];
    v7 = 0;
    goto LABEL_13;
  }

  if (self->super._state != 1004)
  {
    [(NSMutableSet *)self->_links removeObject:v4];
    v7 = self->super._queue;
LABEL_13:
    v8 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011FAC8;
    block[3] = &unk_1001FD060;
    v13 = v4;
    v14 = self;
    v9 = v4;
    dispatch_async(v8, block);

LABEL_14:
    goto LABEL_15;
  }

  if (qword_1002291C0 != -1)
  {
    dispatch_once(&qword_1002291C0, &stru_1001FBE90);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    _NRLogWithArgs();
  }

LABEL_15:
}

- (void)linkIsSuspended:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  dispatch_assert_queue_V2(v6);

  if (!v4)
  {
    v11 = sub_10011FA74();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    v10 = sub_10011FA74();
    _NRLogWithArgs();
    goto LABEL_14;
  }

  [(NRLinkManager *)self reportEvent:2006];
  if (!self)
  {
    v13 = v4;
    v8 = 0;
    goto LABEL_13;
  }

  if (self->super._state != 1004)
  {
    v7 = v4;
    v8 = self->super._queue;
LABEL_13:
    v9 = v8;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100120214;
    block[3] = &unk_1001FD060;
    v15 = v4;
    v16 = self;
    v10 = v4;
    dispatch_async(v9, block);

LABEL_14:
    goto LABEL_15;
  }

  if (qword_1002291C0 != -1)
  {
    dispatch_once(&qword_1002291C0, &stru_1001FBE90);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    _NRLogWithArgs();
  }

LABEL_15:
}

- (void)linkIsReady:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  dispatch_assert_queue_V2(v6);

  if (!v4)
  {
    v11 = sub_10011FA74();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    v10 = sub_10011FA74();
    _NRLogWithArgs();
    goto LABEL_14;
  }

  [(NRLinkManager *)self reportEvent:2005];
  if (!self)
  {
    v13 = v4;
    v8 = 0;
    goto LABEL_13;
  }

  if (self->super._state != 1004)
  {
    v7 = v4;
    v8 = self->super._queue;
LABEL_13:
    v9 = v8;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100120514;
    block[3] = &unk_1001FD060;
    v15 = v4;
    v16 = self;
    v10 = v4;
    dispatch_async(v9, block);

LABEL_14:
    goto LABEL_15;
  }

  if (qword_1002291C0 != -1)
  {
    dispatch_once(&qword_1002291C0, &stru_1001FBE90);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    _NRLogWithArgs();
  }

LABEL_15:
}

- (void)linkIsAvailable:(id)a3
{
  v4 = a3;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v6 = queue;
  dispatch_assert_queue_V2(v6);

  if (!v4)
  {
    v10 = sub_10011FA74();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    v9 = sub_10011FA74();
    _NRLogWithArgs();
    goto LABEL_14;
  }

  [(NRLinkManager *)self reportEvent:2004];
  if (!self)
  {
    [0 addObject:v4];
    v7 = 0;
    goto LABEL_13;
  }

  if (self->super._state != 1004)
  {
    [(NSMutableSet *)self->_links addObject:v4];
    v7 = self->super._queue;
LABEL_13:
    v8 = v7;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100120834;
    block[3] = &unk_1001FD060;
    v13 = v4;
    v14 = self;
    v9 = v4;
    dispatch_async(v8, block);

LABEL_14:
    goto LABEL_15;
  }

  if (qword_1002291C0 != -1)
  {
    dispatch_once(&qword_1002291C0, &stru_1001FBE90);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    _NRLogWithArgs();
  }

LABEL_15:
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
  v6 = [(NRLinkManagerFixedInterface *)self copyName];
  [v5 appendFormat:@"\nName: %@", v6];

  if (self)
  {
    type = self->super._type;
    StringFromNRLinkType = createStringFromNRLinkType();
    [v5 appendFormat:@"\nLinkManager type: %@", StringFromNRLinkType];

    state = self->super._state;
    v10 = [NSString alloc];
    if (state > 1001)
    {
      switch(state)
      {
        case 0x3EA:
          v11 = [v10 initWithUTF8String:"Start"];
          goto LABEL_15;
        case 0x3EB:
          v11 = [v10 initWithUTF8String:"Ready"];
          goto LABEL_15;
        case 0x3EC:
          v11 = [v10 initWithUTF8String:"Cancelled"];
LABEL_15:
          v12 = v11;
          [v5 appendFormat:@"\nState: %@", v11];

          goto LABEL_16;
      }

      goto LABEL_14;
    }

    if (state)
    {
      if (state == 1001)
      {
        v11 = [v10 initWithUTF8String:"Initial"];
        goto LABEL_15;
      }

LABEL_14:
      v11 = [v10 initWithFormat:@"Unknown(%u)", state];
      goto LABEL_15;
    }
  }

  else
  {
    v15 = createStringFromNRLinkType();
    [v5 appendFormat:@"\nLinkManager type: %@", v15];

    v10 = [NSString alloc];
  }

  v16 = [v10 initWithUTF8String:"Invalid"];
  [v5 appendFormat:@"\nState: %@", v16];

  if (!self)
  {
    [v5 appendFormat:@"\nLinks: %@", 0];
    [v5 appendFormat:@"\nFixed Interface: %@", 0];
    [v5 appendFormat:@"\nLocal Endpoint: %@", 0];
    peerEndpoint = 0;
    goto LABEL_17;
  }

LABEL_16:
  [v5 appendFormat:@"\nLinks: %@", self->_links];
  [v5 appendFormat:@"\nFixed Interface: %@", self->_fixedInterfaceName];
  [v5 appendFormat:@"\nLocal Endpoint: %@", self->_localEndpoint];
  peerEndpoint = self->_peerEndpoint;
LABEL_17:
  [v5 appendFormat:@"\nRemote Endpoint: %@", peerEndpoint];
  return v5;
}

- (void)dealloc
{
  if (qword_1002291C0 != -1)
  {
    dispatch_once(&qword_1002291C0, &stru_1001FBE90);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291C0 != -1)
    {
      dispatch_once(&qword_1002291C0, &stru_1001FBE90);
    }

    v3 = qword_1002291B8;
    v6 = 97;
    v7 = [(NRLinkManagerFixedInterface *)self copyName];
    v4 = "";
    v5 = "[NRLinkManagerFixedInterface dealloc]";
    _NRLogWithArgs();
  }

  [(NRLinkManagerFixedInterface *)self invalidateManager:v4];
  v8.receiver = self;
  v8.super_class = NRLinkManagerFixedInterface;
  [(NRLinkManagerFixedInterface *)&v8 dealloc];
}

- (void)invalidateManager
{
  v2.receiver = self;
  v2.super_class = NRLinkManagerFixedInterface;
  [(NRLinkManager *)&v2 invalidateManager];
}

- (void)cancel
{
  if (self)
  {
    v3 = self->super._queue;
    dispatch_assert_queue_V2(v3);

    [(NRLinkManager *)self reportEvent:2003];
    if (self->super._state == 1004)
    {
      if (qword_1002291C0 != -1)
      {
        dispatch_once(&qword_1002291C0, &stru_1001FBE90);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291C0 != -1)
        {
          dispatch_once(&qword_1002291C0, &stru_1001FBE90);
        }

        _NRLogWithArgs();
      }

      return;
    }

    self->super._state = 1004;
    dynamicStoreRef = self->_dynamicStoreRef;
    if (dynamicStoreRef)
    {
      CFRelease(dynamicStoreRef);
      self->_dynamicStoreRef = 0;
    }

    [(NRLinkManagerFixedInterface *)self invalidateManager];
    links = self->_links;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    [0 reportEvent:2003];
    [0 invalidateManager];
    links = 0;
  }

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableSet *)links copy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * i) cancelWithReason:@"Cancelling all links"];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (self)
  {
    v11 = self->_links;
  }

  else
  {
    v11 = 0;
  }

  [(NSMutableSet *)v11 removeAllObjects];
}

@end