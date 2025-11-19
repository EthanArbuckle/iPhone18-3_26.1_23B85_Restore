@interface NRSyncDataDeleterQuarantineJobItem
- (NRSyncDataDeleterQuarantineJobItem)initWithSourcePath:(id)a3;
@end

@implementation NRSyncDataDeleterQuarantineJobItem

- (NRSyncDataDeleterQuarantineJobItem)initWithSourcePath:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NRSyncDataDeleterQuarantineJobItem;
  v6 = [(NRSyncDataDeleterQuarantineJobItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourcePath, a3);
    v8 = [v5 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
    quarantinePath = v7->_quarantinePath;
    v7->_quarantinePath = v8;
  }

  return v7;
}

@end