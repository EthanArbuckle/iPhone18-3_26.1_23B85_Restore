@interface NRPendingOutgoingSeqnoReq
- (BOOL)cancelIfMatchesPrefix:(id)prefix routerID:(unint64_t)d seqno:(unsigned __int16)seqno;
- (BOOL)cancelIfRouteUnselected;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesPrefix:(id)prefix routerID:(unint64_t)d;
- (NRBabelInstance)instance;
- (NRBabelRoute)route;
- (NRPendingOutgoingSeqnoReq)initWithInstance:(id)instance prefix:(id)prefix routerID:(unint64_t)d;
- (id)createTLV;
- (id)description;
- (void)cancelTimer;
- (void)cancelWithDelay:(BOOL)delay;
- (void)dealloc;
- (void)sendSeqnoReq;
- (void)start;
@end

@implementation NRPendingOutgoingSeqnoReq

- (NRBabelInstance)instance
{
  WeakRetained = objc_loadWeakRetained(&self->_instance);

  return WeakRetained;
}

- (NRBabelRoute)route
{
  WeakRetained = objc_loadWeakRetained(&self->_route);

  return WeakRetained;
}

- (BOOL)cancelIfMatchesPrefix:(id)prefix routerID:(unint64_t)d seqno:(unsigned __int16)seqno
{
  seqnoCopy = seqno;
  v7 = [(NRPendingOutgoingSeqnoReq *)self matchesPrefix:prefix routerID:d];
  if (!v7)
  {
    return v7;
  }

  seqno = [(NRPendingOutgoingSeqnoReq *)self seqno];
  if (seqno == seqnoCopy)
  {
    goto LABEL_11;
  }

  if (seqno >= seqnoCopy)
  {
    if ((seqno - seqnoCopy) >= 0)
    {
      LOBYTE(v9) = -1;
    }

    else
    {
      LOBYTE(v9) = 1;
    }

    if ((seqno - seqnoCopy) == 0x8000)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((seqnoCopy - seqno) == 0x8000)
  {
LABEL_11:
    [(NRPendingOutgoingSeqnoReq *)self cancelWithDelay:0];
    LOBYTE(v7) = 1;
    return v7;
  }

  v9 = ((seqnoCopy - seqno) >> 15) | 1;
LABEL_10:
  if ((v9 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (BOOL)cancelIfRouteUnselected
{
  route = [(NRPendingOutgoingSeqnoReq *)self route];
  v4 = route;
  if (!route)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_17;
    }

    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v9 = 2524;
    selfCopy2 = self;
    v7 = "";
    v8 = "[NRPendingOutgoingSeqnoReq cancelIfRouteUnselected]";
    goto LABEL_16;
  }

  if (([route selected] & 1) == 0)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_17;
    }

    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    selfCopy2 = self;
    v11 = v4;
    v9 = 2529;
    v7 = "";
    v8 = "[NRPendingOutgoingSeqnoReq cancelIfRouteUnselected]";
LABEL_16:
    _NRLogWithArgs();
LABEL_17:
    [(NRPendingOutgoingSeqnoReq *)self cancelWithDelay:0, v7, v8, v9, selfCopy2, v11];
    v5 = 1;
    goto LABEL_18;
  }

  v5 = 0;
LABEL_18:

  return v5;
}

- (void)dealloc
{
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v5 = 2516;
    selfCopy = self;
    v3 = "";
    v4 = "[NRPendingOutgoingSeqnoReq dealloc]";
    _NRLogWithArgs();
  }

  [(NRPendingOutgoingSeqnoReq *)self cancelTimer:v3];
  v7.receiver = self;
  v7.super_class = NRPendingOutgoingSeqnoReq;
  [(NRPendingOutgoingSeqnoReq *)&v7 dealloc];
}

- (void)cancelWithDelay:(BOOL)delay
{
  if (delay)
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs();
    }

    self->_retriesLeft = 0x8000;
    retryTimer = self->_retryTimer;
    v5 = dispatch_time(0x8000000000000000, 20000000000);

    dispatch_source_set_timer(retryTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  }

  else
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v9 = 2508;
      selfCopy = self;
      v7 = "";
      v8 = "[NRPendingOutgoingSeqnoReq cancelWithDelay:]";
      _NRLogWithArgs();
    }

    [(NRPendingOutgoingSeqnoReq *)self cancelTimer:v7];
    instance = [(NRPendingOutgoingSeqnoReq *)self instance];
    posrs = [instance posrs];
    [posrs removeObject:self];
  }
}

