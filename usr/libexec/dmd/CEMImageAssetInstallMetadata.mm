@interface CEMImageAssetInstallMetadata
- (CEMImageAssetInstallMetadata)initWithCoder:(id)coder;
- (id)dataRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CEMImageAssetInstallMetadata

- (id)dataRepresentation
{
  imageURL = [(CEMImageAssetInstallMetadata *)self imageURL];
  v3 = [NSData dataWithContentsOfURL:imageURL];

  return v3;
}

- (CEMImageAssetInstallMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CEMImageAssetInstallMetadata *)self init];
  if (v5)
  {
    v6 = [NSSet setWithObjects:objc_opt_class(), 0];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  imageURL = [(CEMImageAssetInstallMetadata *)self imageURL];
  [coderCopy encodeObject:imageURL forKey:@"imageURL"];
}

@end