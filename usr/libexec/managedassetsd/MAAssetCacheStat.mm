@interface MAAssetCacheStat
- (MAAssetCacheStat)initWith:(id)with createdDay:(int64_t)day accessDay:(int64_t)accessDay fileSize:(unint64_t)size;
@end

@implementation MAAssetCacheStat

- (MAAssetCacheStat)initWith:(id)with createdDay:(int64_t)day accessDay:(int64_t)accessDay fileSize:(unint64_t)size
{
  withCopy = with;
  v16.receiver = self;
  v16.super_class = MAAssetCacheStat;
  v12 = [(MAAssetCacheStat *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetId, with);
    v13->_createdDay = day;
    v13->_accessDay = accessDay;
    v13->_fileSize = size;
    v14 = v13;
  }

  return v13;
}

@end