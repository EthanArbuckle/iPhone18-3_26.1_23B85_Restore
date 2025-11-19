@interface NSPPrivacyProxyDNSAgent
+ (id)agentType;
- (NSPPrivacyProxyDNSAgent)initWithDelegate:(id)a3;
- (NSPPrivacyProxyDNSAgentDelegate)delegate;
- (id)copyAgentData;
@end

@implementation NSPPrivacyProxyDNSAgent

- (NSPPrivacyProxyDNSAgent)initWithDelegate:(id)a3
{
  v4 = a3;
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
    objc_storeWeak(&v6->_delegate, v4);
    [(NSPPrivacyProxyDNSAgent *)v6 setAgentDescription:@"iCloud Private Relay"];
    v7 = [objc_opt_class() dnsAgentUUID];
    [(NSPPrivacyProxyDNSAgent *)v6 setAgentUUID:v7];
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
  v3 = [(NSPPrivacyProxyDNSAgent *)self resolver];
  if (v3)
  {
    v4 = nw_resolver_config_create();
    v5 = [v3 obliviousDoHConfig];
    [(NSPPrivacyProxyDNSAgent *)self proxyAgentUUID];

    nw_resolver_config_set_class();
    nw_resolver_config_set_protocol();
    nw_resolver_config_set_allow_failover();
    v6 = [v3 dohURL];
    v7 = [NSURL URLWithString:v6];

    v8 = [[NSURLComponents alloc] initWithURL:v7 resolvingAgainstBaseURL:0];
    v9 = [v8 percentEncodedHost];
    v10 = [v8 percentEncodedPath];
    [v9 UTF8String];
    nw_resolver_config_set_provider_name();
    [v10 UTF8String];
    nw_resolver_config_set_provider_path();
    v11 = [(NSPPrivacyProxyDNSAgent *)self proxyAgentUUID];
    v12 = [v11 UUIDString];

    if (v12)
    {
      [v12 UTF8String];
      nw_resolver_config_set_proxy_agent();
    }

    if (v5 && [v5 length])
    {
      [v5 bytes];
      [v5 length];
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