- (void)cancelTimer
{
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    dispatch_source_cancel(retryTimer);
    v4 = self->_retryTimer;
    self->_retryTimer = 0;
  }
}

- (void)start
{
  if (self->_retryTimer)
  {
    self->_retriesLeft = 10;
    [(NRPendingOutgoingSeqnoReq *)self sendSeqnoReq];
    retryTimer = self->_retryTimer;

    dispatch_source_set_timer(retryTimer, 0x8000000000000000, 0x3B9ACA00uLL, 0x989680uLL);
  }

  else
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs();
    }
  }
}

- (id)description
{
  v3 = [NSString alloc];
  bPrefix = self->_bPrefix;
  routerID = self->_routerID;
  v6 = bswap64(routerID);
  if (v6 > 0xFFFE)
  {
    v8 = [NSString alloc];
    v9 = bswap32(routerID);
    v7 = [v8 initWithFormat:@"<%x:%x:%x:%x>", HIWORD(v9), v9, bswap32(HIDWORD(routerID)) >> 16, __rev16(HIWORD(routerID))];
  }

  else
  {
    v7 = [[NSString alloc] initWithFormat:@"<%llx>", v6, v13, v14, v15];
  }

  v10 = v7;
  v11 = [v3 initWithFormat:@"%@ %@ seqno %u orig %@ retries %d target %@", bPrefix, v7, -[NRPendingOutgoingSeqnoReq seqno](self, "seqno"), self->_originator, self->_retriesLeft, self->_target];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bPrefix = [v5 bPrefix];
    routerID = [v5 routerID];

    v8 = [(NRPendingOutgoingSeqnoReq *)self matchesPrefix:bPrefix routerID:routerID];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)matchesPrefix:(id)prefix routerID:(unint64_t)d
{
  if (self->_routerID == d)
  {
    return [(NRBabelPrefix *)self->_bPrefix isEqual:prefix];
  }

  else
  {
    return 0;
  }
}

- (NRPendingOutgoingSeqnoReq)initWithInstance:(id)instance prefix:(id)prefix routerID:(unint64_t)d
{
  instanceCopy = instance;
  prefixCopy = prefix;
  v29.receiver = self;
  v29.super_class = NRPendingOutgoingSeqnoReq;
  v10 = [(NRPendingOutgoingSeqnoReq *)&v29 init];
  if (!v10)
  {
    v20 = sub_1000CB9A8();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v22 = sub_1000CB9A8();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    v23 = *__error();
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "[NRPendingOutgoingSeqnoReq initWithInstance:prefix:routerID:]";
    sub_1000CB9A8();
    _NRLogAbortWithPack();
  }

  v11 = v10;
  [(NRPendingOutgoingSeqnoReq *)v10 setInstance:instanceCopy];
  bPrefix = v11->_bPrefix;
  v11->_bPrefix = prefixCopy;
  v13 = prefixCopy;

  v11->_routerID = d;
  queue = [instanceCopy queue];
  v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  retryTimer = v11->_retryTimer;
  v11->_retryTimer = v15;

  objc_initWeak(&location, v11);
  v17 = v11->_retryTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000D4398;
  handler[3] = &unk_1001FD0D8;
  objc_copyWeak(&v27, &location);
  v18 = v11;
  v26 = v18;
  dispatch_source_set_event_handler(v17, handler);
  dispatch_activate(v11->_retryTimer);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return v18;
}

- (void)sendSeqnoReq
{
  if (qword_100229100 != -1)
  {
    dispatch_once(&qword_100229100, &stru_1001FB6C8);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    v8 = 2418;
    selfCopy = self;
    v6 = "";
    v7 = "[NRPendingOutgoingSeqnoReq sendSeqnoReq]";
    _NRLogWithArgs();
  }

  target = self->_target;
  v4 = [(NRPendingOutgoingSeqnoReq *)self createTLV:v6];
  v10 = v4;
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  [(NRBabelNeighbor *)target sendTLVs:v5];
}

- (id)createTLV
{
  WORD2(v6) = __rev16([(NRPendingOutgoingSeqnoReq *)self seqno:10]);
  HIWORD(v6) = self->_hopCount;
  bPrefix = self->_bPrefix;
  routerID = self->_routerID;
  BYTE1(v6) = [(NRBabelPrefix *)bPrefix writeToAE:&v6 + 2 plen:&v6 + 3 prefix:&v8]+ 14;
  v4 = [[NSData alloc] initWithBytes:&v6 length:BYTE1(v6) + 2];

  return v4;
}

@end