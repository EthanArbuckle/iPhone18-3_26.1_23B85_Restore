@interface PHAsset
- (id)resourceType;
@end

@implementation PHAsset

- (id)resourceType
{
  if ([(PHAsset *)self mediaType]== 2)
  {
    v3 = &MOPhotoResourceTypeVideo;
  }

  else if ([(PHAsset *)self mediaType]== 1)
  {
    mediaSubtypes = [(PHAsset *)self mediaSubtypes];
    v3 = &MOPhotoResourceTypeLivePhoto;
    if ((mediaSubtypes & 8) == 0)
    {
      v3 = &MOPhotoResourceTypeStillPhoto;
    }
  }

  else
  {
    v3 = &MOPhotoResourceTypeUnknown;
  }

  v5 = *v3;

  return v5;
}

@end