@interface NRDiscoveryProxyServer
- (id)description;
- (void)cancel;
- (void)start;
@end

@implementation NRDiscoveryProxyServer

- (void)cancel
{
  v8.receiver = self;
  v8.super_class = NRDiscoveryProxyServer;
  [(NRDNSProxy *)&v8 cancel];
  if (self)
  {
    certificateUpdateNotifyToken = self->_certificateUpdateNotifyToken;
    if (certificateUpdateNotifyToken != -1)
    {
      notify_cancel(certificateUpdateNotifyToken);
      self->_certificateUpdateNotifyToken = -1;
    }

    if (self->_discoveryProxyRef)
    {
      advertising_proxy_ref_dealloc();
      v4 = qword_100228F00;
      v5 = [NSNumber numberWithUnsignedLong:self->_discoveryProxyRef];
      [v4 setObject:0 forKeyedSubscript:v5];

      self->_discoveryProxyRef = 0;
    }

    certificateFetcherSource = self->_certificateFetcherSource;
    if (certificateFetcherSource)
    {
      dispatch_source_cancel(certificateFetcherSource);
      v7 = self->_certificateFetcherSource;
      self->_certificateFetcherSource = 0;
    }
  }

  else
  {
    notify_cancel(0);
  }
}

- (void)start
{
  if (self)
  {
    if (!self->super._started)
    {
      v3.receiver = self;
      v3.super_class = NRDiscoveryProxyServer;
      [(NRDNSProxy *)&v3 start];
      if (self->super._state - 1 >= 2)
      {
        self->_certificateUpdateNotifyToken = -1;
        sub_1000249F0(self);
      }
    }
  }

  else
  {
    v3.receiver = 0;
    v3.super_class = NRDiscoveryProxyServer;
    [(NRDNSProxy *)&v3 start];
  }
}

- (id)description
{
  v3 = [NSString alloc];
  if (!self)
  {
    identifier = 0;
LABEL_13:
    v6 = @"Invalid";
    goto LABEL_14;
  }

  identifier = self->super._identifier;
  state = self->super._state;
  if (state <= 1)
  {
    if (state)
    {
      v6 = @"Preparing";
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  switch(state)
  {
    case 2:
      v6 = @"Ready";
      break;
    case 3:
      v6 = @"Restarting";
      break;
    case 4:
      v6 = @"Failed";
      break;
    default:
      v7 = v3;
      v6 = [[NSString alloc] initWithFormat:@"Unknown(%u)", state];
      v3 = v7;
      break;
  }

LABEL_14:
  v8 = [v3 initWithFormat:@"NRDiscoveryProxyServer[%llu, %@]", identifier, v6];

  return v8;
}

@end