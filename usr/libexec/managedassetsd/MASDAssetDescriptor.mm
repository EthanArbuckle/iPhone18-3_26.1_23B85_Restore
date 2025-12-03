@interface MASDAssetDescriptor
- (BOOL)isValid;
@end

@implementation MASDAssetDescriptor

- (BOOL)isValid
{
  label = [(MASDAssetDescriptor *)self label];
  if (label)
  {
    v4 = label;
    label2 = [(MASDAssetDescriptor *)self label];
    isValidMetaDataString = [label2 isValidMetaDataString];

    if (!isValidMetaDataString)
    {
      return 0;
    }
  }

  algorithmVersion = [(MASDAssetDescriptor *)self algorithmVersion];
  if (algorithmVersion)
  {
    v8 = algorithmVersion;
    algorithmVersion2 = [(MASDAssetDescriptor *)self algorithmVersion];
    isValidMetaDataString2 = [algorithmVersion2 isValidMetaDataString];

    if (!isValidMetaDataString2)
    {
      return 0;
    }
  }

  return [(MASDAssetDescriptor *)self type]>= 0x64 && [(MASDAssetDescriptor *)self type]< 0x82;
}

@end