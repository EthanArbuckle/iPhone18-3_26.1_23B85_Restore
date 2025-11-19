@interface PCNativeAsset
- (id)initWithAsset:(id)a3;
@end

@implementation PCNativeAsset

- (id)initWithAsset:(id)a3
{
  v4 = a3;
  v5 = [(PCNativeAsset *)self init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 name];
    [(PCNativeAsset *)v6 setName:v7];

    -[PCNativeAsset setLocation:](v6, "setLocation:", [v4 location]);
    -[PCNativeAsset setAdamID:](v6, "setAdamID:", [v4 adamId]);
    v8 = [v4 treatment];
    [(PCNativeAsset *)v6 setTreatment:v8];

    v9 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v4 assetInfos];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [[PCNativeAssetInfo alloc] initWithAssetInfo:*(*(&v18 + 1) + 8 * v14)];
          [v9 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v16 = [v9 copy];
    [(PCNativeAsset *)v6 setAssetInformation:v16];
  }

  return v6;
}

@end