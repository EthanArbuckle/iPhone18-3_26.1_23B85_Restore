@interface NPTOPhotosAppMemoriesContentProvider
- (NPTOPhotosAppMemoriesContentProvider)init;
- (NPTOSyncContentProviderDelegate)delegate;
- (id)assetCollections;
- (id)assetsForAssetCollection:(id)collection;
- (id)keyAssetsForAssetCollection:(id)collection;
@end

@implementation NPTOPhotosAppMemoriesContentProvider

- (NPTOSyncContentProviderDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)assetCollections
{
  selfCopy = self;
  v3 = sub_10000FC30();

  return v3;
}

- (id)assetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  v6 = sub_1000133CC(sub_10000ED14, "SyncedMemory selected %s assets.");

  return v6;
}

- (id)keyAssetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  v6 = sub_1000133CC(sub_10000EE78, "SyncedMemory selected %s key assets.");

  return v6;
}

- (NPTOPhotosAppMemoriesContentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end