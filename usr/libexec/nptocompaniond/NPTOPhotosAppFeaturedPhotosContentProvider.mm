@interface NPTOPhotosAppFeaturedPhotosContentProvider
- (NPTOPhotosAppFeaturedPhotosContentProvider)init;
- (NPTOSyncContentProviderDelegate)delegate;
- (id)assetCollections;
- (id)assetsForAssetCollection:(id)a3;
@end

@implementation NPTOPhotosAppFeaturedPhotosContentProvider

- (NPTOSyncContentProviderDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)assetCollections
{
  v2 = self;
  v3 = sub_10000B068();

  return v3;
}

- (id)assetsForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000E8F0();

  return v6;
}

- (NPTOPhotosAppFeaturedPhotosContentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end