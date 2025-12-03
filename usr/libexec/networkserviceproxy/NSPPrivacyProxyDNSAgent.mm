@interface NSPPrivacyProxyDNSAgent
+ (id)agentType;
- (NSPPrivacyProxyDNSAgent)initWithDelegate:(id)delegate;
- (NSPPrivacyProxyDNSAgentDelegate)delegate;
- (id)copyAgentData;
@end

@implementation NSPPrivacyProxyDNSAgent

- (NSPPrivacyProxyDNSAgent)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = NSPPrivacyProxyDNSAgent;
  v5 = [(NSPPrivacyProxyDNSAgent *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(NSPPrivacyProxyDNSAgent *)v5 setActive:1];
    [(NSPPrivacyProxyDNSAgent *)v6 setKernelActivated:0];
    [(NSPPrivacyProxyDNSAgent *)v6 setUserActivated:0];
    [(NSPPrivacyProxyDNSAgent *)v6 setVoluntary:1];
    objc_storeWeak(&v6->_delegate, delegateCopy);
    [(NSPPrivacyProxyDNSAgent *)v6 setAgentDescription:@"iCloud Private Relay"];
    dnsAgentUUID = [objc_opt_class() dnsAgentUUID];
    [(NSPPrivacyProxyDNSAgent *)v6 setAgentUUID:dnsAgentUUID];
  }

  return v6;
}

+ (id)agentType
{
  if (qword_100129798 != -1)
  {
    dispatch_once(&qword_100129798, &stru_100109DF8);
  }

  v3 = qword_100129790;

  return v3;
}

- (id)copyAgentData
{
  resolver = [(NSPPrivacyProxyDNSAgent *)self resolver];
  if (resolver)
  {
    v4 = nw_resolver_config_create();
    obliviousDoHConfig = [resolver obliviousDoHConfig];
    [(NSPPrivacyProxyDNSAgent *)self proxyAgentUUID];

    nw_resolver_config_set_class();
    nw_resolver_config_set_protocol();
    nw_resolver_config_set_allow_failover();
    dohURL = [resolver dohURL];
    v7 = [NSURL URLWithString:dohURL];

    v8 = [[NSURLComponents alloc] initWithURL:v7 resolvingAgainstBaseURL:0];
    percentEncodedHost = [v8 percentEncodedHost];
    percentEncodedPath = [v8 percentEncodedPath];
    [percentEncodedHost UTF8String];
    nw_resolver_config_set_provider_name();
    [percentEncodedPath UTF8String];
    nw_resolver_config_set_provider_path();
    proxyAgentUUID = [(NSPPrivacyProxyDNSAgent *)self proxyAgentUUID];
    uUIDString = [proxyAgentUUID UUIDString];

    if (uUIDString)
    {
      [uUIDString UTF8String];
      nw_resolver_config_set_proxy_agent();
    }

    if (obliviousDoHConfig && [obliviousDoHConfig length])
    {
      [obliviousDoHConfig bytes];
      [obliviousDoHConfig length];
      nw_resolver_config_set_odoh_config();
    }

    v13 = nw_resolver_config_copy_plist_data();
  }

  else
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No resolver info set", v16, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (NSPPrivacyProxyDNSAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end