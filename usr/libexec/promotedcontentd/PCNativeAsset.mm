@interface PCNativeAsset
- (id)initWithAsset:(id)asset;
@end

@implementation PCNativeAsset

- (id)initWithAsset:(id)asset
{
  assetCopy = asset;
  v5 = [(PCNativeAsset *)self init];
  v6 = v5;
  if (assetCopy && v5)
  {
    name = [assetCopy name];
    [(PCNativeAsset *)v6 setName:name];

    -[PCNativeAsset setLocation:](v6, "setLocation:", [assetCopy location]);
    -[PCNativeAsset setAdamID:](v6, "setAdamID:", [assetCopy adamId]);
    treatment = [assetCopy treatment];
    [(PCNativeAsset *)v6 setTreatment:treatment];

    v9 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    assetInfos = [assetCopy assetInfos];
    v11 = [assetInfos countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(assetInfos);
          }

          v15 = [[PCNativeAssetInfo alloc] initWithAssetInfo:*(*(&v18 + 1) + 8 * v14)];
          [v9 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [assetInfos countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v16 = [v9 copy];
    [(PCNativeAsset *)v6 setAssetInformation:v16];
  }

  return v6;
}

@end