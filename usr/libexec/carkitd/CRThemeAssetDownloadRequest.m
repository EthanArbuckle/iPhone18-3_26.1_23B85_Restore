@interface CRThemeAssetDownloadRequest
- (BOOL)isEqual:(id)a3;
- (CRThemeAssetDownloadRequest)initWithAssetIdentifier:(id)a3 maximumSDKVersion:(id)a4 maximumCompatibilityVersion:(unint64_t)a5 requireCatalogUpdate:(BOOL)a6;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRThemeAssetDownloadRequest

- (CRThemeAssetDownloadRequest)initWithAssetIdentifier:(id)a3 maximumSDKVersion:(id)a4 maximumCompatibilityVersion:(unint64_t)a5 requireCatalogUpdate:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = CRThemeAssetDownloadRequest;
  v13 = [(CRThemeAssetDownloadRequest *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_assetIdentifier, a3);
    objc_storeStrong(&v14->_maximumSDKVersion, a4);
    v14->_maximumCompatibilityVersion = a5;
    v14->_requireCatalogUpdate = a6;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CRThemeAssetDownloadRequest *)self assetIdentifier];
      v6 = [(CRThemeAssetDownloadRequest *)v4 assetIdentifier];
      if ([v5 isEqual:v6])
      {
        v7 = [(CRThemeAssetDownloadRequest *)self maximumSDKVersion];
        v8 = [(CRThemeAssetDownloadRequest *)v4 maximumSDKVersion];
        if ([v7 isEqual:v8] && (v9 = -[CRThemeAssetDownloadRequest maximumCompatibilityVersion](self, "maximumCompatibilityVersion"), v9 == -[CRThemeAssetDownloadRequest maximumCompatibilityVersion](v4, "maximumCompatibilityVersion")))
        {
          v10 = [(CRThemeAssetDownloadRequest *)self requireCatalogUpdate];
          v11 = v10 ^ [(CRThemeAssetDownloadRequest *)v4 requireCatalogUpdate]^ 1;
        }

        else
        {
          LOBYTE(v11) = 0;
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(CRThemeAssetDownloadRequest *)self assetIdentifier];
  v4 = [v3 hash];
  v5 = [(CRThemeAssetDownloadRequest *)self maximumSDKVersion];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(CRThemeAssetDownloadRequest *)self maximumCompatibilityVersion];
  v8 = [(CRThemeAssetDownloadRequest *)self requireCatalogUpdate];

  return v7 ^ v8;
}

- (id)debugDescription
{
  v11.receiver = self;
  v11.super_class = CRThemeAssetDownloadRequest;
  v3 = [(CRThemeAssetDownloadRequest *)&v11 description];
  v4 = [(CRThemeAssetDownloadRequest *)self assetIdentifier];
  v5 = [(CRThemeAssetDownloadRequest *)self maximumSDKVersion];
  v6 = [(CRThemeAssetDownloadRequest *)self maximumCompatibilityVersion];
  v7 = [(CRThemeAssetDownloadRequest *)self requireCatalogUpdate];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [NSString stringWithFormat:@"%@ { assetID: %@, sdkVersion: %@, compatibilityVersion: %lu updateCatalog: %@}", v3, v4, v5, v6, v8];

  return v9;
}

- (id)description
{
  v3 = [(CRThemeAssetDownloadRequest *)self assetIdentifier];
  v4 = [(CRThemeAssetDownloadRequest *)self maximumCompatibilityVersion];
  v5 = [(CRThemeAssetDownloadRequest *)self maximumSDKVersion];
  v6 = [(CRThemeAssetDownloadRequest *)self requireCatalogUpdate];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"%@ { Compatibility: %lu, SDK: %@, UpdateCatalog: %@ }", v3, v4, v5, v7];

  return v8;
}

@end