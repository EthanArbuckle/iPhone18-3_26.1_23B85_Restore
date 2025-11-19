@interface NRBabelSource
- (BOOL)isDeepEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNewDistanceUnfeasibleWithSeqno:(unsigned __int16)a3 metric:(unsigned __int16)a4;
- (BOOL)matchesPrefix:(id)a3 routerID:(unint64_t)a4;
- (NRBabelInstance)instance;
- (id)description;
- (id)descriptionWithoutMetric;
- (void)dealloc;
- (void)resetGCTimer;
- (void)setupGCTimer;
@end

@implementation NRBabelSource

- (NRBabelInstance)instance
{
  WeakRetained = objc_loadWeakRetained(&self->_instance);

  return WeakRetained;
}

- (void)resetGCTimer
{
  gcTimer = self->_gcTimer;
  v3 = dispatch_time(0x8000000000000000, 180000000000);

  dispatch_source_set_timer(gcTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
}

- (void)setupGCTimer
{
  objc_initWeak(&location, self);
  v3 = [(NRBabelSource *)self instance];
  v4 = [v3 queue];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4);
  gcTimer = self->_gcTimer;
  self->_gcTimer = v5;

  v7 = self->_gcTimer;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000D1EE0;
  v11 = &unk_1001FC730;
  objc_copyWeak(&v12, &location);
  dispatch_source_set_event_handler(v7, &v8);
  dispatch_activate(self->_gcTimer);
  [(NRBabelSource *)self resetGCTimer:v8];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (BOOL)isNewDistanceUnfeasibleWithSeqno:(unsigned __int16)a3 metric:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(NRBabelSource *)self seqno];
  if (v7 == v5)
  {
    goto LABEL_2;
  }

  if (v7 >= v5)
  {
    if ((v7 - v5) >= 0)
    {
      LOBYTE(v11) = -1;
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    if ((v7 - v5) != 0x8000)
    {
      return (v11 & 0x80u) != 0;
    }
  }

  else if ((v5 - v7) != 0x8000)
  {
    v11 = ((v5 - v7) >> 15) | 1;
    return (v11 & 0x80u) != 0;
  }

LABEL_2:
  metric = self->_metric;
  v9 = metric - v4;
  if (metric == v4)
  {
    LOBYTE(v10) = 0;
  }

  else if (metric >= v4)
  {
    v15 = (metric - v4);
    if (v9 >= 0)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    if (v15 == 0x8000)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      LOBYTE(v10) = v16;
    }
  }

  else
  {
    v12 = v4 - metric;
    v13 = v12;
    v10 = (v12 >> 15) | 1;
    if (v13 == 0x8000)
    {
      LOBYTE(v10) = 0;
    }
  }

  return (v10 & 0x80u) == 0;
}

- (BOOL)isDeepEqual:(id)a3
{
  v4 = a3;
  if (-[NRBabelSource isEqual:](self, "isEqual:", v4) && (v5 = -[NRBabelSource seqno](self, "seqno"), v5 == [v4 seqno]))
  {
    metric = self->_metric;
    v7 = metric == [v4 metric];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    routerID = self->_routerID;
    if (routerID == [v5 routerID])
    {
      bPrefix = self->_bPrefix;
      v8 = [v5 bPrefix];
      v9 = [(NRBabelPrefix *)bPrefix isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)descriptionWithoutMetric
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
  v11 = [v3 initWithFormat:@"%@ %@ seqno %u", bPrefix, v7, -[NRBabelSource seqno](self, "seqno")];

  return v11;
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
  v11 = [v3 initWithFormat:@"%@ %@ seqno %u metric %u", bPrefix, v7, -[NRBabelSource seqno](self, "seqno"), self->_metric];

  return v11;
}

- (BOOL)matchesPrefix:(id)a3 routerID:(unint64_t)a4
{
  if (self->_routerID == a4)
  {
    return [a3 isEqual:self->_bPrefix];
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  gcTimer = self->_gcTimer;
  if (gcTimer)
  {
    dispatch_source_cancel(gcTimer);
  }

  v4.receiver = self;
  v4.super_class = NRBabelSource;
  [(NRBabelSource *)&v4 dealloc];
}

@end