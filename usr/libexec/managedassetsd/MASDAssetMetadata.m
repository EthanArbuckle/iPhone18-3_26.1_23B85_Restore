@interface MASDAssetMetadata
- (id)toDictionary;
@end

@implementation MASDAssetMetadata

- (id)toDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInteger:[(MASDAssetMetadata *)self type]];
  [v3 setObject:v4 forKey:@"_type"];

  v5 = [(MASDAssetMetadata *)self lastUpdatedOSVersion];
  [v3 setObject:v5 forKey:@"_lastUpdatedOSVersion"];

  v6 = [(MASDAssetMetadata *)self lastUpdatedTime];
  [v3 setObject:v6 forKey:@"_lastUpdatedTime"];

  v7 = [(MASDAssetMetadata *)self creationTime];
  [v3 setObject:v7 forKey:@"_creationTime"];

  v8 = [(MASDAssetMetadata *)self label];

  if (v8)
  {
    v9 = [(MASDAssetMetadata *)self label];
    [v3 setObject:v9 forKey:@"_label"];
  }

  v10 = [(MASDAssetMetadata *)self participantIdentifier];

  if (v10)
  {
    v11 = [(MASDAssetMetadata *)self participantIdentifier];
    [v3 setObject:v11 forKey:@"_participantIdentifier"];
  }

  v12 = [(MASDAssetMetadata *)self sessionIdentifier];

  if (v12)
  {
    v13 = [(MASDAssetMetadata *)self sessionIdentifier];
    [v3 setObject:v13 forKey:@"_sessionIdentifier"];
  }

  v14 = [(MASDAssetMetadata *)self lastUpdatedAlgorithmVersion];

  if (v14)
  {
    v15 = [(MASDAssetMetadata *)self lastUpdatedAlgorithmVersion];
    [v3 setObject:v15 forKey:@"_lastUpdatedAlgorithmVersion"];
  }

  v16 = [v3 mutableCopy];

  return v16;
}

@end