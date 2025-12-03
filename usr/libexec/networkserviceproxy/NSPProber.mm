@interface NSPProber
- (NSPProber)initWithCoder:(id)coder;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSPProber

- (NSString)description
{
  if (self)
  {
    v3 = [[NSMutableString alloc] initWithCapacity:0];
    sub_1000417D0(v3, self->_name, @"Probe", 0, 14);
    sub_100042020(v3, self->_probingActive, @"Probing active", 0, 14);
    sub_10004208C(v3, self->_probeCount, @"Probe count", 0, 14);
    sub_10004208C(v3, self->_probeSuccessCount, @"Probe success count", 0, 14);
    sub_10004208C(v3, self->_probeFailedCount, @"Probe failed count", 0, 14);
    sub_10004208C(v3, self->_probeRedirectedCount, @"Probe redirected count", 0, 14);
    sub_10004208C(v3, self->_probeServerErrorCount, @"Probe server error count", 0, 14);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSPProber)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NSPProber;
  v5 = [(NSPProber *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proberName"];
    name = v5->_name;
    v5->_name = v6;

    v5->_proxyProber = [coderCopy decodeBoolForKey:@"proberProxy"];
    v5->_probeCount = [coderCopy decodeIntegerForKey:@"proberProbeCount"];
    v5->_probeConnectionTimeout = [coderCopy decodeIntegerForKey:@"proberProbeConnectionTimeout"];
    v5->_probingActive = [coderCopy decodeBoolForKey:@"proberProbeActiveCount"];
    v5->_probeOnNetworkChange = [coderCopy decodeBoolForKey:@"proberProbeOnNetworkChange"];
    v5->_linkQuality = [coderCopy decodeIntForKey:@"proberLinkQuality"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proberNextProbeDate"];
    nextProbeDate = v5->_nextProbeDate;
    v5->_nextProbeDate = v8;

    v5->_probeSuccessCount = [coderCopy decodeIntegerForKey:@"proberProbeSuccessCount"];
    v5->_probeFailedCount = [coderCopy decodeIntegerForKey:@"proberProbeFailedCount"];
    v5->_probeRedirectedCount = [coderCopy decodeIntegerForKey:@"proberProbeRedirectedCount"];
    v5->_probeServerErrorCount = [coderCopy decodeIntegerForKey:@"proberProbeServerErrorCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    [coderCopy encodeObject:self->_name forKey:@"proberName"];
    [coderCopy encodeBool:self->_proxyProber forKey:@"proberProxy"];
    [coderCopy encodeInteger:self->_probeCount forKey:@"proberProbeCount"];
    [coderCopy encodeInteger:self->_probeConnectionTimeout forKey:@"proberProbeConnectionTimeout"];
    [coderCopy encodeBool:self->_probingActive forKey:@"proberProbeActiveCount"];
    [coderCopy encodeBool:self->_probeOnNetworkChange forKey:@"proberProbeOnNetworkChange"];
    [coderCopy encodeInt:self->_linkQuality forKey:@"proberLinkQuality"];
    [coderCopy encodeObject:self->_nextProbeDate forKey:@"proberNextProbeDate"];
    [coderCopy encodeInteger:self->_probeSuccessCount forKey:@"proberProbeSuccessCount"];
    [coderCopy encodeInteger:self->_probeFailedCount forKey:@"proberProbeFailedCount"];
    [coderCopy encodeInteger:self->_probeRedirectedCount forKey:@"proberProbeRedirectedCount"];
    probeServerErrorCount = self->_probeServerErrorCount;
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"proberName"];
    [coderCopy encodeBool:0 forKey:@"proberProxy"];
    [coderCopy encodeInteger:0 forKey:@"proberProbeCount"];
    [coderCopy encodeInteger:0 forKey:@"proberProbeConnectionTimeout"];
    [coderCopy encodeBool:0 forKey:@"proberProbeActiveCount"];
    [coderCopy encodeBool:0 forKey:@"proberProbeOnNetworkChange"];
    [coderCopy encodeInt:0 forKey:@"proberLinkQuality"];
    [coderCopy encodeObject:0 forKey:@"proberNextProbeDate"];
    [coderCopy encodeInteger:0 forKey:@"proberProbeSuccessCount"];
    [coderCopy encodeInteger:0 forKey:@"proberProbeFailedCount"];
    [coderCopy encodeInteger:0 forKey:@"proberProbeRedirectedCount"];
    probeServerErrorCount = 0;
  }

  [coderCopy encodeInteger:probeServerErrorCount forKey:@"proberProbeServerErrorCount"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSPProber allocWithZone:?]];
  v5 = v4;
  if (self)
  {
    sub_100006B14(v4, self->_name);
    proxyProber = self->_proxyProber;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_100006B14(v4, 0);
  proxyProber = 0;
  if (v5)
  {
LABEL_3:
    *(v5 + 11) = proxyProber;
  }

LABEL_4:
  if (self)
  {
    sub_10001B680(v5, self->_probeSession);
    sub_100006664(v5, self->_dataTask);
    sub_10000395C(v5, self->_operationQueue);
    sub_100006B24(v5, self->_probeRetryTimer);
    probeCount = self->_probeCount;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_10001B680(v5, 0);
  sub_100006664(v5, 0);
  sub_10000395C(v5, 0);
  sub_100006B24(v5, 0);
  probeCount = 0;
  if (v5)
  {
LABEL_6:
    *(v5 + 64) = probeCount;
  }

LABEL_7:
  if (self)
  {
    probeConnectionTimeout = self->_probeConnectionTimeout;
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  probeConnectionTimeout = 0;
  if (v5)
  {
LABEL_9:
    *(v5 + 72) = probeConnectionTimeout;
  }

LABEL_10:
  if (self)
  {
    probingActive = self->_probingActive;
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  probingActive = 0;
  if (v5)
  {
LABEL_12:
    *(v5 + 8) = probingActive;
  }

LABEL_13:
  if (self)
  {
    probeOnNetworkChange = self->_probeOnNetworkChange;
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  probeOnNetworkChange = 0;
  if (v5)
  {
LABEL_15:
    *(v5 + 9) = probeOnNetworkChange;
  }

LABEL_16:
  if (self)
  {
    linkQuality = self->_linkQuality;
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  linkQuality = 0;
  if (v5)
  {
LABEL_18:
    *(v5 + 12) = linkQuality;
  }

LABEL_19:
  if (self)
  {
    sub_1000050EC(v5, self->_nextProbeDate);
    path = self->_path;
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  sub_1000050EC(v5, 0);
  path = 0;
  if (v5)
  {
LABEL_21:
    objc_storeStrong((v5 + 88), path);
  }

LABEL_22:
  if (self)
  {
    probePending = self->_probePending;
    if (!v5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  probePending = 0;
  if (v5)
  {
LABEL_24:
    *(v5 + 10) = probePending;
  }

LABEL_25:
  if (self)
  {
    probeSuccessCount = self->_probeSuccessCount;
    if (!v5)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  probeSuccessCount = 0;
  if (v5)
  {
LABEL_27:
    *(v5 + 96) = probeSuccessCount;
  }

LABEL_28:
  if (self)
  {
    probeFailedCount = self->_probeFailedCount;
    if (!v5)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  probeFailedCount = 0;
  if (v5)
  {
LABEL_30:
    *(v5 + 104) = probeFailedCount;
  }

LABEL_31:
  if (self)
  {
    probeRedirectedCount = self->_probeRedirectedCount;
    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  probeRedirectedCount = 0;
  if (v5)
  {
LABEL_33:
    *(v5 + 112) = probeRedirectedCount;
  }

LABEL_34:
  if (!self)
  {
    probeServerErrorCount = 0;
    if (!v5)
    {
      return v5;
    }

    goto LABEL_36;
  }

  probeServerErrorCount = self->_probeServerErrorCount;
  if (v5)
  {
LABEL_36:
    *(v5 + 120) = probeServerErrorCount;
  }

  return v5;
}

- (void)dealloc
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      name = self->_name;
    }

    else
    {
      name = 0;
    }

    *buf = 138412290;
    v8 = name;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Dealloc %@ prober", buf, 0xCu);
  }

  sub_10001C38C(self);
  if (self)
  {
    probeSession = self->_probeSession;
    if (probeSession)
    {
      [(NSURLSession *)probeSession invalidateAndCancel];
      sub_10001B680(self, 0);
    }
  }

  sub_10000395C(self, 0);
  sub_100006664(self, 0);
  v6.receiver = self;
  v6.super_class = NSPProber;
  [(NSPProber *)&v6 dealloc];
}

@end