@interface __NSCFURLSessionTaskInfo
- (id)_AVAssetDownloadSessionOptions:(id)a3 config:(id)a4 asset:(id)a5;
- (id)_URLToUse;
- (id)_destinationURLToUse;
@end

@implementation __NSCFURLSessionTaskInfo

- (id)_AVAssetDownloadSessionOptions:(id)a3 config:(id)a4 asset:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(__NSCFURLSessionTaskInfo *)self options];
  if (v9)
  {
    v10 = [(__NSCFURLSessionTaskInfo *)self options];
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
  }

  v12 = [(__NSCFURLSessionTaskInfo *)self assetTitle];
  [v11 setObject:v12 forKeyedSubscript:AVAssetDownloadSessionAssetNameKey];

  v13 = [(__NSCFURLSessionTaskInfo *)self assetArtworkData];
  [v11 setObject:v13 forKeyedSubscript:AVAssetDownloadSessionAssetImageDataKey];

  v14 = v7;
  if (!v7)
  {
    v14 = [(__NSCFURLSessionTaskInfo *)self bundleID];
  }

  [v11 setObject:v14 forKeyedSubscript:AVAssetDownloadSessionClientBundleIdentifierKey];
  if (!v7)
  {
  }

  if (([v8 allowsCellularAccess] & 1) == 0)
  {
    [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:AVAssetDownloadSessionAllowsCellularAccessKey];
  }

  if (([v8 allowsExpensiveNetworkAccess] & 1) == 0)
  {
    [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:AVAssetDownloadSessionAllowsExpensiveNetworkAccessKey];
  }

  if (([v8 allowsConstrainedNetworkAccess] & 1) == 0)
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

  v19 = [(__NSCFURLSessionTaskInfo *)self uniqueIdentifier];
  v20 = [v19 UUIDString];
  [v11 setObject:v20 forKeyedSubscript:@"AVAssetDownloadSessionDebugIdentifierKey"];

  v21 = [(__NSCFURLSessionTaskInfo *)self retryError];

  if (v21)
  {
    v22 = [(__NSCFURLSessionTaskInfo *)self retryError];
    [v11 setObject:v22 forKeyedSubscript:@"AVAssetDownloadSessionRetryErrorKey"];
  }

  v23 = [(__NSCFURLSessionTaskInfo *)self downloadConfig];
  [v11 setObject:v23 forKeyedSubscript:@"AVAssetDownloadTaskDownloadConfigurationKey"];

  return v11;
}

- (id)_destinationURLToUse
{
  v3 = [(__NSCFURLSessionTaskInfo *)self temporaryDestinationURL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(__NSCFURLSessionTaskInfo *)self destinationURL];
  }

  v6 = v5;

  return v6;
}

- (id)_URLToUse
{
  v3 = [(__NSCFURLSessionTaskInfo *)self AVURLAsset];

  if (v3)
  {
    v4 = [(__NSCFURLSessionTaskInfo *)self AVURLAsset];
    if (v4)
    {
LABEL_3:
      v5 = [v4 URL];
      v6 = [v5 isFileURL];

      if (v6)
      {
        [v4 originalNetworkContentURL];
      }

      else
      {
        [v4 URL];
      }
      v7 = ;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = [(__NSCFURLSessionTaskInfo *)self downloadConfig];
    v9 = [v8 _asset];

    v4 = v9;
    if (v9)
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