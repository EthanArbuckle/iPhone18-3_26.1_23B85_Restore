@interface APItunesMetaData
- (APItunesMetaData)initWithBundleID:(id)d;
- (BOOL)installedAsTestApp;
- (BOOL)installedByAppStore;
- (BOOL)loadMetaDataWithError:(id *)error;
- (NSString)distributorID;
@end

@implementation APItunesMetaData

- (APItunesMetaData)initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = APItunesMetaData;
  v6 = [(APItunesMetaData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
  }

  return v7;
}

- (NSString)distributorID
{
  v3 = [LSApplicationRecord alloc];
  bundleID = [(APItunesMetaData *)self bundleID];
  v12 = 0;
  v5 = [v3 initWithBundleIdentifier:bundleID allowPlaceholder:0 error:&v12];
  v6 = v12;

  if (v6)
  {
    iTunesMetadata = APLogForCategory();
    if (os_log_type_enabled(iTunesMetadata, OS_LOG_TYPE_ERROR))
    {
      bundleID2 = [(APItunesMetaData *)self bundleID];
      *buf = 138543618;
      v14 = bundleID2;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, iTunesMetadata, OS_LOG_TYPE_ERROR, "Unable to look up Application Record for %{public}@ due to error: %{public}@", buf, 0x16u);
    }

    distributorID = 0;
  }

  else
  {
    iTunesMetadata = [v5 iTunesMetadata];
    distributorInfo = [iTunesMetadata distributorInfo];
    distributorID = [distributorInfo distributorID];
  }

  return distributorID;
}

- (BOOL)installedByAppStore
{
  distributorID = [(APItunesMetaData *)self distributorID];
  v3 = [@"com.apple.AppStore" isEqualToString:distributorID];

  return v3;
}

- (BOOL)installedAsTestApp
{
  if ([(APItunesMetaData *)self installedByAppStore])
  {
    return 0;
  }

  distributorID = [(APItunesMetaData *)self distributorID];

  if (!distributorID)
  {
    return 1;
  }

  distributorID2 = [(APItunesMetaData *)self distributorID];
  v6 = [@"com.apple.TestFlight" isEqualToString:distributorID2];

  return v6;
}

- (BOOL)loadMetaDataWithError:(id *)error
{
  if ([(APItunesMetaData *)self installedAsTestApp])
  {
    v5 = APLogForCategory();
    v6 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      bundleID = [(APItunesMetaData *)self bundleID];
      distributorID = [(APItunesMetaData *)self distributorID];
      *buf = 138543619;
      v55 = bundleID;
      v56 = 2113;
      v57 = distributorID;
      v9 = "%{public}@ App was installed as a test app: %{private}@";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v9, buf, 0x16u);

LABEL_34:
    }
  }

  else
  {
    installedByAppStore = [(APItunesMetaData *)self installedByAppStore];
    v5 = APLogForCategory();
    v11 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (installedByAppStore)
    {
      if (v11)
      {
        bundleID2 = [(APItunesMetaData *)self bundleID];
        *buf = 138543362;
        v55 = bundleID2;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@ App is from App Store", buf, 0xCu);
      }

      v13 = [LSApplicationRecord alloc];
      bundleID3 = [(APItunesMetaData *)self bundleID];
      v51 = 0;
      bundleID = [v13 initWithBundleIdentifier:bundleID3 allowPlaceholder:0 error:&v51];
      v5 = v51;

      if (v5)
      {
        v15 = APLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          bundleID4 = [(APItunesMetaData *)self bundleID];
          localizedDescription = [v5 localizedDescription];
          *buf = 138543618;
          v55 = bundleID4;
          v56 = 2114;
          v57 = localizedDescription;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not find bundle URL from bundle ID %{public}@, error %{public}@", buf, 0x16u);
        }

        if (error)
        {
          v52 = NSLocalizedDescriptionKey;
          v53 = @"Could not find bundle URL";
          v18 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          *error = [NSError errorWithDomain:@"com.apple.ap.itunesMetaData" code:3 userInfo:v18];
        }
      }

      bundleContainerURL = [bundleID bundleContainerURL];
      bundleURL = self->_bundleURL;
      self->_bundleURL = bundleContainerURL;

      v21 = self->_bundleURL;
      if (+[APSystemInternal isAppleInternalInstall])
      {
        v22 = [[APSettingsStorageUserDefaults alloc] initWithDefaultValues:0];
        v23 = [v22 valueForKey:@"APAttribution.itunesMetadataFileUrl"];
        if (v23)
        {
          v24 = [NSURL fileURLWithPath:v23];

          v21 = v24;
        }
      }

      v25 = APLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        absoluteString = [(NSURL *)v21 absoluteString];
        *buf = 138477827;
        v55 = absoluteString;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Loading meta data from %{private}@", buf, 0xCu);
      }

      if (v21)
      {
        v50 = v5;
        bundleID8 = [MIStoreMetadata metadataForBundleContainerURL:v21 error:&v50];
        v28 = v50;

        if (bundleID8)
        {
          iAdAttribution = [bundleID8 iAdAttribution];
          self->_isAttributed = [iAdAttribution BOOLValue];

          itemID = [bundleID8 itemID];
          adamID = self->_adamID;
          self->_adamID = itemID;

          purchaseDate = [bundleID8 purchaseDate];
          purchaseDate = self->_purchaseDate;
          self->_purchaseDate = purchaseDate;

          iAdConversionDate = [bundleID8 iAdConversionDate];
          conversionDate = self->_conversionDate;
          self->_conversionDate = iAdConversionDate;

          iAdImpressionDate = [bundleID8 iAdImpressionDate];
          impressionDate = self->_impressionDate;
          self->_impressionDate = iAdImpressionDate;

          v6 = 1;
          if (self->_conversionDate)
          {
            self->_isAttributed = 1;
          }
        }

        else
        {
          v42 = APLogForCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            bundleID5 = [(APItunesMetaData *)self bundleID];
            localizedDescription2 = [v28 localizedDescription];
            *buf = 138412546;
            v55 = bundleID5;
            v56 = 2112;
            v57 = localizedDescription2;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Error loading the itunesMetadata file %@, %@", buf, 0x16u);
          }

          bundleID6 = [(APItunesMetaData *)self bundleID];
          localizedDescription3 = [v28 localizedDescription];
          v47 = [NSString stringWithFormat:@"Error loading the itunesMetadata file %@, %@", bundleID6, localizedDescription3];
          userInfo = [v28 userInfo];
          CreateDiagnosticReport();

          v6 = 0;
        }

        v5 = v28;
      }

      else
      {
        v38 = APLogForCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          bundleID7 = [(APItunesMetaData *)self bundleID];
          *buf = 138412290;
          v55 = bundleID7;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Meta data URL is nil for %@", buf, 0xCu);
        }

        bundleID8 = [(APItunesMetaData *)self bundleID];
        v40 = [NSString stringWithFormat:@"Meta data URL is nil for %@", bundleID8];
        userInfo2 = [v5 userInfo];
        CreateDiagnosticReport();

        v6 = 0;
      }

      goto LABEL_34;
    }

    if (v11)
    {
      bundleID = [(APItunesMetaData *)self bundleID];
      distributorID = [(APItunesMetaData *)self distributorID];
      *buf = 138543619;
      v55 = bundleID;
      v56 = 2113;
      v57 = distributorID;
      v9 = "%{public}@ App is not from App Store: %{private}@";
      v6 = 1;
      goto LABEL_24;
    }

    v6 = 1;
  }

  return v6;
}

@end