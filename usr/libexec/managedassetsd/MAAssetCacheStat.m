@interface MAAssetCacheStat
- (MAAssetCacheStat)initWith:(id)a3 createdDay:(int64_t)a4 accessDay:(int64_t)a5 fileSize:(unint64_t)a6;
@end

@implementation MAAssetCacheStat

- (MAAssetCacheStat)initWith:(id)a3 createdDay:(int64_t)a4 accessDay:(int64_t)a5 fileSize:(unint64_t)a6
{
  v11 = a3;
  v16.receiver = self;
  v16.super_class = MAAssetCacheStat;
  v12 = [(MAAssetCacheStat *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetId, a3);
    v13->_createdDay = a4;
    v13->_accessDay = a5;
    v13->_fileSize = a6;
    v14 = v13;
  }

  return v13;
}

@end