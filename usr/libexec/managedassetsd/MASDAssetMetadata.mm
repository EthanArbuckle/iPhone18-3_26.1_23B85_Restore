@interface MASDAssetMetadata
- (id)toDictionary;
@end

@implementation MASDAssetMetadata

- (id)toDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInteger:[(MASDAssetMetadata *)self type]];
  [v3 setObject:v4 forKey:@"_type"];

  lastUpdatedOSVersion = [(MASDAssetMetadata *)self lastUpdatedOSVersion];
  [v3 setObject:lastUpdatedOSVersion forKey:@"_lastUpdatedOSVersion"];

  lastUpdatedTime = [(MASDAssetMetadata *)self lastUpdatedTime];
  [v3 setObject:lastUpdatedTime forKey:@"_lastUpdatedTime"];

  creationTime = [(MASDAssetMetadata *)self creationTime];
  [v3 setObject:creationTime forKey:@"_creationTime"];

  label = [(MASDAssetMetadata *)self label];

  if (label)
  {
    label2 = [(MASDAssetMetadata *)self label];
    [v3 setObject:label2 forKey:@"_label"];
  }

  participantIdentifier = [(MASDAssetMetadata *)self participantIdentifier];

  if (participantIdentifier)
  {
    participantIdentifier2 = [(MASDAssetMetadata *)self participantIdentifier];
    [v3 setObject:participantIdentifier2 forKey:@"_participantIdentifier"];
  }

  sessionIdentifier = [(MASDAssetMetadata *)self sessionIdentifier];

  if (sessionIdentifier)
  {
    sessionIdentifier2 = [(MASDAssetMetadata *)self sessionIdentifier];
    [v3 setObject:sessionIdentifier2 forKey:@"_sessionIdentifier"];
  }

  lastUpdatedAlgorithmVersion = [(MASDAssetMetadata *)self lastUpdatedAlgorithmVersion];

  if (lastUpdatedAlgorithmVersion)
  {
    lastUpdatedAlgorithmVersion2 = [(MASDAssetMetadata *)self lastUpdatedAlgorithmVersion];
    [v3 setObject:lastUpdatedAlgorithmVersion2 forKey:@"_lastUpdatedAlgorithmVersion"];
  }

  v16 = [v3 mutableCopy];

  return v16;
}

@end