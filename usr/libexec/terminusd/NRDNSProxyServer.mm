@interface NRDNSProxyServer
- (id)description;
- (void)cancel;
- (void)start;
@end

@implementation NRDNSProxyServer

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = NRDNSProxyServer;
  [(NRDNSProxy *)&v4 cancel];
  if (self)
  {
    if (self->_do53Proxy)
    {
      mrc_dns_proxy_invalidate();
      do53Proxy = self->_do53Proxy;
      self->_do53Proxy = 0;
    }
  }
}

- (void)start
{
  if (self)
  {
    if (!self->super._started)
    {
      v9.receiver = self;
      v9.super_class = NRDNSProxyServer;
      [(NRDNSProxy *)&v9 start];
      if (self->super._state - 1 >= 2)
      {
        if (self->super._dnsProtocol)
        {
          nrUUID = self->super._nrUUID;
          v4 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v6 = self->super._nrUUID;
            v7 = _NRCopyLogObjectForNRUUID();
            dnsProtocol = self->super._dnsProtocol;

            _NRLogWithArgs();
          }

          sub_100023B5C(self, 4);
        }

        else
        {
          sub_1000240D0(self);
        }
      }
    }
  }

  else
  {
    v9.receiver = 0;
    v9.super_class = NRDNSProxyServer;
    [(NRDNSProxy *)&v9 start];
  }
}

- (id)description
{
  v3 = [NSString alloc];
  if (self)
  {
    identifier = self->super._identifier;
    state = self->super._state;
    if (state >= 5)
    {
      v7 = v3;
      v6 = [[NSString alloc] initWithFormat:@"Unknown(%u)", state];
      v3 = v7;
    }

    else
    {
      v6 = *(&off_1001FA6B8 + self->super._state);
    }

    localIfIndices = self->_localIfIndices;
  }

  else
  {
    identifier = 0;
    localIfIndices = 0;
    v6 = @"Invalid";
  }

  v9 = [v3 initWithFormat:@"NRDNSProxyServer[%llu, %@, idx:%@]", identifier, v6, localIfIndices];

  return v9;
}

@end