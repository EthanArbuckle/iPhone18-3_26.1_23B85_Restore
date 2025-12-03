@interface __NSCFURLSessionTaskInfo
- (id)_AVAssetDownloadSessionOptions:(id)options config:(id)config asset:(id)asset;
- (id)_URLToUse;
- (id)_destinationURLToUse;
@end

@implementation __NSCFURLSessionTaskInfo

- (id)_AVAssetDownloadSessionOptions:(id)options config:(id)config asset:(id)asset
{
  optionsCopy = options;
  configCopy = config;
  options = [(__NSCFURLSessionTaskInfo *)self options];
  if (options)
  {
    options2 = [(__NSCFURLSessionTaskInfo *)self options];
    v11 = [options2 mutableCopy];
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
  }

  assetTitle = [(__NSCFURLSessionTaskInfo *)self assetTitle];
  [v11 setObject:assetTitle forKeyedSubscript:AVAssetDownloadSessionAssetNameKey];

  assetArtworkData = [(__NSCFURLSessionTaskInfo *)self assetArtworkData];
  [v11 setObject:assetArtworkData forKeyedSubscript:AVAssetDownloadSessionAssetImageDataKey];

  bundleID = optionsCopy;
  if (!optionsCopy)
  {
    bundleID = [(__NSCFURLSessionTaskInfo *)self bundleID];
  }

  [v11 setObject:bundleID forKeyedSubscript:AVAssetDownloadSessionClientBundleIdentifierKey];
  if (!optionsCopy)
  {
  }

  if (([configCopy allowsCellularAccess] & 1) == 0)
  {
    [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:AVAssetDownloadSessionAllowsCellularAccessKey];
  }

  if (([configCopy allowsExpensiveNetworkAccess] & 1) == 0)
  {
    [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:AVAssetDownloadSessionAllowsExpensiveNetworkAccessKey];
  }

  if (([configCopy allowsConstrainedNetworkAccess] & 1) == 0)
  {
    [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:AVAssetDownloadSessionAllowsConstrainedNetworkAccessKey];
  }

  v15 = [v11 copy];
  [(__NSCFURLSessionTaskInfo *)self setOptions:v15];

  v16 = [v11 objectForKeyedSubscript:@"AVAssetDownloadTaskMinimumRequiredPresentationSizeKey"];
  v17 = v16;
  if (v16 && CGSizeMakeWithDictionaryRepresentation(v16, &v25))
  {
    v18 = [NSValue valueWithBytes:&v25 objCType:"{CGSize=dd}"];
    [v11 setObject:v18 forKeyedSubscript:@"AVAssetDownloadTaskMinimumRequiredPresentationSizeKey"];
  }

  uniqueIdentifier = [(__NSCFURLSessionTaskInfo *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  [v11 setObject:uUIDString forKeyedSubscript:@"AVAssetDownloadSessionDebugIdentifierKey"];

  retryError = [(__NSCFURLSessionTaskInfo *)self retryError];

  if (retryError)
  {
    retryError2 = [(__NSCFURLSessionTaskInfo *)self retryError];
    [v11 setObject:retryError2 forKeyedSubscript:@"AVAssetDownloadSessionRetryErrorKey"];
  }

  downloadConfig = [(__NSCFURLSessionTaskInfo *)self downloadConfig];
  [v11 setObject:downloadConfig forKeyedSubscript:@"AVAssetDownloadTaskDownloadConfigurationKey"];

  return v11;
}

- (id)_destinationURLToUse
{
  temporaryDestinationURL = [(__NSCFURLSessionTaskInfo *)self temporaryDestinationURL];
  v4 = temporaryDestinationURL;
  if (temporaryDestinationURL)
  {
    destinationURL = temporaryDestinationURL;
  }

  else
  {
    destinationURL = [(__NSCFURLSessionTaskInfo *)self destinationURL];
  }

  v6 = destinationURL;

  return v6;
}

- (id)_URLToUse
{
  aVURLAsset = [(__NSCFURLSessionTaskInfo *)self AVURLAsset];

  if (aVURLAsset)
  {
    aVURLAsset2 = [(__NSCFURLSessionTaskInfo *)self AVURLAsset];
    if (aVURLAsset2)
    {
LABEL_3:
      v5 = [aVURLAsset2 URL];
      isFileURL = [v5 isFileURL];

      if (isFileURL)
      {
        [aVURLAsset2 originalNetworkContentURL];
      }

      else
      {
        [aVURLAsset2 URL];
      }
      v7 = ;
      goto LABEL_9;
    }
  }

  else
  {
    downloadConfig = [(__NSCFURLSessionTaskInfo *)self downloadConfig];
    _asset = [downloadConfig _asset];

    aVURLAsset2 = _asset;
    if (_asset)
    {
      goto LABEL_3;
    }
  }

  v7 = [(__NSCFURLSessionTaskInfo *)self URL];
LABEL_9:
  v10 = v7;

  return v10;
}

@end