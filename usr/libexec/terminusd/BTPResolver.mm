@interface BTPResolver
- (BOOL)start;
- (BTPResolver)initWithSrcIfIndex:(unsigned int)index dstIfIndex:(unsigned int)ifIndex name:(id)name type:(id)type domain:(id)domain;
- (void)dealloc;
- (void)handleReplyFullName:(id)name hostTarget:(id)target port:(unsigned __int16)port txtRecord:(id)record ifIndex:(unsigned int)index;
- (void)stop;
@end

@implementation BTPResolver

- (void)handleReplyFullName:(id)name hostTarget:(id)target port:(unsigned __int16)port txtRecord:(id)record ifIndex:(unsigned int)index
{
  nameCopy = name;
  targetCopy = target;
  recordCopy = record;
  if (self->_srcIfIndex == index)
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      bonjourDomain = self->_bonjourDomain;
      v17 = *&self->_bonjourName;
      v16 = "";
      _NRLogWithArgs();
    }

    LOWORD(v16) = port;
    v14 = [[BTPAdvertiser alloc] initWithSrcIfIndex:self->_srcIfIndex dstIfIndex:self->_dstIfIndex name:self->_bonjourName type:self->_bonjourType domain:self->_bonjourDomain hostTarget:targetCopy port:v16 txtRecord:recordCopy];
    v15 = v14;
    if (v14)
    {
      [(BTPAdvertiser *)v14 start];
      [(NSMutableArray *)self->_advertisers addObject:v15];
    }
  }

  else
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      srcIfIndex = self->_srcIfIndex;
      _NRLogWithArgs();
    }
  }
}

- (void)dealloc
{
  if (self->_sdRefResolve)
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      v5 = 329;
      v3 = "";
      v4 = "[BTPResolver dealloc]";
      _NRLogWithArgs();
    }

    [(BTPResolver *)self stop:v3];
  }

  v6.receiver = self;
  v6.super_class = BTPResolver;
  [(BTPResolver *)&v6 dealloc];
}

- (void)stop
{
  sdRefResolve = self->_sdRefResolve;
  if (sdRefResolve)
  {
    DNSServiceRefDeallocate(sdRefResolve);
    self->_sdRefResolve = 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_advertisers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) stop];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)start
{
  p_sdRefResolve = &self->_sdRefResolve;
  if (self->_sdRefResolve)
  {
    return 1;
  }

  v5 = DNSServiceResolve(p_sdRefResolve, 0, self->_srcIfIndex, [(NSString *)self->_bonjourName UTF8String], [(NSString *)self->_bonjourType UTF8String], [(NSString *)self->_bonjourDomain UTF8String], sub_100027ED8, self);
  sdRefResolve = self->_sdRefResolve;
  if (!sdRefResolve || v5)
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      bonjourDomain = self->_bonjourDomain;
      v14 = *&self->_bonjourName;
      _NRLogWithArgs();
    }

    result = 0;
    *p_sdRefResolve = 0;
  }

  else
  {
    if (qword_100228F40 != -1)
    {
      v9 = self->_sdRefResolve;
      dispatch_once(&qword_100228F40, &stru_1001FA720);
      sdRefResolve = v9;
    }

    v7 = DNSServiceSetDispatchQueue(sdRefResolve, qword_100228F38);
    if (!v7)
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F30 != -1)
        {
          dispatch_once(&qword_100228F30, &stru_1001FA700);
        }

        v17 = self->_bonjourDomain;
        srcIfIndex = self->_srcIfIndex;
        v15 = *&self->_bonjourName;
        _NRLogWithArgs();
      }

      return 1;
    }

    v8 = v7;
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      v12 = 306;
      v13 = v8;
      v10 = "";
      v11 = "[BTPResolver start]";
      _NRLogWithArgs();
    }

    [(BTPResolver *)self stop:v10];
    return 0;
  }

  return result;
}

- (BTPResolver)initWithSrcIfIndex:(unsigned int)index dstIfIndex:(unsigned int)ifIndex name:(id)name type:(id)type domain:(id)domain
{
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  v22.receiver = self;
  v22.super_class = BTPResolver;
  v16 = [(BTPResolver *)&v22 init];
  v17 = v16;
  if (v16)
  {
    v16->_sdRefResolve = 0;
    v16->_srcIfIndex = index;
    v16->_dstIfIndex = ifIndex;
    objc_storeStrong(&v16->_bonjourName, name);
    objc_storeStrong(&v17->_bonjourType, type);
    objc_storeStrong(&v17->_bonjourDomain, domain);
    v18 = +[NSMutableArray array];
    advertisers = v17->_advertisers;
    v17->_advertisers = v18;

    v20 = v17;
  }

  else
  {
    if (qword_100228F30 != -1)
    {
      dispatch_once(&qword_100228F30, &stru_1001FA700);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F30 != -1)
      {
        dispatch_once(&qword_100228F30, &stru_1001FA700);
      }

      _NRLogWithArgs();
    }
  }

  return v17;
}

@end