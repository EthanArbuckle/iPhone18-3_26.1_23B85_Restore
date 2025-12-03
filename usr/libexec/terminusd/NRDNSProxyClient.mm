@interface NRDNSProxyClient
- (id)description;
- (void)cancel;
- (void)start;
@end

@implementation NRDNSProxyClient

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = NRDNSProxyClient;
  [(NRDNSProxy *)&v4 cancel];
  if (self)
  {
    if (self->_discoveryProxyClient)
    {
      mrc_discovery_proxy_invalidate();
      discoveryProxyClient = self->_discoveryProxyClient;
      self->_discoveryProxyClient = 0;
    }
  }
}

- (id)description
{
  if (self)
  {
    if (self->super._isDiscoveryProxy)
    {
      v3 = "NRDiscoveryProxyClient";
    }

    else
    {
      v3 = "NRDNSProxyClient";
    }

    v4 = [NSString alloc];
    identifier = self->super._identifier;
    state = self->super._state;
    if (state <= 1)
    {
      if (state)
      {
        state = @"Preparing";
      }

      else
      {
        state = @"Invalid";
      }
    }

    else
    {
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
          v8 = v4;
          state = [[NSString alloc] initWithFormat:@"Unknown(%u)", state];
          v4 = v8;
          break;
      }
    }
  }

  else
  {
    v4 = [NSString alloc];
    identifier = 0;
    state = @"Invalid";
    v3 = "NRDNSProxyClient";
  }

  v9 = [v4 initWithFormat:@"%s[%llu, %@]", v3, identifier, state];

  return v9;
}

- (void)start
{
  if (!self)
  {
    v51.receiver = 0;
    v51.super_class = NRDNSProxyClient;
    [(NRDNSProxy *)&v51 start];
    return;
  }

  if (!self->super._started)
  {
    v51.receiver = self;
    v51.super_class = NRDNSProxyClient;
    [(NRDNSProxy *)&v51 start];
    dnsProtocol = self->super._dnsProtocol;
    if (dnsProtocol != 1)
    {
      if (!dnsProtocol)
      {
        selfCopy2 = self;
        v5 = 2;
LABEL_16:
        sub_100023B5C(selfCopy2, v5);
        return;
      }

      goto LABEL_13;
    }

    if (!self->super._isDiscoveryProxy)
    {
LABEL_13:
      nrUUID = self->super._nrUUID;
      v18 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v20 = self->super._nrUUID;
        v21 = _NRCopyLogObjectForNRUUID();
        v22 = self->super._dnsProtocol;

        _NRLogWithArgs();
      }

LABEL_15:
      selfCopy2 = self;
      v5 = 4;
      goto LABEL_16;
    }

    if (!self->super._serverCertificateData)
    {
      if (qword_100228F10 != -1)
      {
        dispatch_once(&qword_100228F10, &stru_1001FA698);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F10 != -1)
        {
          dispatch_once(&qword_100228F10, &stru_1001FA698);
        }

        _NRLogWithArgs();
      }

      goto LABEL_15;
    }

    v6 = mrc_discovery_proxy_parameters_create();
    if (v6)
    {
      v7 = self->super._nrUUID;
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      if (v9)
      {
        v10 = self->super._nrUUID;
        v11 = _NRCopyLogObjectForNRUUID();
        v48 = 197;
        serverEndpoint = self->super._serverEndpoint;
        v46 = "";
        v47 = "[NRDNSProxyClient startDiscoveryProxyClient]";
        _NRLogWithArgs();
      }

      v12 = [(NWAddressEndpoint *)self->super._serverEndpoint addressFamily:v46];
      v13 = self->super._serverEndpoint;
      if (v12 == 2)
      {
        address = [(NWAddressEndpoint *)v13 address];
        v15 = bswap32(address[1]);
        v16 = bswap32(*(address + 1));
        mrc_discovery_proxy_parameters_add_server_ipv4_address();
      }

      else if ([(NWAddressEndpoint *)v13 addressFamily]== 30)
      {
        address2 = [(NWAddressEndpoint *)self->super._serverEndpoint address];
        v24 = bswap32(address2[1]);
        v25 = *(address2 + 6);
        mrc_discovery_proxy_parameters_add_server_ipv6_address();
      }

      mrc_discovery_proxy_parameters_add_match_domain();
      v26 = self->super._serverCertificateData;
      [(NSData *)v26 bytes];
      [(NSData *)v26 length];
      mrc_discovery_proxy_parameters_add_server_certificate();
      discoveryProxyInterfaceIndex = self->_discoveryProxyInterfaceIndex;
      mrc_discovery_proxy_parameters_set_interface();
      v28 = self->super._nrUUID;
      v29 = _NRCopyLogObjectForNRUUID();
      v30 = _NRLogIsLevelEnabled();

      if (v30)
      {
        v31 = self->super._nrUUID;
        v32 = _NRCopyLogObjectForNRUUID();
        v50 = self->_discoveryProxyInterfaceIndex;
        _NRLogWithArgs();
      }

      v33 = mrc_discovery_proxy_create();
      if (v33)
      {
        queue = self->super._queue;
        mrc_discovery_proxy_set_queue();
        objc_initWeak(&location, self);
        v52 = _NSConcreteStackBlock;
        v53 = 3221225472;
        v54 = sub_100023C44;
        v55 = &unk_1001FA600;
        objc_copyWeak(&v57, &location);
        v56 = v33;
        mrc_discovery_proxy_set_event_handler();
        mrc_discovery_proxy_activate();
        v35 = self->super._nrUUID;
        v36 = _NRCopyLogObjectForNRUUID();
        v37 = _NRLogIsLevelEnabled();

        if (v37)
        {
          v38 = self->super._nrUUID;
          v39 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs();
        }

        objc_storeStrong(&self->_discoveryProxyClient, v33);
        sub_100023B5C(self, 1);

        objc_destroyWeak(&v57);
        objc_destroyWeak(&location);
      }

      else
      {
        v43 = sub_1000233CC();
        v44 = _NRLogIsLevelEnabled();

        if (v44)
        {
          v45 = sub_1000233CC();
          _NRLogWithArgs();
        }

        sub_100023B5C(self, 4);
      }
    }

    else
    {
      v40 = sub_1000233CC();
      v41 = _NRLogIsLevelEnabled();

      if (v41)
      {
        v42 = sub_1000233CC();
        _NRLogWithArgs();
      }

      sub_100023B5C(self, 4);
    }
  }
}

@end