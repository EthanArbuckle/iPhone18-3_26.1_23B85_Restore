@interface BTPBrowser
- (BOOL)start;
- (BTPBrowser)initWithSrcIfIndex:(unsigned int)index dstIfIndex:(unsigned int)ifIndex bonjourType:(id)type;
- (void)dealloc;
- (void)stop;
@end

@implementation BTPBrowser

- (void)dealloc
{
  if (self->_sdRefBrowse)
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

      v5 = 218;
      v3 = "";
      v4 = "[BTPBrowser dealloc]";
      _NRLogWithArgs();
    }

    [(BTPBrowser *)self stop:v3];
  }

  v6.receiver = self;
  v6.super_class = BTPBrowser;
  [(BTPBrowser *)&v6 dealloc];
}

- (void)stop
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_resolvers;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_resolvers objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v7), v10];
        [v8 stop];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  sdRefBrowse = self->_sdRefBrowse;
  if (sdRefBrowse)
  {
    DNSServiceRefDeallocate(sdRefBrowse);
    self->_sdRefBrowse = 0;
  }
}

- (BOOL)start
{
  p_sdRefBrowse = &self->_sdRefBrowse;
  if (self->_sdRefBrowse)
  {
    return 1;
  }

  v5 = DNSServiceBrowse(p_sdRefBrowse, 0, self->_srcIfIndex, [(NSString *)self->_bonjourType UTF8String], "local", sub_10002897C, self);
  sdRefBrowse = self->_sdRefBrowse;
  if (sdRefBrowse)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (qword_100228F40 != -1)
    {
      v10 = self->_sdRefBrowse;
      dispatch_once(&qword_100228F40, &stru_1001FA720);
      sdRefBrowse = v10;
    }

    v8 = DNSServiceSetDispatchQueue(sdRefBrowse, qword_100228F38);
    if (!v8)
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

        bonjourType = self->_bonjourType;
        srcIfIndex = self->_srcIfIndex;
        _NRLogWithArgs();
      }

      return 1;
    }

    v9 = v8;
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

      v13 = 196;
      v14 = v9;
      v11 = "";
      v12 = "[BTPBrowser start]";
      _NRLogWithArgs();
    }

    [(BTPBrowser *)self stop:v11];
    return 0;
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

      v15 = self->_bonjourType;
      _NRLogWithArgs();
    }

    result = 0;
    *p_sdRefBrowse = 0;
  }

  return result;
}

- (BTPBrowser)initWithSrcIfIndex:(unsigned int)index dstIfIndex:(unsigned int)ifIndex bonjourType:(id)type
{
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = BTPBrowser;
  v10 = [(BTPBrowser *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_sdRefBrowse = 0;
    v10->_srcIfIndex = index;
    v10->_dstIfIndex = ifIndex;
    objc_storeStrong(&v10->_bonjourType, type);
    v12 = +[NSMutableDictionary dictionary];
    resolvers = v11->_resolvers;
    v11->_resolvers = v12;

    v14 = v11;
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

  return v11;
}

@end