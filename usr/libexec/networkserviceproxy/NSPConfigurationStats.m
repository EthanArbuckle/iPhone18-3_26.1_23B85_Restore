@interface NSPConfigurationStats
- (id)analyticsDict;
@end

@implementation NSPConfigurationStats

- (id)analyticsDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithUnsignedInteger:[(NSPConfigurationStats *)self configurationVersion]];
  [v3 setObject:v4 forKeyedSubscript:@"ConfigurationVersion"];

  v5 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self configurationEnabled]];
  [v3 setObject:v5 forKeyedSubscript:@"ConfigurationEnabled"];

  v6 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self tokenFetchEnabled]];
  [v3 setObject:v6 forKeyedSubscript:@"TokenFetchEnabled"];

  v7 = [(NSPConfigurationStats *)self tierType];
  [v3 setObject:v7 forKeyedSubscript:@"TierType"];

  v8 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self safariUnencryptedEnabled]];
  [v3 setObject:v8 forKeyedSubscript:@"SafariUnencryptedEnabled"];

  v9 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self safariDNSEnabled]];
  [v3 setObject:v9 forKeyedSubscript:@"SafariDNSEnabled"];

  v10 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self safariTrackersEnabled]];
  [v3 setObject:v10 forKeyedSubscript:@"SafariTrackersEnabled"];

  v11 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self safariAllEnabled]];
  [v3 setObject:v11 forKeyedSubscript:@"SafariAllEnabled"];

  v12 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self safariHTTPEnabled]];
  [v3 setObject:v12 forKeyedSubscript:@"SafariHTTPEnabled"];

  v13 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self safariPrivateUnencryptedEnabled]];
  [v3 setObject:v13 forKeyedSubscript:@"SafariPrivateUnencryptedEnabled"];

  v14 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self safariPrivateDNSEnabled]];
  [v3 setObject:v14 forKeyedSubscript:@"SafariPrivateDNSEnabled"];

  v15 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self safariPrivateAllEnabled]];
  [v3 setObject:v15 forKeyedSubscript:@"SafariPrivateAllEnabled"];

  v16 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self safariMetricsEnabled]];
  [v3 setObject:v16 forKeyedSubscript:@"SafariMetricsEnabled"];

  v17 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self mailTrackersEnabled]];
  [v3 setObject:v17 forKeyedSubscript:@"MailTrackersEnabled"];

  v18 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self unencryptedEnabled]];
  [v3 setObject:v18 forKeyedSubscript:@"UnencryptedEnabled"];

  v19 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self dnsEnabled]];
  [v3 setObject:v19 forKeyedSubscript:@"DNSEnabled"];

  v20 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self knownTrackersEnabled]];
  [v3 setObject:v20 forKeyedSubscript:@"KnownTrackersEnabled"];

  v21 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self appTrackersEnabled]];
  [v3 setObject:v21 forKeyedSubscript:@"AppTrackersEnabled"];

  v22 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self newsURLResolutionEnabled]];
  [v3 setObject:v22 forKeyedSubscript:@"NewsURLResolutionEnabled"];

  v23 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self exposureNotificationsEnabled]];
  [v3 setObject:v23 forKeyedSubscript:@"ExposureNotificationsEnabled"];

  v24 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self appleCertificatesEnabled]];
  [v3 setObject:v24 forKeyedSubscript:@"AppleCertificatesEnabled"];

  v25 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self networkToolsEnabled]];
  [v3 setObject:v25 forKeyedSubscript:@"NetworkToolsEnabled"];

  v26 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self metricsUploadEnabled]];
  [v3 setObject:v26 forKeyedSubscript:@"MetricsUploadEnabled"];

  v27 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self newsEmbeddedContentEnabled]];
  [v3 setObject:v27 forKeyedSubscript:@"NewsEmbeddedContentEnabled"];

  v28 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self appMetricsEnabled]];
  [v3 setObject:v28 forKeyedSubscript:@"AppMetricsEnabled"];

  v29 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self promotedContentEnabled]];
  [v3 setObject:v29 forKeyedSubscript:@"PromotedContentEnabled"];

  v30 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self brandedCallingEnabled]];
  [v3 setObject:v30 forKeyedSubscript:@"BrandedCallingEnabled"];

  v31 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self postbackFetchEnabled]];
  [v3 setObject:v31 forKeyedSubscript:@"PostbackFetchEnabled"];

  v32 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self passwordManagerIconFetchEnabled]];
  [v3 setObject:v32 forKeyedSubscript:@"PasswordManagerIconFetchEnabled"];

  v33 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self launchWarningDetailsEnabled]];
  [v3 setObject:v33 forKeyedSubscript:@"LaunchWarningDetailsEnabled"];

  v34 = [NSNumber numberWithBool:[(NSPConfigurationStats *)self podcastsLinkPresentationEnabled]];
  [v3 setObject:v34 forKeyedSubscript:@"PodcastsLinkPresentationEnabled"];

  return v3;
}

@end