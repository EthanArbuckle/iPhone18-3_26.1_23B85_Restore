@interface NPTOSyncCollection
- (NPTOSyncContentProvider)contentProvider;
- (id)description;
@end

@implementation NPTOSyncCollection

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPTOSyncCollection;
  v3 = [(NPTOSyncCollection *)&v7 description];
  WeakRetained = objc_loadWeakRetained(&self->_contentProvider);
  v5 = [v3 stringByAppendingFormat:@" contentProvider: %@ assetCollection: %@ assets: %@ keyAssets: %@", WeakRetained, self->_assetCollection, self->_assets, self->_keyAssets];

  return v5;
}

- (NPTOSyncContentProvider)contentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_contentProvider);

  return WeakRetained;
}

@end