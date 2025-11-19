@interface APItunesMetaData
- (APItunesMetaData)initWithBundleID:(id)a3;
- (BOOL)installedAsTestApp;
- (BOOL)installedByAppStore;
- (BOOL)loadMetaDataWithError:(id *)a3;
- (NSString)distributorID;
@end

@implementation APItunesMetaData

- (APItunesMetaData)initWithBundleID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APItunesMetaData;
  v6 = [(APItunesMetaData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
  }

  return v7;
}

- (NSString)distributorID
{
  v3 = [LSApplicationRecord alloc];
  v4 = [(APItunesMetaData *)self bundleID];
  v12 = 0;
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(APItunesMetaData *)self bundleID];
      *buf = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to look up Application Record for %{public}@ due to error: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v7 = [v5 iTunesMetadata];
    v10 = [v7 distributorInfo];
    v9 = [v10 distributorID];
  }

  return v9;
}

- (BOOL)installedByAppStore
{
  v2 = [(APItunesMetaData *)self distributorID];
  v3 = [@"com.apple.AppStore" isEqualToString:v2];

  return v3;
}

- (BOOL)installedAsTestApp
{
  if ([(APItunesMetaData *)self installedByAppStore])
  {
    return 0;
  }

  v4 = [(APItunesMetaData *)self distributorID];

  if (!v4)
  {
    return 1;
  }

  v5 = [(APItunesMetaData *)self distributorID];
  v6 = [@"com.apple.TestFlight" isEqualToString:v5];

  return v6;
}

- (BOOL)loadMetaDataWithError:(id *)a3
{
  if ([(APItunesMetaData *)self installedAsTestApp])
  {
    v5 = APLogForCategory();
    v6 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [(APItunesMetaData *)self bundleID];
      v8 = [(APItunesMetaData *)self distributorID];
      *buf = 138543619;
      v55 = v7;
      v56 = 2113;
      v57 = v8;
      v9 = "%{public}@ App was installed as a test app: %{private}@";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v9, buf, 0x16u);

LABEL_34:
    }
  }

  else
  {
    v10 = [(APItunesMetaData *)self installedByAppStore];
    v5 = APLogForCategory();
    v11 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v11)
      {
        v12 = [(APItunesMetaData *)self bundleID];
        *buf = 138543362;
        v55 = v12;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@ App is from App Store", buf, 0xCu);
      }

      v13 = [LSApplicationRecord alloc];
      v14 = [(APItunesMetaData *)self bundleID];
      v51 = 0;
      v7 = [v13 initWithBundleIdentifier:v14 allowPlaceholder:0 error:&v51];
      v5 = v51;

      if (v5)
      {
        v15 = APLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [(APItunesMetaData *)self bundleID];
          v17 = [v5 localizedDescription];
          *buf = 138543618;
          v55 = v16;
          v56 = 2114;
          v57 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not find bundle URL from bundle ID %{public}@, error %{public}@", buf, 0x16u);
        }

        if (a3)
        {
          v52 = NSLocalizedDescriptionKey;
          v53 = @"Could not find bundle URL";
          v18 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          *a3 = [NSError errorWithDomain:@"com.apple.ap.itunesMetaData" code:3 userInfo:v18];
        }
      }

      v19 = [v7 bundleContainerURL];
      bundleURL = self->_bundleURL;
      self->_bundleURL = v19;

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
        v26 = [(NSURL *)v21 absoluteString];
        *buf = 138477827;
        v55 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Loading meta data from %{private}@", buf, 0xCu);
      }

      if (v21)
      {
        v50 = v5;
        v27 = [MIStoreMetadata metadataForBundleContainerURL:v21 error:&v50];
        v28 = v50;

        if (v27)
        {
          v29 = [v27 iAdAttribution];
          self->_isAttributed = [v29 BOOLValue];

          v30 = [v27 itemID];
          adamID = self->_adamID;
          self->_adamID = v30;

          v32 = [v27 purchaseDate];
          purchaseDate = self->_purchaseDate;
          self->_purchaseDate = v32;

          v34 = [v27 iAdConversionDate];
          conversionDate = self->_conversionDate;
          self->_conversionDate = v34;

          v36 = [v27 iAdImpressionDate];
          impressionDate = self->_impressionDate;
          self->_impressionDate = v36;

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
            v43 = [(APItunesMetaData *)self bundleID];
            v44 = [v28 localizedDescription];
            *buf = 138412546;
            v55 = v43;
            v56 = 2112;
            v57 = v44;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Error loading the itunesMetadata file %@, %@", buf, 0x16u);
          }

          v45 = [(APItunesMetaData *)self bundleID];
          v46 = [v28 localizedDescription];
          v47 = [NSString stringWithFormat:@"Error loading the itunesMetadata file %@, %@", v45, v46];
          v48 = [v28 userInfo];
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
          v39 = [(APItunesMetaData *)self bundleID];
          *buf = 138412290;
          v55 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Meta data URL is nil for %@", buf, 0xCu);
        }

        v27 = [(APItunesMetaData *)self bundleID];
        v40 = [NSString stringWithFormat:@"Meta data URL is nil for %@", v27];
        v41 = [v5 userInfo];
        CreateDiagnosticReport();

        v6 = 0;
      }

      goto LABEL_34;
    }

    if (v11)
    {
      v7 = [(APItunesMetaData *)self bundleID];
      v8 = [(APItunesMetaData *)self distributorID];
      *buf = 138543619;
      v55 = v7;
      v56 = 2113;
      v57 = v8;
      v9 = "%{public}@ App is not from App Store: %{private}@";
      v6 = 1;
      goto LABEL_24;
    }

    v6 = 1;
  }

  return v6;
}

@end