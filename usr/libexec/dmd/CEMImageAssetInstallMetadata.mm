@interface CEMImageAssetInstallMetadata
- (CEMImageAssetInstallMetadata)initWithCoder:(id)a3;
- (id)dataRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CEMImageAssetInstallMetadata

- (id)dataRepresentation
{
  v2 = [(CEMImageAssetInstallMetadata *)self imageURL];
  v3 = [NSData dataWithContentsOfURL:v2];

  return v3;
}

- (CEMImageAssetInstallMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CEMImageAssetInstallMetadata *)self init];
  if (v5)
  {
    v6 = [NSSet setWithObjects:objc_opt_class(), 0];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CEMImageAssetInstallMetadata *)self imageURL];
  [v4 encodeObject:v5 forKey:@"imageURL"];
}

@end