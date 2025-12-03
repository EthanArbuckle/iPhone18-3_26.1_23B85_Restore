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
    state = @"Invalid";
    goto LABEL_14;
  }

  identifier = self->super._identifier;
  state = self->super._state;
  if (state <= 1)
  {
    if (state)
    {
      state = @"Preparing";
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  switch(state)
  {
    case 2:
      state = @"Ready";
      break;
    case 3:
      state = @"Restarting";
      break;
    case 4:
      state = @"Failed";
      break;
    default:
      v7 = v3;
      state = [[NSString alloc] initWithFormat:@"Unknown(%u)", state];
      v3 = v7;
      break;
  }

LABEL_14:
  v8 = [v3 initWithFormat:@"NRDiscoveryProxyServer[%llu, %@]", identifier, state];

  return v8;
}

@end