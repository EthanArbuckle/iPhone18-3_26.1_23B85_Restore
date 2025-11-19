@interface MASDAssetDescriptor
- (BOOL)isValid;
@end

@implementation MASDAssetDescriptor

- (BOOL)isValid
{
  v3 = [(MASDAssetDescriptor *)self label];
  if (v3)
  {
    v4 = v3;
    v5 = [(MASDAssetDescriptor *)self label];
    v6 = [v5 isValidMetaDataString];

    if (!v6)
    {
      return 0;
    }
  }

  v7 = [(MASDAssetDescriptor *)self algorithmVersion];
  if (v7)
  {
    v8 = v7;
    v9 = [(MASDAssetDescriptor *)self algorithmVersion];
    v10 = [v9 isValidMetaDataString];

    if (!v10)
    {
      return 0;
    }
  }

  return [(MASDAssetDescriptor *)self type]>= 0x64 && [(MASDAssetDescriptor *)self type]< 0x82;
}

@end