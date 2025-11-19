@interface CloudHistoryConfiguration
+ (id)sharedConfiguration;
- (CloudHistoryConfiguration)init;
- (id)_cloudConfigurationAssetsSortedByVersionNumber;
- (id)platformBuiltInConfiguration;
- (id)remoteConfiguration;
- (void)_reloadConfigurationDataIfNecessary;
@end

@implementation CloudHistoryConfiguration

+ (id)sharedConfiguration
{
  if (qword_10002E8B8 != -1)
  {
    sub_10001618C();
  }

  v3 = qword_10002E8B0;

  return v3;
}

- (CloudHistoryConfiguration)init
{
  v6.receiver = self;
  v6.super_class = CloudHistoryConfiguration;
  v2 = [(CloudHistoryConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CloudHistoryConfiguration *)v2 _reloadConfigurationDataIfNecessary];
    v4 = v3;
  }

  return v3;
}

- (id)platformBuiltInConfiguration
{
  v4[0] = WBSCloudHistoryConfigurationSingleDeviceSaveChangesThrottlingPolicyStringKey;
  v4[1] = WBSCloudHistoryConfigurationMultipleDeviceSaveChangesThrottlingPolicyStringKey;
  v5[0] = @"1:1440";
  v5[1] = @"15:1 | 1:1425";
  v4[2] = WBSCloudHistoryConfigurationSingleDeviceFetchChangesThrottlingPolicyStringKey;
  v4[3] = WBSCloudHistoryConfigurationMultipleDeviceFetchChangesThrottlingPolicyStringKey;
  v5[2] = @"1:1440";
  v5[3] = @"31:5 | 1:1285";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

- (id)remoteConfiguration
{
  remoteConfigurationDictionary = self->_remoteConfigurationDictionary;
  if (remoteConfigurationDictionary)
  {
    v3 = remoteConfigurationDictionary;
  }

  else if (!self->_fetchedAssetData)
  {
    self->_fetchedAssetData = 1;
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001CB8;
    block[3] = &unk_100028C68;
    block[4] = self;
    dispatch_async(v5, block);
  }

  return remoteConfigurationDictionary;
}

- (id)_cloudConfigurationAssetsSortedByVersionNumber
{
  assetsSortedByVersionNumber = self->_assetsSortedByVersionNumber;
  if (assetsSortedByVersionNumber)
  {
    v3 = assetsSortedByVersionNumber;
  }

  else
  {
    v5 = [[ASAssetQuery alloc] initWithAssetType:@"com.apple.MobileAsset.SafariCloudHistoryConfiguration"];
    v11 = 0;
    v6 = [v5 runQueryAndReturnError:&v11];
    v7 = v11;
    if ([v6 count])
    {
      v8 = [v6 sortedArrayUsingComparator:&stru_100028CA8];
      v9 = self->_assetsSortedByVersionNumber;
      self->_assetsSortedByVersionNumber = v8;

      v3 = self->_assetsSortedByVersionNumber;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_reloadConfigurationDataIfNecessary
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 doubleForKey:@"LastCloudHistoryConfigurationUpdateTime"];
  v5 = v4;

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v5 >= 604800.0)
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 setDouble:@"LastCloudHistoryConfigurationUpdateTime" forKey:Current];

    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002294;
    block[3] = &unk_100028C68;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

@end