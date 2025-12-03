@interface BTPAdvertiser
- (BOOL)start;
- (BTPAdvertiser)initWithSrcIfIndex:(unsigned int)index dstIfIndex:(unsigned int)ifIndex name:(id)name type:(id)type domain:(id)domain hostTarget:(id)target port:(unsigned __int16)port txtRecord:(id)self0;
- (void)dealloc;
- (void)stop;
@end

@implementation BTPAdvertiser

- (void)dealloc
{
  if (self->_sdRefRegister)
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

      v5 = 433;
      v3 = "";
      v4 = "[BTPAdvertiser dealloc]";
      _NRLogWithArgs();
    }

    [(BTPAdvertiser *)self stop:v3];
  }

  v6.receiver = self;
  v6.super_class = BTPAdvertiser;
  [(BTPAdvertiser *)&v6 dealloc];
}

- (void)stop
{
  sdRefRegister = self->_sdRefRegister;
  if (sdRefRegister)
  {
    DNSServiceRefDeallocate(sdRefRegister);
    self->_sdRefRegister = 0;
  }

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
    hostTarget = self->_hostTarget;
    v4 = *&self->_bonjourName;
    v7 = bswap32(self->_port) >> 16;
    dstIfIndex = self->_dstIfIndex;
    _NRLogWithArgs();
  }
}

- (BOOL)start
{
  p_sdRefRegister = &self->_sdRefRegister;
  if (self->_sdRefRegister)
  {
    return 1;
  }

  v5 = DNSServiceRegister(p_sdRefRegister, 0, self->_dstIfIndex, [(NSString *)self->_bonjourName UTF8String], [(NSString *)self->_bonjourType UTF8String], [(NSString *)self->_bonjourDomain UTF8String], [(NSString *)self->_hostTarget UTF8String], self->_port, [(NSData *)self->_txtRecord length], [(NSData *)self->_txtRecord bytes], nullsub_6, self);
  sdRefRegister = self->_sdRefRegister;
  if (!sdRefRegister || v5)
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

      dstIfIndex = self->_dstIfIndex;
      bonjourDomain = self->_bonjourDomain;
      hostTarget = self->_hostTarget;
      v14 = *&self->_bonjourName;
      v20 = bswap32(self->_port) >> 16;
      _NRLogWithArgs();
    }

    result = 0;
    *p_sdRefRegister = 0;
  }

  else
  {
    if (qword_100228F40 != -1)
    {
      v9 = self->_sdRefRegister;
      dispatch_once(&qword_100228F40, &stru_1001FA720);
      sdRefRegister = v9;
    }

    v7 = DNSServiceSetDispatchQueue(sdRefRegister, qword_100228F38);
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
        v19 = self->_hostTarget;
        v15 = *&self->_bonjourName;
        v21 = bswap32(self->_port) >> 16;
        v23 = self->_dstIfIndex;
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

      callBack = 411;
      v13 = v8;
      txtLen = "";
      txtRecord = "[BTPAdvertiser start]";
      _NRLogWithArgs();
    }

    [(BTPAdvertiser *)self stop:txtLen];
    return 0;
  }

  return result;
}

- (BTPAdvertiser)initWithSrcIfIndex:(unsigned int)index dstIfIndex:(unsigned int)ifIndex name:(id)name type:(id)type domain:(id)domain hostTarget:(id)target port:(unsigned __int16)port txtRecord:(id)self0
{
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  targetCopy = target;
  recordCopy = record;
  v26.receiver = self;
  v26.super_class = BTPAdvertiser;
  v19 = [(BTPAdvertiser *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_sdRefRegister = 0;
    v19->_srcIfIndex = index;
    v19->_dstIfIndex = ifIndex;
    objc_storeStrong(&v19->_bonjourName, name);
    objc_storeStrong(&v20->_bonjourType, type);
    objc_storeStrong(&v20->_bonjourDomain, domain);
    objc_storeStrong(&v20->_hostTarget, target);
    v20->_port = port;
    objc_storeStrong(&v20->_txtRecord, record);
    v21 = v20;
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

  return v20;
}

@end