@interface CRThemeAssetDownloadRequest
- (BOOL)isEqual:(id)equal;
- (CRThemeAssetDownloadRequest)initWithAssetIdentifier:(id)identifier maximumSDKVersion:(id)version maximumCompatibilityVersion:(unint64_t)compatibilityVersion requireCatalogUpdate:(BOOL)update;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRThemeAssetDownloadRequest

- (CRThemeAssetDownloadRequest)initWithAssetIdentifier:(id)identifier maximumSDKVersion:(id)version maximumCompatibilityVersion:(unint64_t)compatibilityVersion requireCatalogUpdate:(BOOL)update
{
  identifierCopy = identifier;
  versionCopy = version;
  v16.receiver = self;
  v16.super_class = CRThemeAssetDownloadRequest;
  v13 = [(CRThemeAssetDownloadRequest *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_assetIdentifier, identifier);
    objc_storeStrong(&v14->_maximumSDKVersion, version);
    v14->_maximumCompatibilityVersion = compatibilityVersion;
    v14->_requireCatalogUpdate = update;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      assetIdentifier = [(CRThemeAssetDownloadRequest *)self assetIdentifier];
      assetIdentifier2 = [(CRThemeAssetDownloadRequest *)equalCopy assetIdentifier];
      if ([assetIdentifier isEqual:assetIdentifier2])
      {
        maximumSDKVersion = [(CRThemeAssetDownloadRequest *)self maximumSDKVersion];
        maximumSDKVersion2 = [(CRThemeAssetDownloadRequest *)equalCopy maximumSDKVersion];
        if ([maximumSDKVersion isEqual:maximumSDKVersion2] && (v9 = -[CRThemeAssetDownloadRequest maximumCompatibilityVersion](self, "maximumCompatibilityVersion"), v9 == -[CRThemeAssetDownloadRequest maximumCompatibilityVersion](equalCopy, "maximumCompatibilityVersion")))
        {
          requireCatalogUpdate = [(CRThemeAssetDownloadRequest *)self requireCatalogUpdate];
          v11 = requireCatalogUpdate ^ [(CRThemeAssetDownloadRequest *)equalCopy requireCatalogUpdate]^ 1;
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
  assetIdentifier = [(CRThemeAssetDownloadRequest *)self assetIdentifier];
  v4 = [assetIdentifier hash];
  maximumSDKVersion = [(CRThemeAssetDownloadRequest *)self maximumSDKVersion];
  v6 = [maximumSDKVersion hash] ^ v4;
  v7 = v6 ^ [(CRThemeAssetDownloadRequest *)self maximumCompatibilityVersion];
  requireCatalogUpdate = [(CRThemeAssetDownloadRequest *)self requireCatalogUpdate];

  return v7 ^ requireCatalogUpdate;
}

- (id)debugDescription
{
  v11.receiver = self;
  v11.super_class = CRThemeAssetDownloadRequest;
  v3 = [(CRThemeAssetDownloadRequest *)&v11 description];
  assetIdentifier = [(CRThemeAssetDownloadRequest *)self assetIdentifier];
  maximumSDKVersion = [(CRThemeAssetDownloadRequest *)self maximumSDKVersion];
  maximumCompatibilityVersion = [(CRThemeAssetDownloadRequest *)self maximumCompatibilityVersion];
  requireCatalogUpdate = [(CRThemeAssetDownloadRequest *)self requireCatalogUpdate];
  v8 = @"NO";
  if (requireCatalogUpdate)
  {
    v8 = @"YES";
  }

  v9 = [NSString stringWithFormat:@"%@ { assetID: %@, sdkVersion: %@, compatibilityVersion: %lu updateCatalog: %@}", v3, assetIdentifier, maximumSDKVersion, maximumCompatibilityVersion, v8];

  return v9;
}

- (id)description
{
  assetIdentifier = [(CRThemeAssetDownloadRequest *)self assetIdentifier];
  maximumCompatibilityVersion = [(CRThemeAssetDownloadRequest *)self maximumCompatibilityVersion];
  maximumSDKVersion = [(CRThemeAssetDownloadRequest *)self maximumSDKVersion];
  requireCatalogUpdate = [(CRThemeAssetDownloadRequest *)self requireCatalogUpdate];
  v7 = @"NO";
  if (requireCatalogUpdate)
  {
    v7 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"%@ { Compatibility: %lu, SDK: %@, UpdateCatalog: %@ }", assetIdentifier, maximumCompatibilityVersion, maximumSDKVersion, v7];

  return v8;
}

@end