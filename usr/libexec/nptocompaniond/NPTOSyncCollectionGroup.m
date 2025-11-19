@interface NPTOSyncCollectionGroup
- (NPTOSyncContentProvider)contentProvider;
- (id)description;
@end

@implementation NPTOSyncCollectionGroup

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPTOSyncCollectionGroup;
  v3 = [(NPTOSyncCollectionGroup *)&v7 description];
  WeakRetained = objc_loadWeakRetained(&self->_contentProvider);
  v5 = [v3 stringByAppendingFormat:@" contentProvider: %@ assetCollections: %@", WeakRetained, self->_assetCollections];

  return v5;
}

- (NPTOSyncContentProvider)contentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_contentProvider);

  return WeakRetained;
}

@end