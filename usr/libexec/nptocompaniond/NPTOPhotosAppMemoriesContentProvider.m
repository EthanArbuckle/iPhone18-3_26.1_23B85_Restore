@interface NPTOPhotosAppMemoriesContentProvider
- (NPTOPhotosAppMemoriesContentProvider)init;
- (NPTOSyncContentProviderDelegate)delegate;
- (id)assetCollections;
- (id)assetsForAssetCollection:(id)a3;
- (id)keyAssetsForAssetCollection:(id)a3;
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
  v2 = self;
  v3 = sub_10000FC30();

  return v3;
}

- (id)assetsForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000133CC(sub_10000ED14, "SyncedMemory selected %s assets.");

  return v6;
}

- (id)keyAssetsForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = self;
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