@interface MDNSNEDNSProxyWatcher
- (void)configurationChanged:(id)changed;
- (void)dnsProxyStatusDidChange:(id)change;
@end

@implementation MDNSNEDNSProxyWatcher

- (void)dnsProxyStatusDidChange:(id)change
{
  changeCopy = change;
  v4 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = changeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DNS proxy status changed for manager -- address: %p", buf, 0xCu);
  }

  v5 = _mdns_ne_dns_proxy_state_watch_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__MDNSNEDNSProxyWatcher_dnsProxyStatusDidChange___block_invoke;
  block[3] = &unk_10014FEF0;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(v5, block);
}

- (void)configurationChanged:(id)changed
{
  v3 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Configuration changed", v4, 2u);
  }

  if (configurationChanged__s_once != -1)
  {
    dispatch_once(&configurationChanged__s_once, &__block_literal_global_2225);
  }

  dispatch_source_merge_data(configurationChanged__s_loader, 1uLL);
}

void __46__MDNSNEDNSProxyWatcher_configurationChanged___block_invoke(id a1)
{
  v1 = _mdns_ne_dns_proxy_state_watch_queue();
  v2 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, v1);
  v3 = configurationChanged__s_loader;
  configurationChanged__s_loader = v2;

  dispatch_source_set_event_handler(configurationChanged__s_loader, &__block_literal_global_2);
  v4 = configurationChanged__s_loader;

  dispatch_activate(v4);
}

@end