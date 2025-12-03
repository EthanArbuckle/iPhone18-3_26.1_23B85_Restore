@interface NSPProbeStats
- (id)analyticsDict;
- (id)probeReasonToString;
@end

@implementation NSPProbeStats

- (id)probeReasonToString
{
  probeReason = [(NSPProbeStats *)self probeReason];
  v3 = @"Unknown";
  if (probeReason == 1)
  {
    v3 = @"Proxy";
  }

  if (probeReason == 2)
  {
    return @"DNS";
  }

  else
  {
    return v3;
  }
}

- (id)analyticsDict
{
  tierType = [(NSPProbeStats *)self tierType];

  if (tierType)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    tierType2 = [(NSPProbeStats *)self tierType];
    [v4 setObject:tierType2 forKeyedSubscript:@"TierType"];

    probeReasonToString = [(NSPProbeStats *)self probeReasonToString];
    [v4 setObject:probeReasonToString forKeyedSubscript:@"ProbeReason"];

    probeInterface = [(NSPProbeStats *)self probeInterface];
    [v4 setObject:probeInterface forKeyedSubscript:@"ProbeInterface"];

    v8 = [NSNumber numberWithUnsignedInteger:[(NSPProbeStats *)self probeDurationSec]];
    [v4 setObject:v8 forKeyedSubscript:@"ProbeDuration"];

    v9 = [NSNumber numberWithUnsignedInteger:[(NSPProbeStats *)self proxyProbeCount]];
    [v4 setObject:v9 forKeyedSubscript:@"ProxyProbeCount"];

    v10 = [NSNumber numberWithUnsignedInteger:[(NSPProbeStats *)self proxyProbeSuccessCount]];
    [v4 setObject:v10 forKeyedSubscript:@"ProxyProbeSuccessCount"];

    v11 = [NSNumber numberWithUnsignedInteger:[(NSPProbeStats *)self proxyProbeFailedCount]];
    [v4 setObject:v11 forKeyedSubscript:@"ProxyProbeFailedCount"];

    v12 = [NSNumber numberWithUnsignedInteger:[(NSPProbeStats *)self proxyProbeRedirectedCount]];
    [v4 setObject:v12 forKeyedSubscript:@"ProxyProbeRedirectedCount"];

    v13 = [NSNumber numberWithUnsignedInteger:[(NSPProbeStats *)self proxyProbeServerErrorCount]];
    [v4 setObject:v13 forKeyedSubscript:@"ProxyProbeServerErrorCount"];

    v14 = [NSNumber numberWithUnsignedInteger:[(NSPProbeStats *)self directProbeCount]];
    [v4 setObject:v14 forKeyedSubscript:@"DirectProbeCount"];

    v15 = [NSNumber numberWithUnsignedInteger:[(NSPProbeStats *)self directProbeSuccessCount]];
    [v4 setObject:v15 forKeyedSubscript:@"DirectProbeSuccessCount"];

    v16 = [NSNumber numberWithUnsignedInteger:[(NSPProbeStats *)self directProbeFailedCount]];
    [v4 setObject:v16 forKeyedSubscript:@"DirectProbeFailedCount"];

    v17 = [NSNumber numberWithUnsignedInteger:[(NSPProbeStats *)self directProbeRedirectedCount]];
    [v4 setObject:v17 forKeyedSubscript:@"DirectProbeRedirectedCount"];

    v18 = [NSNumber numberWithUnsignedInteger:[(NSPProbeStats *)self directProbeServerErrorCount]];
    [v4 setObject:v18 forKeyedSubscript:@"DirectProbeServerErrorCount"];
  }

  else
  {
    v20 = nplog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v21 = 136315138;
      v22 = "[NSPProbeStats analyticsDict]";
      _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "%s called with null self.tierType", &v21, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end