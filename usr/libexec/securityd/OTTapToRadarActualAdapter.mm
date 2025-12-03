@interface OTTapToRadarActualAdapter
- (OTTapToRadarActualAdapter)init;
- (void)postHomePodLostTrustTTR:(id)r;
@end

@implementation OTTapToRadarActualAdapter

- (void)postHomePodLostTrustTTR:(id)r
{
  rCopy = r;
  if (!objc_opt_class())
  {
    v5 = sub_100006274("octagon-ttr");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v14 = 0;
    v10 = "Trust lost, but TTR service not available";
    v11 = &v14;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    goto LABEL_11;
  }

  v4 = _os_feature_enabled_impl();
  v5 = sub_100006274("octagon-ttr");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if ((v4 & 1) == 0)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    *v13 = 0;
    v10 = "Trust lost, not posting TTR due to feature flag";
    v11 = v13;
    goto LABEL_10;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trust lost, posting TTR", buf, 2u);
  }

  v5 = objc_alloc_init(RadarDraft);
  v7 = [[RadarComponent alloc] initWithName:@"Security" version:@"iCloud Keychain" identifier:606179];
  [v5 setComponent:v7];

  [v5 setIsUserInitiated:0];
  [v5 setReproducibility:6];
  [v5 setRemoteDeviceClasses:63];
  [v5 setRemoteDeviceSelections:1];
  [v5 setTitle:@"Lost CDP trust"];
  rCopy = [NSString stringWithFormat:@"HomePod unexpectedly lost CDP trust (please do not file this radar if you performed Reset Protected Data on another device, or otherwise intended to cause CDP trust loss on this HomePod). To disable this prompt for testing, turn off the Security/TTRTrustLossOnHomePod feature flag on the HomePod.\n\n%@", rCopy];
  [v5 setProblemDescription:rCopy];

  [v5 setClassification:7];
  v9 = +[TapToRadarService shared];
  [v9 createDraft:v5 forProcessNamed:@"CDP" withDisplayReason:@"HomePod lost CDP/Manatee access" completionHandler:&stru_1003365D0];

LABEL_11:
}

- (OTTapToRadarActualAdapter)init
{
  v3.receiver = self;
  v3.super_class = OTTapToRadarActualAdapter;
  return [(OTTapToRadarActualAdapter *)&v3 init];
}

@end