@interface NRLinkManagerWired
- (id)copyStatusString;
- (id)initManagerWithQueue:(id)a3 managerDelegate:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)invalidateManager;
- (void)linkDidReceiveData:(id)a3 data:(id)a4;
- (void)linkIsAvailable:(id)a3;
- (void)linkIsReady:(id)a3;
- (void)linkIsSuspended:(id)a3;
- (void)linkIsUnavailable:(id)a3;
@end

@implementation NRLinkManagerWired

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
    block[2] = sub_1000E284C;
    block[3] = &unk_1001FD088;
    v15 = v6;
    v16 = self;
    v17 = v7;
    v12 = v6;
    dispatch_async(v11, block);

    goto LABEL_11;
  }

  if (qword_100229120 != -1)
  {
    dispatch_once(&qword_100229120, &stru_1001FB968);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
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
    v10 = sub_1000E2538();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    v9 = sub_1000E2538();
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
    block[2] = sub_1000E2B6C;
    block[3] = &unk_1001FD060;
    block[4] = self;
    v13 = v4;
    v9 = v4;
    dispatch_async(v8, block);

LABEL_14:
    goto LABEL_15;
  }

  if (qword_100229120 != -1)
  {
    dispatch_once(&qword_100229120, &stru_1001FB968);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
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
    v11 = sub_1000E2538();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    v10 = sub_1000E2538();
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
    block[2] = sub_1000E4284;
    block[3] = &unk_1001FD060;
    v15 = v4;
    v16 = self;
    v10 = v4;
    dispatch_async(v9, block);

LABEL_14:
    goto LABEL_15;
  }

  if (qword_100229120 != -1)
  {
    dispatch_once(&qword_100229120, &stru_1001FB968);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
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
    v11 = sub_1000E2538();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    v10 = sub_1000E2538();
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
    block[2] = sub_1000E4584;
    block[3] = &unk_1001FD060;
    v15 = v4;
    v16 = self;
    v10 = v4;
    dispatch_async(v9, block);

LABEL_14:
    goto LABEL_15;
  }

  if (qword_100229120 != -1)
  {
    dispatch_once(&qword_100229120, &stru_1001FB968);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
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
    v10 = sub_1000E2538();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_15;
    }

    v9 = sub_1000E2538();
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
    block[2] = sub_1000E48A4;
    block[3] = &unk_1001FD060;
    v13 = v4;
    v14 = self;
    v9 = v4;
    dispatch_async(v8, block);

LABEL_14:
    goto LABEL_15;
  }

  if (qword_100229120 != -1)
  {
    dispatch_once(&qword_100229120, &stru_1001FB968);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
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
  v6 = [(NRLinkManagerWired *)self copyName];
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
    [v5 appendFormat:@"\nLocal state: %@", 0];
    nrUUIDToPeerDictionary = 0;
    goto LABEL_17;
  }

LABEL_16:
  [v5 appendFormat:@"\nLinks: %@", self->_links];
  [v5 appendFormat:@"\nLocal state: %@", self->_interfaceToLocalAddressDictionary];
  nrUUIDToPeerDictionary = self->_nrUUIDToPeerDictionary;
LABEL_17:
  [v5 appendFormat:@"\nPeer state: %@", nrUUIDToPeerDictionary];
  return v5;
}

- (void)dealloc
{
  if (qword_100229120 != -1)
  {
    dispatch_once(&qword_100229120, &stru_1001FB968);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229120 != -1)
    {
      dispatch_once(&qword_100229120, &stru_1001FB968);
    }

    v3 = qword_100229118;
    v6 = 120;
    v7 = [(NRLinkManagerWired *)self copyName];
    v4 = "";
    v5 = "[NRLinkManagerWired dealloc]";
    _NRLogWithArgs();
  }

  [(NRLinkManagerWired *)self invalidateManager:v4];
  v8.receiver = self;
  v8.super_class = NRLinkManagerWired;
  [(NRLinkManagerWired *)&v8 dealloc];
}

- (void)invalidateManager
{
  v5.receiver = self;
  v5.super_class = NRLinkManagerWired;
  [(NRLinkManager *)&v5 invalidateManager];
  if (self)
  {
    scdynamicStoreRef = self->_scdynamicStoreRef;
    if (scdynamicStoreRef)
    {
      SCDynamicStoreSetDispatchQueue(scdynamicStoreRef, 0);
      v4 = self->_scdynamicStoreRef;
      if (v4)
      {
        CFRelease(v4);
        self->_scdynamicStoreRef = 0;
      }
    }
  }
}

- (void)cancel
{
  if (self)
  {
    self->super._state = 1004;
    [(NRLinkManager *)self reportEvent:2003];
    [(NRLinkManagerWired *)self invalidateManager];
    links = self->_links;
  }

  else
  {
    [0 reportEvent:2003];
    [0 invalidateManager];
    links = 0;
  }

  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableSet *)links copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * i) cancelWithReason:{@"Cancelling Wired link manager", v10}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  if (self)
  {
    v9 = self->_links;
  }

  else
  {
    v9 = 0;
  }

  [(NSMutableSet *)v9 removeAllObjects];
}

- (id)initManagerWithQueue:(id)a3 managerDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v26 = sub_1000E2538();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  dispatch_assert_queue_V2(v6);
  if (!v7)
  {
    v28 = sub_1000E2538();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
LABEL_11:
      v30 = sub_1000E2538();
      _NRLogWithArgs();

      v24 = 0;
      goto LABEL_7;
    }

LABEL_15:
    v24 = 0;
    goto LABEL_7;
  }

  v34.receiver = self;
  v34.super_class = NRLinkManagerWired;
  v8 = [(NRLinkManager *)&v34 initManagerWithQueue:v6 managerDelegate:v7];
  if (!v8)
  {
    v31 = sub_1000E2538();
    v32 = _NRLogIsLevelEnabled();

    if (v32)
    {
      v33 = sub_1000E2538();
      _NRLogWithArgs();
    }

    self = 0;
    goto LABEL_15;
  }

  v9 = v8;
  v8[8] = 5;
  v10 = objc_alloc_init(NSMutableSet);
  v11 = *(v9 + 40);
  *(v9 + 40) = v10;

  v12 = objc_alloc_init(NSMutableSet);
  v13 = *(v9 + 48);
  *(v9 + 48) = v12;

  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = *(v9 + 80);
  *(v9 + 80) = v14;

  v16 = objc_alloc_init(NSMutableDictionary);
  v17 = *(v9 + 88);
  *(v9 + 88) = v16;

  v18 = objc_alloc_init(NSMutableDictionary);
  v19 = *(v9 + 64);
  *(v9 + 64) = v18;

  v20 = objc_alloc_init(NSMutableDictionary);
  v21 = *(v9 + 72);
  *(v9 + 72) = v20;

  [v9 reportEvent:2001];
  v22 = *(v9 + 24);
  dispatch_assert_queue_V2(v22);

  if (*(v9 + 12) != 1003)
  {
    v23 = *(v9 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E51D8;
    block[3] = &unk_1001FD3C8;
    block[4] = v9;
    dispatch_async(v23, block);

    sub_1000E5270(v9);
  }

  *(v9 + 12) = 1003;
  [v9 reportEvent:2002];
  self = v9;
  v24 = self;
LABEL_7:

  return v24;
}

@end