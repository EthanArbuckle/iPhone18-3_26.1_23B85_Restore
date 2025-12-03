@interface NPTOPhotosAppFeaturedPhotosContentProvider
- (NPTOPhotosAppFeaturedPhotosContentProvider)init;
- (NPTOSyncContentProviderDelegate)delegate;
- (id)assetCollections;
- (id)assetsForAssetCollection:(id)collection;
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
  selfCopy = self;
  v3 = sub_10000B068();

  return v3;
}

- (id)assetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
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