@interface NSPProxyAgentNetworkStatistics
- (NSPProxyAgentNetworkStatistics)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPProxyAgentNetworkStatistics

- (id)description
{
  if (self)
  {
    v3 = [[NSMutableString alloc] initWithCapacity:0];
    sub_1000417D0(v3, self->_networkCharacteristics, @"Network Characteristics", 0, 14);
    sub_10004208C(v3, self->_proxyConnectionSuccess, @"Proxy success", 0, 14);
    sub_10004208C(v3, self->_ingressProxyConnectionTimeout, @"Ingress proxy connection timeout", 0, 14);
    sub_10004208C(v3, self->_ingressProxyConnectionRefused, @"Ingress proxy connection refused", 0, 14);
    sub_10004208C(v3, self->_ingressProxyConnectionHostDown, @"Ingress proxy connection host down", 0, 14);
    sub_10004208C(v3, self->_ingressProxyConnectionHostUnreachable, @"Ingress proxy connection host unreachable", 0, 14);
    sub_10004208C(v3, self->_ingressProxyConnectionError, @"Ingress proxy connection error", 0, 14);
    sub_10004208C(v3, self->_ingressProxyConnectionDNSBlocked, @"Ingress proxy server DNS error", 0, 14);
    sub_10004208C(v3, self->_ingressProxyConnectionDNSTimeout, @"Ingress proxy server DNS timeout", 0, 14);
    sub_10004208C(v3, self->_ingressProxyConnectionCertError, @"Ingress proxy cert error", 0, 14);
    sub_10004208C(v3, self->_egressProxyConnectionError, @"Egress proxy connection error", 0, 14);
    sub_10004208C(v3, self->_originProxyConnectionError, @"Origin proxy connection error", 0, 14);
    sub_10004208C(v3, self->_egressProxyUnavailableError, @"Egress proxy unavailable error", 0, 14);
    sub_10004208C(v3, self->_incompleteHandshakeStall, @"Incomplete handshake stall", 0, 14);
    sub_10004208C(v3, self->_postHandshakeStall, @"Post handshake stall", 0, 14);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSPProxyAgentNetworkStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NSPProxyAgentNetworkStatistics;
  v5 = [(NSPProxyAgentNetworkStatistics *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"ProxyAgentNetworkStatisticsNetworkCharacteristics"];
    networkCharacteristics = v5->_networkCharacteristics;
    v5->_networkCharacteristics = v10;

    v5->_proxyConnectionSuccess = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsSuccess"];
    v5->_ingressProxyConnectionTimeout = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsIngressConnectionTimeout"];
    v5->_ingressProxyConnectionRefused = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsIngressConnectionRefused"];
    v5->_ingressProxyConnectionHostDown = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsIngressHostDown"];
    v5->_ingressProxyConnectionHostUnreachable = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsIngressHostUnreachable"];
    v5->_ingressProxyConnectionError = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsIngressConnectionError"];
    v5->_ingressProxyConnectionDNSBlocked = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsIngressDNSBlocked"];
    v5->_ingressProxyConnectionDNSTimeout = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsIngressDNSTimeoutError"];
    v5->_ingressProxyConnectionCertError = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsIngressConnectionCertError"];
    v5->_egressProxyConnectionError = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsEgressConnectionError"];
    v5->_originProxyConnectionError = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsOriginConnectionError"];
    v5->_egressProxyUnavailableError = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsEgressProxyUnavailableError"];
    v5->_incompleteHandshakeStall = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsIncompleteHandshakeStall"];
    v5->_postHandshakeStall = [v4 decodeIntegerForKey:@"ProxyAgentNetworkStatisticsPostHandshakeStall"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    networkCharacteristics = self->_networkCharacteristics;
    v5 = a3;
    [v5 encodeObject:networkCharacteristics forKey:@"ProxyAgentNetworkStatisticsNetworkCharacteristics"];
    [v5 encodeInteger:self->_proxyConnectionSuccess forKey:@"ProxyAgentNetworkStatisticsSuccess"];
    [v5 encodeInteger:self->_ingressProxyConnectionTimeout forKey:@"ProxyAgentNetworkStatisticsIngressConnectionTimeout"];
    [v5 encodeInteger:self->_ingressProxyConnectionRefused forKey:@"ProxyAgentNetworkStatisticsIngressConnectionRefused"];
    [v5 encodeInteger:self->_ingressProxyConnectionHostDown forKey:@"ProxyAgentNetworkStatisticsIngressHostDown"];
    [v5 encodeInteger:self->_ingressProxyConnectionHostUnreachable forKey:@"ProxyAgentNetworkStatisticsIngressHostUnreachable"];
    [v5 encodeInteger:self->_ingressProxyConnectionError forKey:@"ProxyAgentNetworkStatisticsIngressConnectionError"];
    [v5 encodeInteger:self->_ingressProxyConnectionDNSBlocked forKey:@"ProxyAgentNetworkStatisticsIngressDNSBlocked"];
    [v5 encodeInteger:self->_ingressProxyConnectionDNSTimeout forKey:@"ProxyAgentNetworkStatisticsIngressDNSTimeoutError"];
    [v5 encodeInteger:self->_ingressProxyConnectionCertError forKey:@"ProxyAgentNetworkStatisticsIngressConnectionCertError"];
    [v5 encodeInteger:self->_egressProxyConnectionError forKey:@"ProxyAgentNetworkStatisticsEgressConnectionError"];
    [v5 encodeInteger:self->_originProxyConnectionError forKey:@"ProxyAgentNetworkStatisticsOriginConnectionError"];
    [v5 encodeInteger:self->_egressProxyUnavailableError forKey:@"ProxyAgentNetworkStatisticsEgressProxyUnavailableError"];
    [v5 encodeInteger:self->_incompleteHandshakeStall forKey:@"ProxyAgentNetworkStatisticsIncompleteHandshakeStall"];
    postHandshakeStall = self->_postHandshakeStall;
  }

  else
  {
    v7 = a3;
    [v7 encodeObject:0 forKey:@"ProxyAgentNetworkStatisticsNetworkCharacteristics"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsSuccess"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsIngressConnectionTimeout"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsIngressConnectionRefused"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsIngressHostDown"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsIngressHostUnreachable"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsIngressConnectionError"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsIngressDNSBlocked"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsIngressDNSTimeoutError"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsIngressConnectionCertError"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsEgressConnectionError"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsOriginConnectionError"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsEgressProxyUnavailableError"];
    [v7 encodeInteger:0 forKey:@"ProxyAgentNetworkStatisticsIncompleteHandshakeStall"];
    postHandshakeStall = 0;
  }

  [a3 encodeInteger:postHandshakeStall forKey:@"ProxyAgentNetworkStatisticsPostHandshakeStall"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPProxyAgentNetworkStatistics allocWithZone:?]];
  v5 = v4;
  if (self)
  {
    sub_10000A4F0(v4, self->_networkCharacteristics);
    proxyConnectionSuccess = self->_proxyConnectionSuccess;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_10000A4F0(v4, 0);
  proxyConnectionSuccess = 0;
  if (v5)
  {
LABEL_3:
    v5->_proxyConnectionSuccess = proxyConnectionSuccess;
  }

LABEL_4:
  if (self)
  {
    ingressProxyConnectionTimeout = self->_ingressProxyConnectionTimeout;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  ingressProxyConnectionTimeout = 0;
  if (v5)
  {
LABEL_6:
    v5->_ingressProxyConnectionTimeout = ingressProxyConnectionTimeout;
  }

LABEL_7:
  if (self)
  {
    ingressProxyConnectionRefused = self->_ingressProxyConnectionRefused;
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  ingressProxyConnectionRefused = 0;
  if (v5)
  {
LABEL_9:
    v5->_ingressProxyConnectionRefused = ingressProxyConnectionRefused;
  }

LABEL_10:
  if (self)
  {
    ingressProxyConnectionHostDown = self->_ingressProxyConnectionHostDown;
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  ingressProxyConnectionHostDown = 0;
  if (v5)
  {
LABEL_12:
    v5->_ingressProxyConnectionHostDown = ingressProxyConnectionHostDown;
  }

LABEL_13:
  if (self)
  {
    ingressProxyConnectionHostUnreachable = self->_ingressProxyConnectionHostUnreachable;
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  ingressProxyConnectionHostUnreachable = 0;
  if (v5)
  {
LABEL_15:
    v5->_ingressProxyConnectionHostUnreachable = ingressProxyConnectionHostUnreachable;
  }

LABEL_16:
  if (self)
  {
    ingressProxyConnectionError = self->_ingressProxyConnectionError;
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  ingressProxyConnectionError = 0;
  if (v5)
  {
LABEL_18:
    v5->_ingressProxyConnectionError = ingressProxyConnectionError;
  }

LABEL_19:
  if (self)
  {
    ingressProxyConnectionDNSBlocked = self->_ingressProxyConnectionDNSBlocked;
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  ingressProxyConnectionDNSBlocked = 0;
  if (v5)
  {
LABEL_21:
    v5->_ingressProxyConnectionDNSBlocked = ingressProxyConnectionDNSBlocked;
  }

LABEL_22:
  if (self)
  {
    ingressProxyConnectionDNSTimeout = self->_ingressProxyConnectionDNSTimeout;
    if (!v5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  ingressProxyConnectionDNSTimeout = 0;
  if (v5)
  {
LABEL_24:
    v5->_ingressProxyConnectionDNSTimeout = ingressProxyConnectionDNSTimeout;
  }

LABEL_25:
  if (self)
  {
    ingressProxyConnectionCertError = self->_ingressProxyConnectionCertError;
    if (!v5)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  ingressProxyConnectionCertError = 0;
  if (v5)
  {
LABEL_27:
    v5->_ingressProxyConnectionCertError = ingressProxyConnectionCertError;
  }

LABEL_28:
  if (self)
  {
    egressProxyConnectionError = self->_egressProxyConnectionError;
    if (!v5)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  egressProxyConnectionError = 0;
  if (v5)
  {
LABEL_30:
    v5->_egressProxyConnectionError = egressProxyConnectionError;
  }

LABEL_31:
  if (self)
  {
    originProxyConnectionError = self->_originProxyConnectionError;
    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  originProxyConnectionError = 0;
  if (v5)
  {
LABEL_33:
    v5->_originProxyConnectionError = originProxyConnectionError;
  }

LABEL_34:
  if (self)
  {
    egressProxyUnavailableError = self->_egressProxyUnavailableError;
    if (!v5)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  egressProxyUnavailableError = 0;
  if (v5)
  {
LABEL_36:
    v5->_egressProxyUnavailableError = egressProxyUnavailableError;
  }

LABEL_37:
  if (self)
  {
    incompleteHandshakeStall = self->_incompleteHandshakeStall;
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  incompleteHandshakeStall = 0;
  if (v5)
  {
LABEL_39:
    v5->_incompleteHandshakeStall = incompleteHandshakeStall;
  }

LABEL_40:
  if (!self)
  {
    postHandshakeStall = 0;
    if (!v5)
    {
      return v5;
    }

    goto LABEL_42;
  }

  postHandshakeStall = self->_postHandshakeStall;
  if (v5)
  {
LABEL_42:
    v5->_postHandshakeStall = postHandshakeStall;
  }

  return v5;
}

@end